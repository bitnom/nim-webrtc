import nimterop/[build, cimport]

const
    baseDir = getProjectCacheDir("libdatachannel")             # Download library within nimcache

static:
    #discard execAction("cd " & baseDir & " && rm -rf buildcache")
    #discard execAction("cd " & baseDir & " && make clean")
    discard execAction("rm -rf " & baseDir)
    gitPull(
        "https://github.com/paullouisageneau/libdatachannel.git",
        outdir=baseDir
    )
    discard execAction("cd " & baseDir & " && git submodule update --init --recursive")
    discard execAction("cd " & baseDir & " && rm -v Makefile")
    cDebug()                                                # Print wrapper to stdout



getHeader(
    header = "rtc.h",                                             # The header file to wrap, full path is returned in `headerPath`
    giturl = "https://github.com/paullouisageneau/libdatachannel",            # Git repo URL
    outdir = baseDir,                                       # Where to download/build/search
    #conFlags = "--disable-comp --enable-feature",           # Flags to pass configure script
    cmakeFlags = "-DUSE_GNUTLS=1 -DUSE_NICE=0",                   # Flags to pass to Cmake | -DENABLE_STATIC_LIB=ON 
    altNames = "libdatachannel-static"                                        # Alterate names of the library binary, full path returned in `headerLPath`
)



#rtcPreBuild(
#    execAction = "git submodule update --init --recursive"
#)

# Wrap headerPath as returned from getHeader() and link statically
# or dynamically depending on user input
#when not isDefined(headerStatic):
#    cImport(headerPath, recurse = true, dynlib = "headerLPath")       # Pass dynlib if not static link
#else:
echo "HEADERPATH:" & headerPath
cImport(headerPath, recurse = true)
