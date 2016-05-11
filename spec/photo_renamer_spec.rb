require 'rspec'
require 'spec_helper'

describe 'Photo Renamer Thor Application' do

  it 'executes without error' do
    PhotoRenamer::Cli::Application
  end
end