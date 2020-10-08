import nimterop/[build, cimport]

const
    baseDir = getProjectCacheDir("libdatachannel")             # Download library within nimcache

static:
    gitPull(
        "https://github.com/paullouisageneau/libdatachannel.git",
        outdir=baseDir
    )
    discard execAction("cd " & baseDir & " && git submodule update --init --recursive")
    cDebug()                                                # Print wrapper to stdout



getHeader(
    header = "rtc.h",                                             # The header file to wrap, full path is returned in `headerPath`
    giturl = "https://github.com/paullouisageneau/libdatachannel",            # Git repo URL
    outdir = baseDir,                                       # Where to download/build/search
    conFlags = "--disable-comp --enable-feature",           # Flags to pass configure script
    cmakeFlags = "-DENABLE_STATIC_LIB=ON",                   # Flags to pass to Cmake
    altNames = "rtc"                                        # Alterate names of the library binary, full path returned in `headerLPath`
)



#headerPreBuild(
#    execAction = "git submodule update --init --recursive"
#)

# Wrap headerPath as returned from getHeader() and link statically
# or dynamically depending on user input
when not isDefined(headerStatic):
    cImport(headerPath, recurse = true, dynlib = "headerLPath")       # Pass dynlib if not static link
else:
    cImport(headerPath, recurse = true)
