
Pod::Spec.new do |s|
    s.name             = 'DLBase'
    s.version          = '0.1.2'
    s.summary          = 'DL基础类库'
    s.author           = { 'dlilang' => 'dlilang@126.com' }
    s.homepage         = 'https://github.com/dlilang/DLBase'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.source           = { :git => 'https://github.com/dlilang/DLBase.git', :tag => s.version.to_s }

    
    s.ios.deployment_target = '7.0'
    s.source_files = 'DLBase/Classes/**/*'
end