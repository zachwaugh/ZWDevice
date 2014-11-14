# ZWDevice

iOS hardware model to name library. This uses simple model names, I don't try to differentiate between a wi-fi or cellular iPad for example.


## Install

Copy `ZWDevice.h` and `ZWDevice.m` to your project.

or use CocoaPods:

```ruby
pod 'ZWDevice', :git => 'https://github.com/zachwaugh/ZWDevice.git'
```

## Usage

```objc
NSString *model = ZWDevice.model;
NSLog(@"You're using a %@", model); // You're using iPhone 6
```

## License

Licensed under the MIT license.

Copyright (c) 2014 Zach Waugh (http://zachwaugh.me)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
