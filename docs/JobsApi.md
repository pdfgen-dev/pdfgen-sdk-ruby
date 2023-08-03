# Pdfgen::JobsApi

All URIs are relative to *https://api.pdfgen.dev*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**download_file**](JobsApi.md#download_file) | **GET** /v1/jobs/{id}/download | Download file |
| [**list_jobs**](JobsApi.md#list_jobs) | **GET** /v1/jobs | List all Jobs |


## download_file

> String download_file(id)

Download file

Download the file for the specified job

### Examples

```ruby
require 'time'
require 'pdfgen'
# setup authorization
Pdfgen.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = Pdfgen::JobsApi.new
id = 'id_example' # String | Job ID

begin
  # Download file
  result = api_instance.download_file(id)
  p result
rescue Pdfgen::ApiError => e
  puts "Error when calling JobsApi->download_file: #{e}"
end
```

#### Using the download_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> download_file_with_http_info(id)

```ruby
begin
  # Download file
  data, status_code, headers = api_instance.download_file_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue Pdfgen::ApiError => e
  puts "Error when calling JobsApi->download_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Job ID |  |

### Return type

**String**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_jobs

> <ListJobsResponse> list_jobs

List all Jobs

Returns all jobs

### Examples

```ruby
require 'time'
require 'pdfgen'
# setup authorization
Pdfgen.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = Pdfgen::JobsApi.new

begin
  # List all Jobs
  result = api_instance.list_jobs
  p result
rescue Pdfgen::ApiError => e
  puts "Error when calling JobsApi->list_jobs: #{e}"
end
```

#### Using the list_jobs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListJobsResponse>, Integer, Hash)> list_jobs_with_http_info

```ruby
begin
  # List all Jobs
  data, status_code, headers = api_instance.list_jobs_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListJobsResponse>
rescue Pdfgen::ApiError => e
  puts "Error when calling JobsApi->list_jobs_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListJobsResponse**](ListJobsResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

