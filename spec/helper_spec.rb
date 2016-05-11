require 'rspec'
require 'spec_helper'

describe 'PhotoRenamer::Helper' do

  describe '#hasImageFileExtension' do
    extensions = %w(cr2 jpg jpeg nef nrw dng)
    filename = 'DSC0001'

    it 'returns true regardless the case' do
      uppercaseExtensions = extensions.map { |extension| extension.upcase }
      uppercaseExtensions.each { |extension|
        expect(PhotoRenamer::Helper.hasImageFileExtension?("#{filename}.#{extension}")).to be(true)
      }
    end

    it 'returns false if extension is unknown' do
      unknownExtensions = %w(mov mp4 mp3 txt html)
      unknownExtensions.each { |extension|
        expect(PhotoRenamer::Helper.hasImageFileExtension?("#{filename}.#{extension}")).to be(false)
      }
    end
  end
end
