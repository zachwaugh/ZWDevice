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

ZWDevice is available under the MIT license. See the LICENSE file for more info.

