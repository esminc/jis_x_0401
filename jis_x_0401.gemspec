# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "jis_x_0401/version"

Gem::Specification.new do |spec|
  spec.name          = "jis_x_0401"
  spec.version       = JisX0401::VERSION
  spec.authors       = ["takkanm"]
  spec.email         = ["takkanm@gmail.com"]

  spec.summary       = %q{Library for JISX401}
  spec.description   = %q{Library for JISX401}
  spec.homepage      = "https://github.com/esminc/jis_x_0401"
  spec.license       = "MIT"

  spec.metadata = {
    "homepage_uri" => "https://github.com/esminc/jis_x_0401",
    "source_code_uri" => "https://github.com/esminc/jis_x_0401",
    "bug_tracker_uri" => "https://github.com/esminc/jis_x_0401/issues",
    "rubygems_mfa_required" => "true"
  }

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
