
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "nagel_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "nagel_view_tool"
  spec.version       = NagelViewTool::VERSION
  spec.authors       = ["Joe Nagel"]
  spec.email         = ["jnagel88@gmail.com"]

  spec.summary       = %q{Various view specific methods for applications I use.}
  spec.description   = %q{Provides generated HTML data for Rails Applications.}
  spec.homepage      = "http://www.joenagel.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
