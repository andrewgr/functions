lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "functions/version"

Gem::Specification.new do |spec|
  spec.name          = "functions"
  spec.version       = Functions::VERSION
  spec.authors       = ["Andrei Gridnev"]
  spec.email         = ["andrew.gridnev@gmail.com"]
  spec.homepage      = "https://example.com"
  spec.summary       = %q{A coding test}
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(spec)/})
  end
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.7"
end
