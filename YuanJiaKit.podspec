
Pod::Spec.new do |s|
  s.name             = "YuanJiaKit"
  s.version          = "1.0.0"
  s.summary          = "UIKit for JiaYuan on iOS."
  s.description      = <<-DESC
                       This is a UIKit framework used on iOS, which implement by Objective-C.
                       DESC
  s.homepage         = "https://github.com/red3/YuanJiaKit"
  # s.screenshots      = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "red3" => "finamile@gmail.com" }
  s.source           = { :git => "https://github.com/red3/YuanJiaKit.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/NAME'

  s.platform     = :ios, '5.0'
  # s.ios.deployment_target = '5.0'
  # s.osx.deployment_target = '10.7'
  s.requires_arc = true

  s.source_files = 'YuanJiaKit/*'
  # s.resources = 'Assets'

  # s.ios.exclude_files = 'Classes/osx'
  # s.osx.exclude_files = 'Classes/ios'
  # s.public_header_files = 'Classes/**/*.h'
  s.frameworks = 'Foundation', 'CoreGraphics', 'UIKit'

end
