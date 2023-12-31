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

# Unit tests for OpenapiClient::JobsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'JobsApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::JobsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of JobsApi' do
    it 'should create an instance of JobsApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::JobsApi)
    end
  end

  # unit tests for download_file
  # Download file
  # Download the file for the specified job
  # @param id Job ID
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'download_file test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_jobs
  # List all Jobs
  # Returns all jobs
  # @param [Hash] opts the optional parameters
  # @return [ListJobsResponse]
  describe 'list_jobs test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
