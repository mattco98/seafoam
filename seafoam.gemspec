require_relative 'lib/seafoam/version'

Gem::Specification.new do |spec|
  spec.name     = 'seafoam'
  spec.version  = Seafoam::VERSION
  spec.summary  = 'A tool for working with compiler graphs'
  spec.authors  = ['Chris Seaton']
  spec.homepage = 'https://github.com/Shopify/seafoam'
  spec.license = 'MIT'

  spec.files = `git ls-files bin lib`.split("\n")
  spec.bindir = 'bin'
  spec.executables = %w[seafoam bgv2json bgv2isabelle cfg2asm]

  spec.required_ruby_version = '>= 2.5.9'

  spec.add_dependency 'crabstone', '~> 4.0'

  spec.add_development_dependency 'benchmark-ips', '~> 2.7'
  spec.add_development_dependency 'rake', '~> 13.0.6'
  spec.add_development_dependency 'rspec', '~> 3.8'
  spec.add_development_dependency 'rubocop', '~> 0.74'
end
