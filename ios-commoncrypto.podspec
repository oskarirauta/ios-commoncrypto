Pod::Spec.new do |s|
  s.name             = "ios-commoncrypto"
  s.version          = '1.0.1'
  s.license          = { :type => 'MIT', :text => 'MIT License' }
  s.summary          = 'CommmonCrypto module maps for Swift'

  s.homepage         = "https://github.com/oskarirauta/ios-commoncrypto"
  s.authors          = {
                        "Bjarne Mogstad" => "me@mogstad.co",
                        "Caesar Wirth" => "carsar@cjwirth.com",
			"Oskari Rauta" => "oskari.rauta@gmail.com"
                       }
  s.source           = { :git => "https://github.com/oskarirauta/ios-commoncrypto.git", :tag => s.version.to_s }

  s.module_name = 'CommonCrypto'
  s.swift_version = '4.0'
  s.ios.deployment_target = '11.0'
  s.osx.deployment_target = '10.9'

  s.frameworks = 'Security'

  s.ios.module_map = 'modules/ios/module.modulemap'
  s.osx.module_map = 'modules/osx/module.modulemap'
  s.tvos.module_map = 'modules/tvos/module.modulemap'
  s.watchos.module_map = 'modules/watchos/module.modulemap'

  s.source_files = [
			"CommonCrypto/*.h",
			"CommonCrypto/*.swift"
                   ]

end
