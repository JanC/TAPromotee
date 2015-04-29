#
# Be sure to run `pod lib lint TAPromotee.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "TAPromotee"
  s.version          = "0.3"
  s.summary          = "Easy to use way to show a cross promotion to a iOS app"
  s.description  = <<-DESC
TAPromotee is a pod that allows you to show a cross promotion to a iOS app just by supllying its App Store id. It automatically fetches the info about the app using the iTunes API and dislpays it in a interstitial where the user can install it.
                   DESC
  s.homepage     = "https://github.com/JanC/TAPromotee.git"
  
  s.license          = 'MIT'
  s.author           = { "Jan Chaloupecky" => "jan.chaloupecky@gmail.com" }
  s.source           = { :git => "https://github.com/JanC/TAPromotee.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/TexTwil'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resources = ['Pod/Assets/*.png', 'Pod/Assets/*.json']

  s.public_header_files = 'Pod/Classes/**/*.h'
end
