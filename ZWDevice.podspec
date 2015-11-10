Pod::Spec.new do |s|
  s.name         = "ZWDevice"
  s.version      = "0.1.0"
  s.summary      = "iOS hardware model to friendly name library (iPhone7,2 -> iPhone 6)"
  s.homepage     = "http://github.com/zachwaugh/ZWDevice"
  s.license      = "MIT"
  s.author       = { "Zach Waugh" => "zwaugh@gmail.com" }
  s.platform     = :ios
  s.source       = { :git => "http://github.com/zachwaugh/ZWDevice.git", :tag => "0.1.0" }
  s.source_files  = "source/*.{h,m}"
end
