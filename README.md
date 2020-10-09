# nim-webrtc

Nim wrapper of [libdatachannel](https://github.com/paullouisageneau/libdatachannel). This is my first time using Nimterop
and I'm having some trouble with it. If you know how to fix, please let me know for my learning experience.

libdatachannel has a C API specifically at  [libdatachannel/include/rtc/rtc.h](https://github.com/paullouisageneau/libdatachannel/blob/master/include/rtc/rtc.h)

From their docs we can see build instructions:

```sh
$ git clone https://github.com/paullouisageneau/libdatachannel.git
$ cd libdatachannel
$ git submodule update --init --recursive
$ cmake -B build -DUSE_GNUTLS=1 -DUSE_NICE=0
$ cd build
$ make -j2
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
# Running cmake .. -G 'Unix Makefiles' -DCMAKE_C_COMPILER_LAUNCHER=ccache -DCMAKE_CXX_COMPILER_LAUNCHER=ccache -DUSE_GNUTLS=1 -DUSE_NICE=0
#   Path: /home/user/.cache/nim/nimterop/libdatachannel/buildcache

# -- The CXX compiler identification is GNU 5.5.0
# -- Detecting CXX compiler ABI info
# -- Detecting CXX compiler ABI info - done
# -- Check for working CXX compiler: /home/linuxbrew/.linuxbrew/bin/c++ - skipped
# -- Detecting CXX compile features
# -- Detecting CXX compile features - done
# -- Looking for C++ include pthread.h
# -- Looking for C++ include pthread.h - found
# -- Performing Test CMAKE_HAVE_LIBC_PTHREAD
# -- Performing Test CMAKE_HAVE_LIBC_PTHREAD - Failed
# -- Check if compiler accepts -pthread
# -- Check if compiler accepts -pthread - yes
# -- Found Threads: TRUE  
# -- The C compiler identification is GNU 5.5.0
# -- Detecting C compiler ABI info
# -- Detecting C compiler ABI info - done
# -- Check for working C compiler: /home/linuxbrew/.linuxbrew/bin/cc - skipped
# -- Detecting C compile features
# -- Detecting C compile features - done
# -- No build type selected, using DEBUG
# -- Looking for include file sys/queue.h
# -- Looking for include file sys/queue.h - found
# -- Looking for include files sys/socket.h, linux/if_addr.h
# -- Looking for include files sys/socket.h, linux/if_addr.h - found
# -- Looking for include files sys/socket.h, linux/rtnetlink.h
# -- Looking for include files sys/socket.h, linux/rtnetlink.h - found
# -- Looking for 4 include files sys/types.h, ..., netinet/ip_icmp.h
# -- Looking for 4 include files sys/types.h, ..., netinet/ip_icmp.h - found
# -- Looking for include file stdatomic.h
# -- Looking for include file stdatomic.h - found
# -- Looking for usrsctp.h
# -- Looking for usrsctp.h - found
# -- Performing Test have_sa_len
# -- Performing Test have_sa_len - Failed
# -- Performing Test have_sin_len
# -- Performing Test have_sin_len - Failed
# -- Performing Test have_sin6_len
# -- Performing Test have_sin6_len - Failed
# -- Performing Test have_sconn_len
# -- Performing Test have_sconn_len - Failed
# -- Performing Test has_wfloat_equal
# -- Performing Test has_wfloat_equal - Success
# -- Performing Test has_wshadow
# -- Performing Test has_wshadow - Success
# -- Performing Test has_wpointer_aritih
# -- Performing Test has_wpointer_aritih - Success
# -- Performing Test has_wunreachable_code
# -- Performing Test has_wunreachable_code - Success
# -- Performing Test has_winit_self
# -- Performing Test has_winit_self - Success
# -- Performing Test has_wno_unused_function
# -- Performing Test has_wno_unused_function - Success
# -- Performing Test has_wno_unused_parameter
# -- Performing Test has_wno_unused_parameter - Success
# -- Performing Test has_wno_unreachable_code
# -- Performing Test has_wno_unreachable_code - Success
# -- Performing Test has_wstrict_prototypes
# -- Performing Test has_wstrict_prototypes - Success
# -- Compiler flags (CMAKE_C_FLAGS):  -std=c99 -pedantic -Wall -Wextra -Wfloat-equal -Wshadow -Wpointer-arith -Wunreachable-code -Winit-self -Wno-unused-function -Wno-unused-parameter -Wno-unreachable-code -Wstrict-prototypes -Werror
# -- Performing Test has_wno_address_of_packed_member
# -- Performing Test has_wno_address_of_packed_member - Success
# -- Performing Test has_wno_deprecated_declarations
# -- Performing Test has_wno_deprecated_declarations - Success
# -- Found SRTP: /usr/include  
# -- LibSRTP found, compiling with media transport
# -- Found GnuTLS: /usr/lib/x86_64-linux-gnu/libgnutls.so  
# -- Found Nettle: /usr/lib/x86_64-linux-gnu/libnettle.so  
# -- Using the single-header code from /home/user/.cache/nim/nimterop/libdatachannel/deps/json/single_include/
# -- Configuring done
# -- Generating done
# -- Build files have been written to: /home/user/.cache/nim/nimterop/libdatachannel/buildcache
# Running make 
#   Path: /home/user/.cache/nim/nimterop/libdatachannel/buildcache
stack trace: (most recent call last)
/home/user/.nimble/pkgs/nimterop-0.6.12/nimterop/build/getheader.nim(485, 23)
/home/user/.nimble/pkgs/nimterop-0.6.12/nimterop/build/getheader.nim(234, 11) buildLibrary
/home/user/.nimble/pkgs/nimterop-0.6.12/nimterop/build/tools.nim(196, 19) make
/home/user/.nimble/pkgs/nimterop-0.6.12/nimterop/build/shell.nim(90, 11) execAction
/home/user/.nimble/lib/system/assertions.nim(29, 26) failedAssertImpl
/home/user/.nimble/lib/system/assertions.nim(22, 11) raiseAssert
/home/user/.nimble/lib/system/fatal.nim(49, 5) sysFatal
/home/user/Projects/webrtc/src/webrtc.nim(20, 10) template/generic instantiation of `getHeader` from here
/home/user/.nimble/lib/system/fatal.nim(49, 5) Error: unhandled exception: /home/user/.nimble/pkgs/nimterop-0.6.12/nimterop/build/shell.nim(90, 7) `not die` Command failed: 2
cmd: cd /home/user/.cache/nim/nimterop/libdatachannel/buildcache && make -j 12
result:
Scanning dependencies of target juice-static
[  0%] Building C object deps/libjuice/CMakeFiles/juice-static.dir/src/addr.c.o
[  1%] Building C object deps/libjuice/CMakeFiles/juice-static.dir/src/agent.c.o
[  3%] Building C object deps/libjuice/CMakeFiles/juice-static.dir/src/crc32.c.o
[  3%] Building C object deps/libjuice/CMakeFiles/juice-static.dir/src/hmac.c.o
[  5%] Building C object deps/libjuice/CMakeFiles/juice-static.dir/src/juice.c.o
[  7%] Building C object deps/libjuice/CMakeFiles/juice-static.dir/src/ice.c.o
[  7%] Building C object deps/libjuice/CMakeFiles/juice-static.dir/src/log.c.o
[  7%] Building C object deps/libjuice/CMakeFiles/juice-static.dir/src/stun.c.o
[  8%] Building C object deps/libjuice/CMakeFiles/juice-static.dir/src/random.c.o
[ 10%] Building C object deps/libjuice/CMakeFiles/juice-static.dir/src/udp.c.o
[ 12%] Linking C static library libjuice-static.a
Scanning dependencies of target usrsctp-static
[ 14%] Building C object deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/netinet/sctp_auth.c.o
[ 14%] Building C object deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/netinet/sctp_asconf.c.o
[ 17%] Building C object deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/netinet/sctp_callout.c.o
[ 17%] Building C object deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/netinet/sctp_indata.c.o
[ 17%] Building C object deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/netinet/sctp_bsd_addr.c.o
[ 17%] Building C object deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/netinet/sctp_cc_functions.c.o
[ 19%] Building C object deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/netinet/sctp_input.c.o
[ 21%] Building C object deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/netinet/sctp_output.c.o
[ 23%] Building C object deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/netinet/sctp_crc32.c.o
[ 23%] Building C object deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/netinet/sctp_pcb.c.o
[ 25%] Building C object deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/netinet/sctp_peeloff.c.o
[ 25%] Built target juice-static
cc1: error: -Werror=format-truncation: no option -Wformat-truncation
cc1: error: unrecognized command line option '-Wno-address-of-packed-member' [-Werror]
cc1: all warnings being treated as errors
cc1: error: -Werror=format-truncation: no option -Wformat-truncation
cc1: error: unrecognized command line option '-Wno-address-of-packed-member' [-Werror]
cc1: all warnings being treated as errors
cc1: error: -Werror=format-truncation: no option -Wformat-truncation
cc1: error: unrecognized command line option '-Wno-address-of-packed-member' [-Werror]
cc1: all warnings being treated as errors
deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/build.make:120: recipe for target 'deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/netinet/sctp_callout.c.o' failed
make[2]: *** [deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/netinet/sctp_callout.c.o] Error 1
make[2]: *** Waiting for unfinished jobs....
deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/build.make:94: recipe for target 'deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/netinet/sctp_auth.c.o' failed
make[2]: *** [deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/netinet/sctp_auth.c.o] Error 1
deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/build.make:133: recipe for target 'deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/netinet/sctp_cc_functions.c.o' failed
make[2]: *** [deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/netinet/sctp_cc_functions.c.o] Error 1
cc1: error: -Werror=format-truncation: no option -Wformat-truncation
cc1: error: -Werror=format-truncation: no option -Wformat-truncation
cc1: error: unrecognized command line option '-Wno-address-of-packed-member' [-Werror]
cc1: all warnings being treated as errors
cc1: error: unrecognized command line option '-Wno-address-of-packed-member' [-Werror]
cc1: all warnings being treated as errors
cc1: error: -Werror=format-truncation: no option -Wformat-truncation
deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/build.make:107: recipe for target 'deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/netinet/sctp_bsd_addr.c.o' failed
make[2]: *** [deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/netinet/sctp_bsd_addr.c.o] Error 1
cc1: error: unrecognized command line option '-Wno-address-of-packed-member' [-Werror]
cc1: all warnings being treated as errors
cc1: error: -Werror=format-truncation: no option -Wformat-truncation
deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/build.make:185: recipe for target 'deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/netinet/sctp_output.c.o' failed
make[2]: *** [deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/netinet/sctp_output.c.o] Error 1
cc1: error: unrecognized command line option '-Wno-address-of-packed-member' [-Werror]
cc1: all warnings being treated as errors
deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/build.make:172: recipe for target 'deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/netinet/sctp_input.c.o' failed
make[2]: *** [deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/netinet/sctp_input.c.o] Error 1
deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/build.make:81: recipe for target 'deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/netinet/sctp_asconf.c.o' failed
make[2]: *** [deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/netinet/sctp_asconf.c.o] Error 1
cc1: error: -Werror=format-truncation: no option -Wformat-truncation
cc1: error: unrecognized command line option '-Wno-address-of-packed-member' [-Werror]
cc1: all warnings being treated as errors
[ 26%] Building C object deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/netinet/sctp_sha1.c.o
deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/build.make:146: recipe for target 'deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/netinet/sctp_crc32.c.o' failed
make[2]: *** [deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/netinet/sctp_crc32.c.o] Error 1
cc1: error: -Werror=format-truncation: no option -Wformat-truncation
cc1: error: unrecognized command line option '-Wno-address-of-packed-member' [-Werror]
cc1: all warnings being treated as errors
deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/build.make:159: recipe for target 'deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/netinet/sctp_indata.c.o' failed
make[2]: *** [deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/netinet/sctp_indata.c.o] Error 1
cc1: error: -Werror=format-truncation: no option -Wformat-truncation
cc1: error: unrecognized command line option '-Wno-address-of-packed-member' [-Werror]
cc1: all warnings being treated as errors
deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/build.make:198: recipe for target 'deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/netinet/sctp_pcb.c.o' failed
make[2]: *** [deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/netinet/sctp_pcb.c.o] Error 1
cc1: error: -Werror=format-truncation: no option -Wformat-truncation
cc1: error: unrecognized command line option '-Wno-address-of-packed-member' [-Werror]
cc1: all warnings being treated as errors
deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/build.make:211: recipe for target 'deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/netinet/sctp_peeloff.c.o' failed
make[2]: *** [deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/netinet/sctp_peeloff.c.o] Error 1
cc1: error: -Werror=format-truncation: no option -Wformat-truncation
cc1: error: unrecognized command line option '-Wno-address-of-packed-member' [-Werror]
cc1: all warnings being treated as errors
deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/build.make:224: recipe for target 'deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/netinet/sctp_sha1.c.o' failed
make[2]: *** [deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/netinet/sctp_sha1.c.o] Error 1
CMakeFiles/Makefile2:453: recipe for target 'deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/all' failed
make[1]: *** [deps/usrsctp/usrsctplib/CMakeFiles/usrsctp-static.dir/all] Error 2
Makefile:148: recipe for target 'all' failed
make: *** [all] Error 2 [AssertionError]
```

Looks like the current problem is:

```
cc1: error: -Werror=format-truncation: no option -Wformat-truncation
cc1: error: unrecognized command line option '-Wno-address-of-packed-member' [-Werror]
```

whatever that means. Searching...
