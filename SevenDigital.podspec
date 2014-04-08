Pod::Spec.new do |s|

  s.name         = "SevenDigital"
  s.version      = "0.0.1"
  s.summary      = "7Digital's iOS SDK for the api's."

  s.description  = <<-DESC
                   The 7Digital iOS SDK helps you get up and running with a project that uses the 7Digital api's.

                   * User login and handles OAuth for you.
                   * Conveniently returns tracks and releases as objects rather than nested dictionaries.
                   DESC

  s.homepage     = "http://developer.7digital.com/resources/api-docs/"

  s.license      = 'MIT'
  s.author             = { "7Digital" => "support@7digital.com" }

  s.platform     = :ios, '7.0'
  s.source       = { :git => "https://github.com/mmmbiscuits/7Digital-IOS-API.git" , :tag => 'v0.0.1' }
  s.source_files  = 'Classes', 'Classes/**/*.{h,m}'
  s.exclude_files = 'Classes/Exclude'
  s.public_header_files = 'Classes/**/*.h'

  s.preserve_path = 'StaticLib/*.a'
  s.ios.vendored_library = 'StaticLib/libSevenDigital.a'

  # s.framework  = 'SevenDigital' #commented out till include works?
  s.dependency 'Reachability', '~> 3.1'
  s.dependency 'TouchXML', '~> 0.1'


  s.library   = 'xml2'

  s.requires_arc = true

  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' , 'OTHER_LINKER_FLAGS' => '-ObjC'}
  # s.xcconfig  =  { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/TestFlightSDK"' }


end
