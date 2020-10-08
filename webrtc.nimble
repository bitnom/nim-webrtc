# Package

version = "0.1.0"
author = "TensorTom"
description = "WebRTC libdatachannel binding for Nim."
license = "LGPL3"
srcDir = "src"

var
    name = "webrtc"

# Dependencies

requires "nim >= 1.0.0", "nimterop"

when gorgeEx("nimble path nimterop").exitCode == 0:
    import nimterop/docs
    task docs, "Generate docs": buildDocs(@["src/webrtc.nim"], "build/htmldocs")
else:
    task docs, "Do nothing": discard