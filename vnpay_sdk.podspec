Pod::Spec.new do |s|
  s.name             = 'vnpay_sdk'
  s.version          = '0.1.0'
  s.summary          = 'a plugin project for vnpay.'

  s.description      = <<-DESC
vnpay_sdk is a plugin project for vnpay. It's a static framework. It's help you integrate vnpay into your project.
                       DESC

  s.homepage         = 'https://github.com/lumi-software/vnpay_sdk.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Lumi Viet Nam' => 'nghinv@lumi.vn' }
  s.source           = { :git => 'https://github.com/lumi-software/vnpay_sdk.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.vendored_frameworks = 'Frameworks/CallAppSDK.framework'
  s.resource_bundles = {
    'vnpay_sdk' => ['Assets/*.png', 'Assets/*.imageset']
  }
  s.resources = 'Assets/*.png', 'Assets/*.imageset'
  s.static_framework = true

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
