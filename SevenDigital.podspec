Pod::Spec.new do |s|

  s.name         = "SevenDigital"
  s.version      = "0.0.1"
  s.summary      = "7Digital's iOS SDK for the api's."

  s.description  = <<-DESC
                   A longer description of 7Digital in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC

  s.homepage     = "http://developer.7digital.com/resources/api-docs/"
  # s.screenshots  = "www.example.com/screenshots_1", "www.example.com/screenshots_2"


  s.license      = 'MIT'
  #s.author             = { "Ryan Smale" => "eagle14@gmail.com" }
   s.authors          = { "first Authour" => "email@adress.com", "other author" => "email@address.com" }
  #s.author           = '7Digital'
  # s.social_media_url = "http://twitter.com/Ryan Smale"

  # s.platform     = :ios
  s.platform     = :ios, '7.0'

  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  s.source       = { :git => "https://github.com/mmmbiscuits/7Digital-IOS-API.git" , :tag => 'v0.0.1' }

  s.source_files  = 'Classes', 'Classes/**/*.{h,m}'
  s.exclude_files = 'Classes/Exclude'

  s.public_header_files = 'Classes/**/*.h'

  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  s.preserve_paths = 'SevenDigital.a'


  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.

  # s.framework  = 'SomeFramework'
  # s.frameworks = 'SomeFramework', 'AnotherFramework'

   s.library   = 'xml2'
   s.libraries = 'iconv', 'xml2'

  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

   s.requires_arc = true

   s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' , 'OTHER_LINKER_FLAGS' => '-ObjC'}
  # s.dependency 'JSONKit', '~> 1.4'

end
