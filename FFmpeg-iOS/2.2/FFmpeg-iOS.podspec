Pod::Spec.new do |s|
  s.name         = "FFmpeg-iOS"
  s.version      = "2.2"
  s.summary      = "FFmpeg static libraries compiled for iOS"
  s.homepage     = "https://github.com/chrisballinger/FFmpeg-iOS"
  
  s.license      = 'LGPLv2.1+'
  s.author       = { "Chris Ballinger" => "chris@chatsecure.org" }
  
  s.platform     = :ios

  s.source       = { :git => "https://github.com/chrisballinger/FFmpeg-iOS.git", :tag => "2.2", :submodules => true }

  s.default_subspec = 'precompiled'

  s.subspec 'precompiled' do |ss|
    ss.source_files        = 'ffmpeg-ios-static-libs/include/**/*.h'
    ss.public_header_files = 'ffmpeg-ios-static-libs/include/**/*.h'
    ss.header_mappings_dir = 'ffmpeg-ios-static-libs/include'
    ss.vendored_libraries  = 'ffmpeg-ios-static-libs/lib/*.a'
    ss.libraries = 'ssl', 'crypto', 'rtmp', 'avcodec', 'avdevice', 'avfilter', 'avformat', 'avutil', 'swresample', 'swscale'
  end

end
