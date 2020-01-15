#
# Be sure to run `pod lib lint AAALoadTime.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AAALoadTime'
  s.version          = '0.1.3'
  s.summary          = 'A short description of AAALoadTime.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  统计app加载时间，AAA是为了统计启动加载时间
                       DESC

  s.homepage         = 'https://github.com/chengshoubin/AAALoadTime'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'chengshoubin' => 'shoubin.cheng@longbridge.sg' }
  s.source           = { :git => 'git@github.com:iCoobin/AAALoadTime.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'AAALoadTime/Classes/**/*'
  
  # s.resource_bundles = {
  #   'AAALoadTime' => ['AAALoadTime/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
