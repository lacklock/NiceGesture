Pod::Spec.new do |s|
  s.name         = "NiceGesture"
  s.version      = "0.9"
  s.summary      = "The best way to use UIGesture"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.homepage     = "https://github.com/lacklock/NiceGesture"
  s.author      = { 'lacklock' => 'lacklock@gmail.com'}
  s.platform     = :ios, '8.0'
  s.source       = { :git => "https://github.com/lacklock/NiceGesture.git", tag: "#{s.version}"}
  s.source_files = "NiceGesture/*.swift"
end