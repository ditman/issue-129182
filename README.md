# issue_129182

A repro for flutter/flutter#129182

Made by @agreaves [here](https://github.com/flutter/flutter/issues/129182#issuecomment-1603770627)

## Possible root cause

* Bisected to this change: [flutter/engine@5bae183](https://github.com/flutter/engine/commit/5bae18365a0142eb38b24d2037d3076057844953), most likely:
  * `html/scene.dart``

## Fix(?) attempt

* https://github.com/flutter/engine/compare/main...ditman:flutter-engine:html-renderer-cull-rect

(This app is configured to run with the HTML renderer, which is the one exhibiting the issue)
