require 'thor'

module PhotoRenamer
  module Cli
    class Application < Thor

      desc "rename PATH", "rename files in given PATH"
      def rename(path)
        puts "hello world from #{path}!"
      end
    end
  end

end
