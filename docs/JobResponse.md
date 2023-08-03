# Pdfgen::JobResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **String** |  | [optional] |
| **duration** | **Integer** |  | [optional] |
| **file_name** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **template** | [**TemplateResponse**](TemplateResponse.md) |  | [optional] |
| **template_id** | **String** |  | [optional] |
| **updated_at** | **String** |  | [optional] |

## Example

```ruby
require 'pdfgen'

instance = Pdfgen::JobResponse.new(
  created_at: null,
  duration: null,
  file_name: null,
  id: null,
  status: null,
  template: null,
  template_id: null,
  updated_at: null
)
```

