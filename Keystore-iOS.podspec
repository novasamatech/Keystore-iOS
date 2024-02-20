Pod::Spec.new do |s|
  s.name             = 'Keystore-iOS'
  s.version          = '1.0.0'
  s.summary          = 'A library to wrap logic related to keychain and user defaults.'

  s.homepage         = 'https://github.com/novasamatech/Keystore-iOS'
  s.license          = { :type => 'Apache-2.0', :file => 'LICENSE' }
  s.author           = { 'Ruslan Rezin' => 'ruslan@novawallet.io' }
  s.source           = { :git => 'https://github.com/novasamatech/Keystore-iOS.git', :tag => s.version.to_s }

  s.ios.deployment_target = '15.0'

  s.swift_version = '5.0'

  s.source_files = 'Keystore-iOS/Classes/**/*'

  s.test_spec do |ts|
      ts.source_files = 'Tests/**/*'
  end

end
