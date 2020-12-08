Pod::Spec.new do |spec|
  spec.name         = "SQPodSDK"
  spec.version      = "0.1"
  spec.summary      = "SQPod SDK for iOS"
  spec.description  = <<-DESC
  用于快速集成拾柒pod商城
                   DESC

  spec.homepage     = "https://github.com/ShiqiNetwork/SQPodSDKDemo"
  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.author       = { "Tony.JR" => "show_3@163.com" }
  spec.source       = { :git => "https://github.com/ShiqiNetwork/SQPodSDKDemo.git", :tag => spec.version }

  spec.platform     = :ios, "9.0"
  spec.requires_arc = true
  spec.vendored_frameworks = '/frameworks/SQPodSDK.framework'
  spec.frameworks = 'Foundation'
end
