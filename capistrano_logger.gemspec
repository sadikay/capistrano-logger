$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'capistrano/capistrano_logger/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'capistrano_logger'
  s.version     = Capistrano::CapistranoLogger::VERSION
  s.authors     = ['Sadik Ay']
  s.email       = ['sadikay91@gmail.com']
  s.homepage    = 'https://github.com/sadikay/capistrano-logger'
  s.summary     = 'Monitorize server logs in local'
  s.description = 'Monitorize server logs in local'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']
  s.test_files = Dir['test/**/*']

  s.add_development_dependency 'bundler', '~> 1.6'
  s.add_development_dependency 'rake'

  s.add_dependency 'capistrano', '>= 3.0'
  s.add_dependency 'capistrano-rails'
end
