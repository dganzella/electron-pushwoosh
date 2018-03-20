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
   "link_settings": {
	"libraries": [
	  "./Pushwoosh.framework"
	],
  },
    "xcode_settings": {
      "OTHER_CPLUSPLUSFLAGS": ["-std=c++11", "-stdlib=libc++", "-mmacosx-version-min=10.8"],
      "OTHER_LDFLAGS": ["-framework CoreFoundation -framework IOKit -framework AppKit"]
    }
  }]
}