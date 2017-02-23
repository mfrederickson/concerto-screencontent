$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'concerto_screencontents/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'concerto_screencontents'
  s.version     = ConcertoScreencontents::VERSION
  s.authors     = ['Marvin Frederickson']
  s.email       = ['marvin.frederickson@gmail.com']
  s.homepage    = ''
  s.summary     = 'Display active content assigned to current screen'
  s.description = 'Display active content assigned to current screen'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails'

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rubocop'
end
