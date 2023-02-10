# DesignHuddleAdmin::ProjectsPOSTRequestOneOf4

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_title** | **String** |  | [optional] |
| **media_type** | **String** |  |  |
| **background_color** | **String** |  |  |
| **dimensions** | [**ProjectsPOSTRequestOneOf3Dimensions**](ProjectsPOSTRequestOneOf3Dimensions.md) |  |  |
| **brand_id** | **Integer** |  | [optional] |
| **brand_code** | **String** |  | [optional] |

## Example

```ruby
require 'design_huddle_admin'

instance = DesignHuddleAdmin::ProjectsPOSTRequestOneOf4.new(
  project_title: null,
  media_type: null,
  background_color: null,
  dimensions: null,
  brand_id: null,
  brand_code: null
)
```

