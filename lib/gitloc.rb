require 'tmpdir'
require 'open3'
require 'gitloc/version'

class Gitloc
  def self.call(argv, outstream, errstream)
    repo = ARGV.first

    Dir.mktmpdir { |dir|
      Dir.chdir dir
      out, err, status = Open3.capture3 'git', 'clone', repo, 'cloned'
      unless status.success?
        $stderr.puts out, err
        exit "Failed somehow >.<"
      end
      Dir.chdir 'cloned'
      files = Dir['**/*'].reject { |name| File.directory? name }
      files.each do |filename|
        gitloc = File.readlines(filename).count { |line| line !~ /^\s*$/ }
        puts "#{gitloc}\t#{filename}"
      end
    }
  end
end
