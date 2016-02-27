$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'gitloc/version'

Gem::Specification.new do |s|
  s.name        = 'gitloc-JamesMarkWilton'
  s.version     = Gitloc::VERSION
  s.licenses    = ['MIT']
  s.summary     = "Example project -- gives lines-of-code information for a git repo"
  s.description = "Example project for CodePlatoon Coding Bootcamp, see https://github.com/JoshCheek/elective-building-a-gem -- gives lines-of-code information for a git repo."
  s.authors     = ["James Wilton"]
  s.email       = 'james.mark.wilton@gmail.com'
  s.files       = Dir["**/*"].select { |f| File.file? f } - Dir['*.gem']
  s.homepage    = 'https://github.com/JoshCheek/elective-building-a-gem'
	s.executables << 'gitloc'
  s.add_development_dependency 'mrspec', '~> 0.0'
  s.add_development_dependency 'rspec', '~> 3.0'
  s.add_development_dependency 'pry'
end
