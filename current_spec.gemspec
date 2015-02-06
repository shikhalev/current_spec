# encoding: utf-8

require 'set_version'
require_relative 'lib/current_spec'

Gem::Specification.new do |g|

  g.name = File.basename __FILE__, ".gemspec"
  g.summary = 'Get gemspec object for current file'
  g.author = 'Ivan Shikhalev'
  g.email = 'shikhalev@gmail.com'
  g.homepage = 'https://github.com/shikhalev/current_spec'
  g.description = g.summary + '.'
  g.license = 'GNU LGPLv3'

  g.files = [ 'lib/current_spec.rb', 'README.md', 'LICENSE' ]

  g.set_version(*CURRENT_SPEC_VERSION, git: true)

  g.require_path = 'lib'
  g.required_ruby_version = '~> 2.0'

end


