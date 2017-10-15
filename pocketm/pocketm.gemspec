# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "pocketm/version"

Gem::Specification.new do |spec|
  spec.name          = "pocketm"
  spec.version       = Pocketm::VERSION
  spec.authors       = ["staymetal"]
  spec.email         = ["surya.poojary@yandex.com"]

  spec.summary       = %q{ A expense manager for rubyists.}
  spec.description   = %q{pocketm ruby gem calculates your expenses by asking for inputs and writes them to a file for your ease}
  spec.homepage      = "https://github.com/staymetal/pocketm.git"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
