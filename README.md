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

So I defined [webrtc.nimble](https://github.com/TensorTom/nim-webrtc/blob/main/webrtc.nimble) & [src/webrtc.nim](https://github.com/TensorTom/nim-webrtc/blob/main/src/webrtc.nim) to match it as best I can. Then, I try a test run via:

```sh
nim c -d:rtcGit -d:rtcStatic src/webrtc.nim
```

but it doesn't work. See [Issue #1](https://github.com/TensorTom/nim-webrtc/issues/1)
