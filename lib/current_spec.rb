# encoding: utf-8

require 'rubygems'

CURRENT_SPEC_VERSION = [0, 1]

module Gem

  class << self

    def current_spec
      location = caller_locations[1]
      if location
        path = location.path
        Gem::Specification.find do |spec|
          File.fnmatch File.join(spec.full_gem_path, '*'), path
        end
      else
        nil
      end
    end

    def current_spec_version
      spec = current_spec
      if spec
        spec.version
      else
        nil
      end
    end

  end

end