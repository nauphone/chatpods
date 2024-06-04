Pod::Spec.new do |s|
  s.name        = 'WKWebViewRTC'
  s.version     = '0.6.3'
  s.summary     = 'WebRTC library for WKWebView for Swift on iOS'
  s.homepage    = 'https://github.com/OpenTelecom/WKWebViewRTC'
  s.license     = { :type => 'MIT', :file => 'LICENSE' }
  s.authors     = { 'OpenTelecom' => 'contact@OpenTele.com' }

  s.description      = <<-DESC
	WebRTC library for WKWebView for Swift on iOS (based on cordova-plugin-iosrtc: https://github.com/cordova-rtc/cordova-plugin-iosrtc)
                       DESC

  s.requires_arc = true
  s.ios.deployment_target = '12.0'
  s.swift_version = '4.2'

  s.source   = { :git => 'https://github.com/nauphone/WKWebViewRTC.git', :tag => s.version.to_s }
  s.source_files = 'Sources/WKWebViewRTC/Classes/**/*'
  s.resources = 'Sources/WKWebViewRTC/Js/jsWKWebViewRTC.js'

  s.dependency 'WebRTC-lib', '~> 114.0.0'

  s.xcconfig       = { 'ENABLE_BITCODE' => 'NO', 'ONLY_ACTIVE_ARCH' => 'Yes' }
end