require 'gitloc'
require 'minitest'

class GitlocTest < Minitest::Test
  def test_gitloc_raises_RepoDoesNotExisError_when_repo_does_not_exsist
    assert_raises { Gitloc.call"not-a-repo" }
  end
end
