# OpenapiClient::PdfApi

All URIs are relative to *https://api.pdfgen.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**generate_pdf**](PdfApi.md#generate_pdf) | **POST** /v1/pdf | Generate PDF |


## generate_pdf

> Object generate_pdf(req)

Generate PDF

Generates a PDF based on given HTML and parameters

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

api_instance = OpenapiClient::PdfApi.new
req = OpenapiClient::GeneratePDFRequest.new({html: 'html_example'}) # GeneratePDFRequest | HTML and variables to be converted to PDF

begin
  # Generate PDF
  result = api_instance.generate_pdf(req)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PdfApi->generate_pdf: #{e}"
end
```

#### Using the generate_pdf_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> generate_pdf_with_http_info(req)

```ruby
begin
  # Generate PDF
  data, status_code, headers = api_instance.generate_pdf_with_http_info(req)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling PdfApi->generate_pdf_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **req** | [**GeneratePDFRequest**](GeneratePDFRequest.md) | HTML and variables to be converted to PDF |  |

### Return type

**Object**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

