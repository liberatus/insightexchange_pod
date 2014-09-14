#
# Be sure to run `pod lib lint InsightExchange.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "InsightExchange"
  s.version          = "0.1.0"
  s.summary          = "Monetize your app by exchanging data with your users' other apps."
  s.description      = <<-DESC
                       InsightExchange is the world's first realtime marketplace platform for exchanging meaningful customer insights. We provide a standard interface for app builders to sell data about a customer to a wide array of businesses who share the same customer.

                       Managing independent integrations is complicated, and forming business relationships even more-so. Our platform aims to forge a new class of valuable low-cost integrations enabled through a standard API, a bidding/approval mechanism, and a fire-hose of actionable sales insights aggregated from across the app ecosystem.
                       DESC
  s.homepage         = "http://insightexchange.co"
  s.license          = 'MIT'
  s.author           = { "winfred" => "winfred@liberat.us" }
  s.source           = { :git => "https://github.com/liberatus/insightexchange_pod.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/InsightExCo'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
end
