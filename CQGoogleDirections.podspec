#
# Be sure to run `pod lib lint CQGoogleDirections.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "CQGoogleDirections"
  s.version          = "0.1.0"
  s.summary          = "Google Directions API helper for iOS."

  s.description      = "CQGoogleDirections helps developers deal with Google Directions API by turning JSON Response into convenient objects."

  s.homepage         = "https://github.com/codequest-eu/CQGoogleDirections"
  s.license          = 'MIT'
  s.author           = { "Lukasz Solniczek" => "l.solniczek@gmail.com" }
  s.source           = { :git => "https://github.com/codequest-eu/CQGoogleDirections.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'CQGoogleDirections' => ['Pod/Assets/*.png']
  }

  s.frameworks = 'UIKit', 'MapKit'
end
