# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.add_dependency 'colorize'
  spec.add_dependency 'parseconfig'
  spec.add_development_dependency 'bundler', '~> 1.0'
  spec.authors = ['Jonas Schwartz']
  spec.description = %q{Simple ruby logger}
  spec.email = ['josc@nodes.dk']
  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.start_with?('test/') }
  spec.homepage = 'http://github.com/nodes-cloud/nclogger'
  spec.name = 'akira'
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 1.9.3'
  spec.summary = spec.description
  spec.version = `cat ./.semver`
end
