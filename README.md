TestFairy plugin for cordova / phonegap
---------------------------------------

This plugin automates installation of the TestFairy SDK for cordova apps on the ios platform. It provides a JavaScript interface to initialize a TestFairy session and set a correlation id. 

Installation 
============

```
cordova add https://github.com/miraculixx/cordova-testfairy-plugin.git
```

TestFairy SDK
=============

The TestFairy SDK is downloaded from the official TestFairy SDK download page on plugin install and is not included in the plugin. 


Setup in your app
=================

```
    document.addEventListener('deviceready', function() {
		// start test fairy. 
        TestFairy.init("your token");
		// set a session correlation id
        TestFairy.setCorrelationId("correlation id");
        // your code
        ...
	});
```


iOS
===

On iOS the following messages will appear in the console:

```
2015-02-02 14:01:46.601 myapp[25635:1019639] loading testfairy with token <your token>
2015-02-02 14:01:46.602 myapp[25635:1019664] TestFairy: Initializing SDK version 20150201-cc754922
...
2015-02-02 14:01:47.246 myapp[25635:1019639] TestFairy: Session started successfully
...
2015-02-02 14:04:01.486 myapp[25635:1019639] setting testfairy correlation id AnonymousUser
...
2015-02-02 14:04:59.692 myapp[25635:1019787] TestFairy: t => d=15, hv=0, dk=111, gi=0, cm=0, hh=1, rt=0, jp=225, nt=0
```


Android
=======

On Android this plugin does not actually do anything because TestFairy will instrument the app on upload. However, the plugin issues the following warning:

```
[WARN] testfairy on android must be instrumented via upload for token <your token>
```


Platforms supported
===================

* Supports both Android and iOS. 
* Note that on Android the plugin will install and work fine, however it does not have an effect because TestFairy instruments the app on uploading.


Plugin License
==============

NOTE: This license only applies to the plugin, it does not apply to the TestFairy SDK. Check [TestFairy's documentation](http://docs.testfairy.com/) for details on their licensing policy.

The MIT License (MIT)

Copyright (c) 2015 miraculixx@github

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

