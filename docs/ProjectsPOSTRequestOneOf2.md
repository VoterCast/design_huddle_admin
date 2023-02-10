# DesignHuddleAdmin::ProjectsPOSTRequestOneOf2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_title** | **String** |  | [optional] |
| **media_type** | **String** |  |  |
| **document_url** | **String** | Public or signed URL reference to a PDF file. |  |
| **brand_id** | **Integer** |  | [optional] |
| **brand_code** | **String** |  | [optional] |

## Example

```ruby
require 'design_huddle_admin'

instance = DesignHuddleAdmin::ProjectsPOSTRequestOneOf2.new(
  project_title: null,
  media_type: null,
  document_url: null,
  brand_id: null,
  brand_code: null
)
```

