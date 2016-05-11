require 'thor'
require 'exif'

module PhotoRenamer
  module Cli
    class Application < Thor

      desc "rename PATH", "rename files in given PATH"
      def rename(path)
        puts "hello world from #{path}!"
        getFileInPath(path)
      end

      # get the first picture in path for analysis
      def getFileInPath(path)
        # get file list in directory
        Dir["#{path}/*"].each do |filename|
          next if File.directory? filename
          next if !hasImageFileExtension?(filename)
          puts getExifCreatedDate(getFile(filename))
        end
        # filter for image file extensions
      end

      def getFile(filename)
        begin
          file = File.new(filename, "r")
        rescue => err
          puts "Exception: #{err}"
          err
        end
      end

      # checks only for the file extension, if it cannot be read it will be skipped later on
      def hasImageFileExtension?(file)
        extensions = %w(cr2 jpg jpeg nef nrw dng)
        extensions.each { |extension|
          if file.include?(extension)
            return true
          end
        }
        return false
      end

      # get the created date from the exif information in the picture
      def getExifCreatedDate(file)
        data = Exif::Data.new(file.path)
        data.date_time
      end
    end
  end

end
