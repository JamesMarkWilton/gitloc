require 'open3' # we'll use this to invoke the binary
require 'minitest'

class AcceptanceTest < Minitest::Test
  def test_takes_a_git_repository_and_tells_me_how_many_lines_of_code_are_in_each_file
    binpath = File.expand_path '../../bin/gitloc', __FILE__
    repopath = File.expand_path '../..', __FILE__
    stdout, stderr, exitstatus = Open3.capture3(binpath, repopath)
    require "pry"
    binding.pry

    assert_match /2.*?test\/fixtures\/2loc/, stdout
    assert_equal "", stderr
  end
end
