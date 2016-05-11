require 'thor'
require 'exif'
require_relative 'helper'

module PhotoRenamer
  module Cli
    class Application < Thor
      desc "rename PATH", "rename files in given PATH"
      def rename(path)
        puts "hello world from #{path}!"
        Helper.getFileInPath(path)
      end
    end
  end

end
