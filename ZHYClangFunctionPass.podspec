#
# Be sure to run `pod lib lint ZHYClangFunctionPass.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZHYClangFunctionPass'
  s.version          = '0.1.0'
  s.summary          = 'A short description of ZHYClangFunctionPass.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/DoubleWwang/ZHYClangFunctionPass'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'DoubleWwang' => 'zhouyang11@58.com' }
  s.source           = { :git => 'https://github.com/DoubleWwang/ZHYClangFunctionPass.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  # 1. 源文件
  s.source_files  = "src/*"
  
  # 2. 需要保留的文件路径
  # https://guides.cocoapods.org/syntax/podspec.html#preserve_paths
  s.preserve_paths = "clang/bin/clang", "clang/lib/MyPlacementPass.dylib", "clang/lib/clang/10.0.0/include/*"

  # 3. 修改 xcode 工程配置文件
  s.xcconfig = {
    "OTHER_CFLAGS" => "-Xclang -load -Xclang /Users/ww/Downloads/ZHYClangFunctionPass/clang/lib/MyPlacementPass.dylib", 
    "COMPILER_INDEX_STORE_ENABLE" => "No",
    "CC" => "/Users/ww/Downloads/ZHYClangFunctionPass/clang/bin/clang"
  }

  
  # s.resource_bundles = {
  #   'ZHYClangFunctionPass' => ['ZHYClangFunctionPass/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
