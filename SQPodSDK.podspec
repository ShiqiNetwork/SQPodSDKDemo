Pod::Spec.new do |spec|
  spec.name         = "SQPodSDK"
  spec.version      = "0.1.5"
  spec.summary      = "SQPod SDK for iOS"
  spec.description  = <<-DESC
    SQPod SDK for iOS，用于快速集成拾柒pod商城
                   DESC

  spec.homepage     = "https://github.com/ShiqiNetwork/SQPodSDKDemo"
  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.author       = { "Tony.JR" => "show_3@163.com" }
  spec.source       = { :git => "https://github.com/ShiqiNetwork/SQPodSDKDemo.git", :tag => spec.version }
  spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }
  spec.platform     = :ios, "10.0"
  spec.requires_arc = true
  spec.vendored_frameworks = 'SQPodSDK.framework'
  spec.frameworks = 'Foundation','WebKit'
end
