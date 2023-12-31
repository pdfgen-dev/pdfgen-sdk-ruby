=begin
#PDFGen API

#The PDFGen API for HTML to PDF generation.

The version of the OpenAPI document: 1.0
Contact: support@pdfgen.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'cgi'

module PdfgenClient
  class TemplatesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Template
    # Creates a new template for authenticated account and returns the created template
    # @param req [CreateTemplateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [TemplateResponse]
    def create_template(req, opts = {})
      data, _status_code, _headers = create_template_with_http_info(req, opts)
      data
    end

    # Create Template
    # Creates a new template for authenticated account and returns the created template
    # @param req [CreateTemplateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TemplateResponse, Integer, Hash)>] TemplateResponse data, response status code and response headers
    def create_template_with_http_info(req, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplatesApi.create_template ...'
      end
      # verify the required parameter 'req' is set
      if @api_client.config.client_side_validation && req.nil?
        fail ArgumentError, "Missing the required parameter 'req' when calling TemplatesApi.create_template"
      end
      # resource path
      local_var_path = '/v1/templates'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(req)

      # return_type
      return_type = opts[:debug_return_type] || 'TemplateResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"TemplatesApi.create_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TemplatesApi#create_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Template
    # Deletes the template based on the provided ID
    # @param id [String] Template ID
    # @param [Hash] opts the optional parameters
    # @return [String]
    def delete_template(id, opts = {})
      data, _status_code, _headers = delete_template_with_http_info(id, opts)
      data
    end

    # Delete Template
    # Deletes the template based on the provided ID
    # @param id [String] Template ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def delete_template_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplatesApi.delete_template ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TemplatesApi.delete_template"
      end
      # resource path
      local_var_path = '/v1/templates/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'String'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"TemplatesApi.delete_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TemplatesApi#delete_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generate PDF from Template
    # Generates a PDF based on given parameters and the template for provided ID
    # @param id [String] Template ID
    # @param variables [Object] Variables used for the template
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def generate_pdf_from_template(id, variables, opts = {})
      data, _status_code, _headers = generate_pdf_from_template_with_http_info(id, variables, opts)
      data
    end

    # Generate PDF from Template
    # Generates a PDF based on given parameters and the template for provided ID
    # @param id [String] Template ID
    # @param variables [Object] Variables used for the template
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def generate_pdf_from_template_with_http_info(id, variables, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplatesApi.generate_pdf_from_template ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TemplatesApi.generate_pdf_from_template"
      end
      # verify the required parameter 'variables' is set
      if @api_client.config.client_side_validation && variables.nil?
        fail ArgumentError, "Missing the required parameter 'variables' when calling TemplatesApi.generate_pdf_from_template"
      end
      # resource path
      local_var_path = '/v1/templates/{id}/pdf'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(variables)

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"TemplatesApi.generate_pdf_from_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TemplatesApi#generate_pdf_from_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Templates
    # Returns a single template based on specified ID
    # @param id [String] Template ID
    # @param [Hash] opts the optional parameters
    # @return [TemplateResponse]
    def get_template(id, opts = {})
      data, _status_code, _headers = get_template_with_http_info(id, opts)
      data
    end

    # Get Templates
    # Returns a single template based on specified ID
    # @param id [String] Template ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(TemplateResponse, Integer, Hash)>] TemplateResponse data, response status code and response headers
    def get_template_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplatesApi.get_template ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TemplatesApi.get_template"
      end
      # resource path
      local_var_path = '/v1/templates/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'TemplateResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"TemplatesApi.get_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TemplatesApi#get_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all Templates
    # Returns all available templates
    # @param [Hash] opts the optional parameters
    # @return [ListTemplatesResponse]
    def list_templates(opts = {})
      data, _status_code, _headers = list_templates_with_http_info(opts)
      data
    end

    # List all Templates
    # Returns all available templates
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListTemplatesResponse, Integer, Hash)>] ListTemplatesResponse data, response status code and response headers
    def list_templates_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplatesApi.list_templates ...'
      end
      # resource path
      local_var_path = '/v1/templates'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListTemplatesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"TemplatesApi.list_templates",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TemplatesApi#list_templates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Previews PDF with given variables
    # Previews a PDF with given variables
    # @param id [String] Template ID or alias
    # @param variables [Object] Variables used for the template
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def preview_template(id, variables, opts = {})
      data, _status_code, _headers = preview_template_with_http_info(id, variables, opts)
      data
    end

    # Previews PDF with given variables
    # Previews a PDF with given variables
    # @param id [String] Template ID or alias
    # @param variables [Object] Variables used for the template
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def preview_template_with_http_info(id, variables, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplatesApi.preview_template ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TemplatesApi.preview_template"
      end
      # verify the required parameter 'variables' is set
      if @api_client.config.client_side_validation && variables.nil?
        fail ArgumentError, "Missing the required parameter 'variables' when calling TemplatesApi.preview_template"
      end
      # resource path
      local_var_path = '/v1/templates/{id}/preview'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(variables)

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"TemplatesApi.preview_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TemplatesApi#preview_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Template
    # Updates a template for authenticated account and returns the updated template
    # @param id [String] Template ID
    # @param req [UpdateTemplateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [TemplateResponse]
    def update_template(id, req, opts = {})
      data, _status_code, _headers = update_template_with_http_info(id, req, opts)
      data
    end

    # Update Template
    # Updates a template for authenticated account and returns the updated template
    # @param id [String] Template ID
    # @param req [UpdateTemplateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TemplateResponse, Integer, Hash)>] TemplateResponse data, response status code and response headers
    def update_template_with_http_info(id, req, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplatesApi.update_template ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TemplatesApi.update_template"
      end
      # verify the required parameter 'req' is set
      if @api_client.config.client_side_validation && req.nil?
        fail ArgumentError, "Missing the required parameter 'req' when calling TemplatesApi.update_template"
      end
      # resource path
      local_var_path = '/v1/templates/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(req)

      # return_type
      return_type = opts[:debug_return_type] || 'TemplateResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKeyAuth']

      new_options = opts.merge(
        :operation => :"TemplatesApi.update_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TemplatesApi#update_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
