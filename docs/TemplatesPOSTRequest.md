# DesignHuddleAdmin::TemplatesPOSTRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_id** | **String** |  |  |
| **template_code** | **String** |  | [optional] |
| **template_title** | **String** |  |  |
| **template_status** | **String** |  | [optional][default to &#39;active&#39;] |
| **primary_template_category_item_id** | **Integer** |  | [optional] |
| **brand_id** | **Integer** |  | [optional] |
| **brand_code** | **String** |  | [optional] |
| **user_groups_match_type** | **String** |  | [optional] |
| **user_group_ids** | **Array&lt;Integer&gt;** |  | [optional] |
| **user_group_codes** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'design_huddle_admin'

instance = DesignHuddleAdmin::TemplatesPOSTRequest.new(
  project_id: null,
  template_code: null,
  template_title: null,
  template_status: null,
  primary_template_category_item_id: null,
  brand_id: null,
  brand_code: null,
  user_groups_match_type: null,
  user_group_ids: null,
  user_group_codes: null
)
```

