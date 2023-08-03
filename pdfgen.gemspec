# -*- encoding: utf-8 -*-

=begin
#PDFGen API

#The PDFGen API for HTML to PDF generation.

The version of the OpenAPI document: 1.0
Contact: support@pdfgen.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

$:.push File.expand_path("../lib", __FILE__)
require "pdfgen/version"

Gem::Specification.new do |s|
  s.name        = "pdfgen"
  s.version     = Pdfgen::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["OpenAPI-Generator"]
  s.email       = ["support@pdfgen.dev"]
  s.homepage    = "https://openapi-generator.tech"
  s.summary     = "PDFGen API Ruby Gem"
  s.description = "The PDFGen API for HTML to PDF generation."
  s.license     = "Unlicense"
  s.required_ruby_version = ">= 2.7"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
