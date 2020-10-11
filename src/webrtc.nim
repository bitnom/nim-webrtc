import os, strutils, strformat
import nimterop/[build, cimport]

const
    baseDir = getProjectCacheDir("libdatachannel")             # Download library within nimcache

static:
    discard execAction(&"rm -rf {baseDir}")
    cDebug()
    cDisableCaching()


proc rtcPreBuild(outdir, header: string) =
    var shell_ret: int

    # Pull submodules of lib
    shell_ret = execAction(&"cd {outdir} && git submodule update --init --recursive").ret
    echo &"Shell ret 1: {shell_ret}"
    if shell_ret == 0:
        echo &"Error in prebuild cmd 1 {shell_ret}"
        #quit()
    # Delete Makefile so that Nimterop will run cmake
    shell_ret = execAction(&"cd {outdir} && rm Makefile").ret
    if shell_ret == 0:
        echo &"Error in prebuild cmd 2 {shell_ret}"
        #quit()

getHeader(
    header = "rtc.h",                                             # The header file to wrap, full path is returned in `headerPath`
    giturl = "https://github.com/paullouisageneau/libdatachannel",            # Git repo URL
    outdir = baseDir,                                       # Where to download/build/search
    #conFlags = "--disable-comp --enable-feature",           # Flags to pass configure script
    cmakeFlags = "-DUSE_GNUTLS=1 -DUSE_NICE=0",                   # Flags to pass to Cmake | -DENABLE_STATIC_LIB=ON 
    altNames = "rtc"                                        # Alterate names of the library binary, full path returned in `headerLPath`  libdatachannel-static
)

# Wrap headerPath as returned from getHeader() and link statically
# or dynamically depending on user input
when not isDefined(rtcStatic):
    cImport(rtcPath, recurse = true, dynlib = "rtcLPath")       # Pass dynlib if not static link
else:
    #echo "HEADERPATH:" & headerPath
    cImport(rtcPath, recurse = true)
