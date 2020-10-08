# nim-webrtc

Nim wrapper of [libdatachannel](https://github.com/paullouisageneau/libdatachannel). This is my first time using Nimterop
and I'm having some trouble with it. If you know how to fix, please let me know for my learning experience.

libdatachannel has a C API specifically at  [libdatachannel/include/rtc/rtc.h](https://github.com/paullouisageneau/libdatachannel/blob/master/include/rtc/rtc.h)

From their docs we can see build instructions:

```sh
$ git clone https://github.com/paullouisageneau/libdatachannel.git
$ cd libdatachannel
$ git submodule update --init --recursive
```

I defined `webrtc.nimble` & `src/webrtc.nim`. Then, I try a test run via:

```
nim c src/webrtc.nim
```

but it doesn't work. Here's the full output:

```
❯ nim c src/webrtc.nim
Hint: used config file '/home/user/.nimble/config/nim.cfg' [Conf]
Hint: system [Processing]
Hint: widestrs [Processing]
Hint: io [Processing]
Hint: webrtc [Processing]
Hint: build [Processing]
Hint: os [Processing]
Hint: strutils [Processing]
Hint: parseutils [Processing]
Hint: math [Processing]
Hint: bitops [Processing]
Hint: macros [Processing]
Hint: algorithm [Processing]
Hint: unicode [Processing]
Hint: pathnorm [Processing]
Hint: osseps [Processing]
Hint: posix [Processing]
Hint: times [Processing]
Hint: options [Processing]
Hint: typetraits [Processing]
Hint: misc [Processing]
Hint: globals [Processing]
Hint: tables [Processing]
Hint: hashes [Processing]
Hint: nimconf [Processing]
Hint: json [Processing]
Hint: lexbase [Processing]
Hint: streams [Processing]
Hint: parsejson [Processing]
Hint: osproc [Processing]
Hint: strtabs [Processing]
Hint: cpuinfo [Processing]
Hint: sets [Processing]
Hint: strformat [Processing]
Hint: compilesettings [Processing]
Hint: shell [Processing]
Hint: ccompiler [Processing]
Hint: tools [Processing]
Hint: conan [Processing]
Hint: jbb [Processing]
Hint: getheader [Processing]
Hint: cimport [Processing]
Hint: paths [Processing]
# Setting up Git repo: https://github.com/paullouisageneau/libdatachannel.git
# Checking out master
# Running make 
#   Path: /home/user/.cache/nim/nimterop/libdatachannel
stack trace: (most recent call last)
/home/user/.nimble/pkgs/nimterop-0.6.12/nimterop/build/getheader.nim(485, 23)
/home/user/.nimble/pkgs/nimterop-0.6.12/nimterop/build/getheader.nim(234, 11) buildLibrary
/home/user/.nimble/pkgs/nimterop-0.6.12/nimterop/build/tools.nim(196, 19) make
/home/user/.nimble/pkgs/nimterop-0.6.12/nimterop/build/shell.nim(90, 11) execAction
/home/user/.nimble/lib/system/assertions.nim(29, 26) failedAssertImpl
/home/user/.nimble/lib/system/assertions.nim(22, 11) raiseAssert
/home/user/.nimble/lib/system/fatal.nim(49, 5) sysFatal
/home/user/Projects/webrtc/src/webrtc.nim(16, 10) template/generic instantiation of `getHeader` from here
/home/user/.nimble/lib/system/fatal.nim(49, 5) Error: unhandled exception: /home/user/.nimble/pkgs/nimterop-0.6.12/nimterop/build/shell.nim(90, 7) `not die` Command failed: 2
cmd: cd /home/user/.cache/nim/nimterop/libdatachannel && make -j 12
result:
g++ -std=c++17 -O2 -pthread -fPIC -Wall -DUSE_GNUTLS=0 -DUSE_NICE=0 -DRTC_ENABLE_MEDIA=0 -DRTC_ENABLE_WEBSOCKET=1 -Iinclude/rtc -Ideps/plog/include -Ideps/usrsctp/usrsctplib -Ideps/libjuice/include -I/home/linuxbrew/.linuxbrew/Cellar/openssl@1.1/1.1.1g/include -MMD -MP -o src/base64.o -c src/base64.cpp
g++ -std=c++17 -O2 -pthread -fPIC -Wall -DUSE_GNUTLS=0 -DUSE_NICE=0 -DRTC_ENABLE_MEDIA=0 -DRTC_ENABLE_WEBSOCKET=1 -Iinclude/rtc -Ideps/plog/include -Ideps/usrsctp/usrsctplib -Ideps/libjuice/include -I/home/linuxbrew/.linuxbrew/Cellar/openssl@1.1/1.1.1g/include -MMD -MP -o src/candidate.o -c src/candidate.cpp
g++ -std=c++17 -O2 -pthread -fPIC -Wall -DUSE_GNUTLS=0 -DUSE_NICE=0 -DRTC_ENABLE_MEDIA=0 -DRTC_ENABLE_WEBSOCKET=1 -Iinclude/rtc -Ideps/plog/include -Ideps/usrsctp/usrsctplib -Ideps/libjuice/include -I/home/linuxbrew/.linuxbrew/Cellar/openssl@1.1/1.1.1g/include -MMD -MP -o src/capi.o -c src/capi.cpp
g++ -std=c++17 -O2 -pthread -fPIC -Wall -DUSE_GNUTLS=0 -DUSE_NICE=0 -DRTC_ENABLE_MEDIA=0 -DRTC_ENABLE_WEBSOCKET=1 -Iinclude/rtc -Ideps/plog/include -Ideps/usrsctp/usrsctplib -Ideps/libjuice/include -I/home/linuxbrew/.linuxbrew/Cellar/openssl@1.1/1.1.1g/include -MMD -MP -o src/certificate.o -c src/certificate.cpp
g++ -std=c++17 -O2 -pthread -fPIC -Wall -DUSE_GNUTLS=0 -DUSE_NICE=0 -DRTC_ENABLE_MEDIA=0 -DRTC_ENABLE_WEBSOCKET=1 -Iinclude/rtc -Ideps/plog/include -Ideps/usrsctp/usrsctplib -Ideps/libjuice/include -I/home/linuxbrew/.linuxbrew/Cellar/openssl@1.1/1.1.1g/include -MMD -MP -o src/channel.o -c src/channel.cpp
g++ -std=c++17 -O2 -pthread -fPIC -Wall -DUSE_GNUTLS=0 -DUSE_NICE=0 -DRTC_ENABLE_MEDIA=0 -DRTC_ENABLE_WEBSOCKET=1 -Iinclude/rtc -Ideps/plog/include -Ideps/usrsctp/usrsctplib -Ideps/libjuice/include -I/home/linuxbrew/.linuxbrew/Cellar/openssl@1.1/1.1.1g/include -MMD -MP -o src/configuration.o -c src/configuration.cpp
g++ -std=c++17 -O2 -pthread -fPIC -Wall -DUSE_GNUTLS=0 -DUSE_NICE=0 -DRTC_ENABLE_MEDIA=0 -DRTC_ENABLE_WEBSOCKET=1 -Iinclude/rtc -Ideps/plog/include -Ideps/usrsctp/usrsctplib -Ideps/libjuice/include -I/home/linuxbrew/.linuxbrew/Cellar/openssl@1.1/1.1.1g/include -MMD -MP -o src/datachannel.o -c src/datachannel.cpp
g++ -std=c++17 -O2 -pthread -fPIC -Wall -DUSE_GNUTLS=0 -DUSE_NICE=0 -DRTC_ENABLE_MEDIA=0 -DRTC_ENABLE_WEBSOCKET=1 -Iinclude/rtc -Ideps/plog/include -Ideps/usrsctp/usrsctplib -Ideps/libjuice/include -I/home/linuxbrew/.linuxbrew/Cellar/openssl@1.1/1.1.1g/include -MMD -MP -o src/description.o -c src/description.cpp
g++ -std=c++17 -O2 -pthread -fPIC -Wall -DUSE_GNUTLS=0 -DUSE_NICE=0 -DRTC_ENABLE_MEDIA=0 -DRTC_ENABLE_WEBSOCKET=1 -Iinclude/rtc -Ideps/plog/include -Ideps/usrsctp/usrsctplib -Ideps/libjuice/include -I/home/linuxbrew/.linuxbrew/Cellar/openssl@1.1/1.1.1g/include -MMD -MP -o src/dtlssrtptransport.o -c src/dtlssrtptransport.cpp
g++ -std=c++17 -O2 -pthread -fPIC -Wall -DUSE_GNUTLS=0 -DUSE_NICE=0 -DRTC_ENABLE_MEDIA=0 -DRTC_ENABLE_WEBSOCKET=1 -Iinclude/rtc -Ideps/plog/include -Ideps/usrsctp/usrsctplib -Ideps/libjuice/include -I/home/linuxbrew/.linuxbrew/Cellar/openssl@1.1/1.1.1g/include -MMD -MP -o src/dtlstransport.o -c src/dtlstransport.cpp
g++ -std=c++17 -O2 -pthread -fPIC -Wall -DUSE_GNUTLS=0 -DUSE_NICE=0 -DRTC_ENABLE_MEDIA=0 -DRTC_ENABLE_WEBSOCKET=1 -Iinclude/rtc -Ideps/plog/include -Ideps/usrsctp/usrsctplib -Ideps/libjuice/include -I/home/linuxbrew/.linuxbrew/Cellar/openssl@1.1/1.1.1g/include -MMD -MP -o src/icetransport.o -c src/icetransport.cpp
g++ -std=c++17 -O2 -pthread -fPIC -Wall -DUSE_GNUTLS=0 -DUSE_NICE=0 -DRTC_ENABLE_MEDIA=0 -DRTC_ENABLE_WEBSOCKET=1 -Iinclude/rtc -Ideps/plog/include -Ideps/usrsctp/usrsctplib -Ideps/libjuice/include -I/home/linuxbrew/.linuxbrew/Cellar/openssl@1.1/1.1.1g/include -MMD -MP -o src/init.o -c src/init.cpp
In file included from src/base64.hpp:24:0,
                 from src/base64.cpp:21:
include/rtc/include.hpp:42:20: fatal error: optional: No such file or directory
compilation terminated.
Makefile:69: recipe for target 'src/base64.o' failed
make: *** [src/base64.o] Error 1
make: *** Waiting for unfinished jobs....
In file included from src/capi.cpp:19:0:
include/rtc/include.hpp:42:20: fatal error: optional: No such file or directory
compilation terminated.
Makefile:69: recipe for target 'src/capi.o' failed
make: *** [src/capi.o] Error 1
In file included from include/rtc/candidate.hpp:22:0,
                 from src/candidate.cpp:19:
include/rtc/include.hpp:42:20: fatal error: optional: No such file or directory
compilation terminated.
Makefile:69: recipe for target 'src/candidate.o' failed
make: *** [src/candidate.o] Error 1
In file included from include/rtc/configuration.hpp:22:0,
                 from src/configuration.cpp:19:
include/rtc/include.hpp:42:20: fatal error: optional: No such file or directory
compilation terminated.
Makefile:69: recipe for target 'src/configuration.o' failed
make: *** [src/configuration.o] Error 1
In file included from src/certificate.hpp:22:0,
                 from src/certificate.cpp:19:
include/rtc/include.hpp:42:20: fatal error: optional: No such file or directory
compilation terminated.
Makefile:69: recipe for target 'src/certificate.o' failed
make: *** [src/certificate.o] Error 1
In file included from include/rtc/channel.hpp:22:0,
                 from src/channel.cpp:19:
include/rtc/include.hpp:42:20: fatal error: optional: No such file or directory
compilation terminated.
Makefile:69: recipe for target 'src/channel.o' failed
make: *** [src/channel.o] Error 1
In file included from include/rtc/channel.hpp:22:0,
                 from include/rtc/datachannel.hpp:22,
                 from src/datachannel.cpp:19:
include/rtc/include.hpp:42:20: fatal error: optional: No such file or directory
compilation terminated.
In file included from src/certificate.hpp:22:0,
                 from src/dtlstransport.hpp:22,
                 from src/dtlssrtptransport.hpp:22,
                 from src/dtlssrtptransport.cpp:19:
include/rtc/include.hpp:42:20: fatal error: optional: No such file or directory
compilation terminated.
Makefile:69: recipe for target 'src/datachannel.o' failed
make: *** [src/datachannel.o] Error 1
Makefile:69: recipe for target 'src/dtlssrtptransport.o' failed
make: *** [src/dtlssrtptransport.o] Error 1
In file included from src/certificate.hpp:22:0,
                 from src/dtlstransport.hpp:22,
                 from src/dtlstransport.cpp:19:
include/rtc/include.hpp:42:20: fatal error: optional: No such file or directory
compilation terminated.
Makefile:69: recipe for target 'src/dtlstransport.o' failed
make: *** [src/dtlstransport.o] Error 1
In file included from include/rtc/candidate.hpp:22:0,
                 from include/rtc/description.hpp:23,
                 from src/description.cpp:20:
include/rtc/include.hpp:42:20: fatal error: optional: No such file or directory
compilation terminated.
Makefile:69: recipe for target 'src/description.o' failed
make: *** [src/description.o] Error 1
In file included from include/rtc/candidate.hpp:22:0,
                 from src/icetransport.hpp:22,
                 from src/icetransport.cpp:19:
include/rtc/include.hpp:42:20: fatal error: optional: No such file or directory
compilation terminated.
Makefile:69: recipe for target 'src/icetransport.o' failed
make: *** [src/icetransport.o] Error 1
In file included from include/rtc/init.hpp:22:0,
                 from src/init.cpp:19:
include/rtc/include.hpp:42:20: fatal error: optional: No such file or directory
compilation terminated.
Makefile:69: recipe for target 'src/init.o' failed
make: *** [src/init.o] Error 1 [AssertionError]
```

It says these thing not exist but they do exist. What to try next?