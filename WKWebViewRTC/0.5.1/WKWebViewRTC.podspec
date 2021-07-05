Pod::Spec.new do |s|
  s.name        = 'WKWebViewRTC'
  s.version     = '0.5.1'
  s.summary     = 'WebRTC library for WKWebView for Swift on iOS'
  s.homepage    = 'https://github.com/OpenTelecom/WKWebViewRTC'
  s.license     = { :type => 'MIT', :file => 'LICENSE' }
  s.authors     = { 'OpenTelecom' => 'contact@OpenTele.com' }

  s.description      = <<-DESC
	WebRTC library for WKWebView for Swift on iOS (based on cordova-plugin-iosrtc: https://github.com/cordova-rtc/cordova-plugin-iosrtc)
                       DESC

  s.requires_arc = true
  s.ios.deployment_target = '11.0'
  s.swift_version = '4.2'

  s.source   = { :git => 'https://github.com/nauphone/WKWebViewRTC.git', :tag => '0.5.1'}
  s.source_files = 'WKWebViewRTC/Classes/**/*'
  s.resources = 'WKWebViewRTC/Js/jsWKWebViewRTC.js'

  s.dependency 'GoogleWebRTC', '1.1.29229'

  s.xcconfig       = { 'ENABLE_BITCODE' => 'NO', 'ONLY_ACTIVE_ARCH' => 'Yes' }
end
