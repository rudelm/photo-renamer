require "thor"

module PhotoRenamer
  class Renamer < Thor
    desc "rename", "rename files in given folder"
    def rename
      puts 'hello world!'
    end
  end

  Renamer.start
end
