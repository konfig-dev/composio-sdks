# -*- encoding: utf-8 -*-

=begin
#Composio API Collection

#Composio SDK: Equip your agent with high-quality tools and build your real-world usecase

The version of the OpenAPI document: 1.0.0
Contact: hello@composio.dev
=end

$:.push File.expand_path("../lib", __FILE__)
require "composio/version"

Gem::Specification.new do |s|
  s.name        = "composio"
  s.version     = Composio::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["soham"]
  s.email       = ["hello@composio.dev"]
  s.homepage    = "https://composio.dev"
  s.summary     = "Composio API Collection Ruby Gem"
  s.description = "Composio SDK: Equip your agent with high-quality tools and build your real-world usecase"
  s.license     = "MIT"
  s.required_ruby_version = ">= 2.4"
  s.metadata = {
    "documentation_uri" => "https://github.com/konfig-dev/composio-sdks/tree/main/ruby",
    "source_code_uri"   => "https://github.com/konfig-dev/composio-sdks/tree/main/ruby",
  }

  s.add_runtime_dependency 'faraday', '>= 1.0.1', '< 3.0'
  s.add_runtime_dependency 'faraday-multipart', '~> 1.0', '>= 1.0.4'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
