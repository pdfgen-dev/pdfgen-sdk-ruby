=begin
#PDFGen API

#The PDFGen API for HTML to PDF generation.

The version of the OpenAPI document: 1.0
Contact: support@pdfgen.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::PdfApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PdfApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::PdfApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PdfApi' do
    it 'should create an instance of PdfApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::PdfApi)
    end
  end

  # unit tests for generate_pdf
  # Generate PDF
  # Generates a PDF based on given HTML and parameters
  # @param req HTML and variables to be converted to PDF
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'generate_pdf test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
