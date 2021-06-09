# coding: utf-8
=begin
MIT License

Copyright (c) [2016] [Markus Rudel]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
=end

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'photo_renamer/version'

Gem::Specification.new do |s|
  s.name = 'photo_renamer'
  s.version = PhotoRenamer::VERSION
  s.date = '2016-05-02'
  s.summary = "Photo Renamer"
  s.description = "A renamer for Mac OS X Photos master folder"
  s.authors = ["Markus Rudel"]
  s.email = 'markus.rudel@ruhr-uni-bochum.de'
  s.files = `git ls-files -z`.split("\x0")
  s.homepage =
      'http://rubygems.org/gems/photo_renamer'
  s.license = 'MIT'
  s.required_ruby_version = '>= 1.9.3'
  s.add_dependency 'thor'
  s.add_dependency 'exif'
  s.add_dependency 'rspec'
  s.add_dependency "bundler", ">= 2.2.10"
  s.add_development_dependency "bundler", "~> 1.6"
  s.add_development_dependency "rake"
  s.require_paths = ["lib"]
end
