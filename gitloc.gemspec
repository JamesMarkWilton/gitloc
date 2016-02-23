Gem::Specification.new do |s|
  s.name        = 'gitloc-JamesMarkWilton'
  s.version     = '0.1.0'
  s.licenses    = ['MIT']
  s.summary     = "Example project -- gives lines-of-code information for a git repo"
  s.description = "Example project for CodePlatoon Coding Bootcamp, see https://github.com/JoshCheek/elective-building-a-gem -- gives lines-of-code information for a git repo."
  s.authors     = ["James Wilton"]
  s.email       = 'james.mark.wilton@gmail.com'
  s.files       = Dir["**/*"].select { |f| File.file? f }
  s.homepage    = 'https://github.com/JoshCheek/elective-building-a-gem'
	s.executables << 'gitloc'
end
