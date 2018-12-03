#
#  Be sure to run `pod spec lint LMCountDown.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "LMCountDown"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of LMCountDown."

  
  spec.description  = <<-DESC
                     this is timer count down tools.............
                   DESC

  spec.homepage     = "https://github.com/mymirror/LMCountDown"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  spec.license      = { :type => "MIT", :file => "LICENSE" }



  spec.author             = { "mymirror" => "852171945@qq.com" }

  spec.platform     = :ios


  spec.source       = { :git => "https://github.com/mymirror/LMCountDown.git", :tag => "#{spec.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  spec.source_files  = "LMCountDown/LMCountDown/*.{h,m}"

  spec.requires_arc = true

end
