require 'tmpdir'          # => true
require 'open3'           # => true
require 'gitloc/errors'   # ~> LoadError: cannot load such file -- gitloc/errors
require 'gitloc/version'

class Gitloc
  def self.call(repo)
    Dir.mktmpdir { |dir|
      Dir.chdir dir
      out, err, status = Open3.capture3 'git', 'clone', repo, 'cloned'
      raise RepoDoesNotExistError, repo unless status.success?
      Dir.chdir 'cloned'
      Dir['**/*'].reject { |name| File.directory? name }
                 .map    { |name| [name, File.read(name) ] }
    }

    LineCounts.call(names_to_bodies)
  end
end

# ~> LoadError
# ~> cannot load such file -- gitloc/errors
# ~>
# ~> /Users/jameswilton/.rubies/ruby-2.2.2/lib/ruby/2.2.0/rubygems/core_ext/kernel_require.rb:54:in `require'
# ~> /Users/jameswilton/.rubies/ruby-2.2.2/lib/ruby/2.2.0/rubygems/core_ext/kernel_require.rb:54:in `require'
# ~> /var/folders/sk/3yzbln0d24s841ky8rrr250c0000gp/T/seeing_is_believing_temp_dir20160229-5381-iv7sld/program.rb:3:in `<main>'
