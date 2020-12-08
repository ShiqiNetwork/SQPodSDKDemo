Pod::Spec.new do |s|
s.name             = "SQPodSDK"
s.version          = "0.1"
s.summary          = "拾柒pod"
s.description      = <<-DESC
SQPodSDK，用于快速集成拾柒pod商城
DESC
s.homepage         = "https://github.com/ShiqiNetwork/SQPodSDKDemo"
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { "Tony.JR" => "show_3@163.com" }
s.source           = { :git => "https://github.com/ShiqiNetwork/SQPodSDKDemo.git", :tag => "#{s.version}" }
s.platform         = :ios, '9.0'
s.requires_arc     = true
s.frameworks       = 'Foundation,WebKit'
s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/SQPodSDK/frameworks' }


end

