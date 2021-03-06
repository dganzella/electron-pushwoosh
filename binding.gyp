{
  "targets": [{
    "target_name": "PushWooshElectron",
    "sources": [
      "PushwooshElectron.cc",
      "pushwoosh_notification.mm"
    ],
    "include_dirs": [
      "<!(node -e \"require('nan')\")"
    ],
    "xcode_settings": {
      "OTHER_CPLUSPLUSFLAGS": ["-std=c++11", "-stdlib=libc++", "-mmacosx-version-min=10.7"],
      "OTHER_LDFLAGS": ["-framework CoreFoundation -framework IOKit -framework AppKit"]
    }
  }]
}