# OpenapiClient::TemplatesApi

All URIs are relative to *https://api.pdfgen.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_template**](TemplatesApi.md#create_template) | **POST** /v1/templates | Create Template |
| [**delete_template**](TemplatesApi.md#delete_template) | **DELETE** /v1/templates/{id} | Delete Template |
| [**generate_pdf_from_template**](TemplatesApi.md#generate_pdf_from_template) | **POST** /v1/templates/{id}/pdf | Generate PDF from Template |
| [**get_template**](TemplatesApi.md#get_template) | **GET** /v1/templates/{id} | Get Templates |
| [**list_templates**](TemplatesApi.md#list_templates) | **GET** /v1/templates | List all Templates |
| [**preview_template**](TemplatesApi.md#preview_template) | **POST** /v1/templates/{id}/preview | Previews PDF with given variables |
| [**update_template**](TemplatesApi.md#update_template) | **PUT** /v1/templates/{id} | Update Template |


## create_template

> <TemplateResponse> create_template(req)

Create Template

Creates a new template for authenticated account and returns the created template

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = OpenapiClient::TemplatesApi.new
req = OpenapiClient::CreateTemplateRequest.new({_alias: '_alias_example', html: 'html_example', name: 'name_example'}) # CreateTemplateRequest | 

begin
  # Create Template
  result = api_instance.create_template(req)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->create_template: #{e}"
end
```

#### Using the create_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TemplateResponse>, Integer, Hash)> create_template_with_http_info(req)

```ruby
begin
  # Create Template
  data, status_code, headers = api_instance.create_template_with_http_info(req)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TemplateResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->create_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **req** | [**CreateTemplateRequest**](CreateTemplateRequest.md) |  |  |

### Return type

[**TemplateResponse**](TemplateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_template

> String delete_template(id)

Delete Template

Deletes the template based on the provided ID

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = OpenapiClient::TemplatesApi.new
id = 'id_example' # String | Template ID

begin
  # Delete Template
  result = api_instance.delete_template(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->delete_template: #{e}"
end
```

#### Using the delete_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> delete_template_with_http_info(id)

```ruby
begin
  # Delete Template
  data, status_code, headers = api_instance.delete_template_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->delete_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Template ID |  |

### Return type

**String**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## generate_pdf_from_template

> Object generate_pdf_from_template(id, variables)

Generate PDF from Template

Generates a PDF based on given parameters and the template for provided ID

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = OpenapiClient::TemplatesApi.new
id = 'id_example' # String | Template ID
variables = { ... } # Object | Variables used for the template

begin
  # Generate PDF from Template
  result = api_instance.generate_pdf_from_template(id, variables)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->generate_pdf_from_template: #{e}"
end
```

#### Using the generate_pdf_from_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> generate_pdf_from_template_with_http_info(id, variables)

```ruby
begin
  # Generate PDF from Template
  data, status_code, headers = api_instance.generate_pdf_from_template_with_http_info(id, variables)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->generate_pdf_from_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Template ID |  |
| **variables** | **Object** | Variables used for the template |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_template

> <TemplateResponse> get_template(id)

Get Templates

Returns a single template based on specified ID

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = OpenapiClient::TemplatesApi.new
id = 'id_example' # String | Template ID

begin
  # Get Templates
  result = api_instance.get_template(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->get_template: #{e}"
end
```

#### Using the get_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TemplateResponse>, Integer, Hash)> get_template_with_http_info(id)

```ruby
begin
  # Get Templates
  data, status_code, headers = api_instance.get_template_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TemplateResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->get_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Template ID |  |

### Return type

[**TemplateResponse**](TemplateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_templates

> <ListTemplatesResponse> list_templates

List all Templates

Returns all available templates

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = OpenapiClient::TemplatesApi.new

begin
  # List all Templates
  result = api_instance.list_templates
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->list_templates: #{e}"
end
```

#### Using the list_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTemplatesResponse>, Integer, Hash)> list_templates_with_http_info

```ruby
begin
  # List all Templates
  data, status_code, headers = api_instance.list_templates_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTemplatesResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->list_templates_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListTemplatesResponse**](ListTemplatesResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## preview_template

> Object preview_template(id, variables)

Previews PDF with given variables

Previews a PDF with given variables

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = OpenapiClient::TemplatesApi.new
id = 'id_example' # String | Template ID or alias
variables = { ... } # Object | Variables used for the template

begin
  # Previews PDF with given variables
  result = api_instance.preview_template(id, variables)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->preview_template: #{e}"
end
```

#### Using the preview_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> preview_template_with_http_info(id, variables)

```ruby
begin
  # Previews PDF with given variables
  data, status_code, headers = api_instance.preview_template_with_http_info(id, variables)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->preview_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Template ID or alias |  |
| **variables** | **Object** | Variables used for the template |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_template

> <TemplateResponse> update_template(id, req)

Update Template

Updates a template for authenticated account and returns the updated template

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = OpenapiClient::TemplatesApi.new
id = 'id_example' # String | Template ID
req = OpenapiClient::UpdateTemplateRequest.new # UpdateTemplateRequest | 

begin
  # Update Template
  result = api_instance.update_template(id, req)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->update_template: #{e}"
end
```

#### Using the update_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TemplateResponse>, Integer, Hash)> update_template_with_http_info(id, req)

```ruby
begin
  # Update Template
  data, status_code, headers = api_instance.update_template_with_http_info(id, req)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TemplateResponse>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TemplatesApi->update_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Template ID |  |
| **req** | [**UpdateTemplateRequest**](UpdateTemplateRequest.md) |  |  |

### Return type

[**TemplateResponse**](TemplateResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

