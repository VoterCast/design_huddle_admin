# DesignHuddleAdmin::TemplatesTemplateIDPUTRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **template_title** | **String** |  |  |
| **template_status** | **String** |  | [optional][default to &#39;active&#39;] |
| **brand_id** | **Float** |  | [optional] |
| **brand_code** | **String** |  | [optional] |
| **primary_template_category_item_id** | **Integer** |  | [optional] |

## Example

```ruby
require 'design_huddle_admin'

instance = DesignHuddleAdmin::TemplatesTemplateIDPUTRequest.new(
  project_id: null,
  template_title: null,
  template_status: null,
  brand_id: null,
  brand_code: null,
  primary_template_category_item_id: null
)
```

