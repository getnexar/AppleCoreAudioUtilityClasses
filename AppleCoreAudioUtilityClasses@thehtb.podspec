Pod::Spec.new do |s|
  s.name         = "AppleCoreAudioUtilityClasses@thehtb"
  s.version      = "2013.09.17"
  s.summary      = "A git mirror of Apple's Core Audio Utility Classes for better versioning and with clang/llvm fixes."
  s.description  = <<-DESC
The "CoreAudio" folder contains the Public Utility sources (PublicUtility folder) as well as base classes required for codec and audio unit development. These utility classes are used by various Apple Core Audio sample project and extend or wrap Core Audio API's.

Additionally (and tagged separately) there is a branch which has (some) fixes for issues where the Currently supplied Apple code won't work with clang/llvm.
    DESC
  s.homepage     = "https://github.com/thehtb/AppleCoreAudioUtilityClasses"
  s.license      = 'Apple Sample Code License'
  s.author       = '(c) 2013 Apple Inc. All Rights Reserved.'
  s.source       = { :git => "https://github.com/thehtb/AppleCoreAudioUtilityClasses.git", :tag => "#{s.version}" }
  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.7'

  puBase = 'CoreAudio/PublicUtility/'
  s.source_files         = puBase + '*.{h,cpp}'
  s.public_header_files  = puBase + '*.h'
  s.framework = 'Accelerate', 'CoreAudio'
end
