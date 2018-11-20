Pod::Spec.new do |s|
  s.name             = 'CornerManager'
  s.version          = '1.0.0'
  s.summary          = '切圆角功能'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/lypcliuli/CornerRadiusDemo'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lypcliuli' => 'lypcliuli@163.com' }
  s.source           = { :git => 'https://github.com/lypcliuli/CornerRadiusDemo.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'CornerManager/**/*'

end