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

# Unit tests for OpenapiClient::TemplatesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TemplatesApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::TemplatesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TemplatesApi' do
    it 'should create an instance of TemplatesApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::TemplatesApi)
    end
  end

  # unit tests for create_template
  # Create Template
  # Creates a new template for authenticated account and returns the created template
  # @param req 
  # @param [Hash] opts the optional parameters
  # @return [TemplateResponse]
  describe 'create_template test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_template
  # Delete Template
  # Deletes the template based on the provided ID
  # @param id Template ID
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'delete_template test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for generate_pdf_from_template
  # Generate PDF from Template
  # Generates a PDF based on given parameters and the template for provided ID
  # @param id Template ID
  # @param variables Variables used for the template
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'generate_pdf_from_template test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_template
  # Get Templates
  # Returns a single template based on specified ID
  # @param id Template ID
  # @param [Hash] opts the optional parameters
  # @return [TemplateResponse]
  describe 'get_template test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_templates
  # List all Templates
  # Returns all available templates
  # @param [Hash] opts the optional parameters
  # @return [ListTemplatesResponse]
  describe 'list_templates test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for preview_template
  # Previews PDF with given variables
  # Previews a PDF with given variables
  # @param id Template ID or alias
  # @param variables Variables used for the template
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'preview_template test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_template
  # Update Template
  # Updates a template for authenticated account and returns the updated template
  # @param id Template ID
  # @param req 
  # @param [Hash] opts the optional parameters
  # @return [TemplateResponse]
  describe 'update_template test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
