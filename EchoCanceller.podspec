Pod::Spec.new do |s|
  s.name             = 'EchoCanceller'
  s.version          = '0.1.0'
  s.summary          = 'WebRTC derived echo canceller.'
  s.description      = 'removes echoes from audio streams'
  s.homepage         = 'https://github.com/cloudapp/mac-echo-canceller/'
  s.license          = 'MIT'
  s.author           = { 'Gordon Childs' => 'gordon.childs@gmail.com' }
  s.platform         = :macos, '10.15'
  s.source           = { :git => git@github.com:cloudapp/mac-echo-canceller.git }
  s.source_files = 'echo_canceller/echo_canceller.h'
  s.vendored_libraries = 'echo_canceller/libecho_canceller.a'
end

