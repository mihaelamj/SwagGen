Pod::Spec.new do |s|
    s.source_files = '*.swift'
    s.name = 'API'
    s.authors = 'Yonas Kolb'
    s.summary = 'Home to various finance-related functions'
    s.version = '1.10.0'
    s.homepage = 'https://github.com/yonaskolb/SwagGen'
    s.source = { :git => 'git@github.com:https://github.com/yonaskolb/SwagGen.git' }
    s.ios.deployment_target = '9.0'
    s.tvos.deployment_target = '9.0'
    s.osx.deployment_target = '10.9'
    s.source_files = 'Sources/**/*.swift'
end
