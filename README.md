# current_spec

Get gemspec object for current file.

* `Gem::current_spec` — return a `Gem::Specification` object which contains
  current source file. `nil` if not found.
* `Gem::current_spec_version` - return a version string of this specification
  or `nil` if not found.
