# ZWDevice

iOS hardware model to name library. This uses simple model names, I don't try to differentiate between a wi-fi or cellular iPad for example.


## Install

Use Carthage:

```
git "git@github.com:zachwaugh/ZWDevice.git" "master"
```

Use CocoaPods:

```ruby
pod 'ZWDevice', :git => 'https://github.com/zachwaugh/ZWDevice.git'
```

Or copy `ZWDevice.h` and `ZWDevice.m` to your project.

## Usage

```objc
NSString *model = ZWDevice.model;
NSLog(@"You're using a %@", model); // You're using iPhone 6
```

## License

ZWDevice is available under the MIT license. See the LICENSE file for more info.

