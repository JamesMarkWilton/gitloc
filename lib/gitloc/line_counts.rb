class Gitloc
  module LineCounts
    def self.call(names_to_bodies)
      names_to_bodies.map do |names, body|
        gitloc = body.lines.count { |line| line !~ /^\s*$/ }
        [name, gitloc]
      end
    end
  end
end
