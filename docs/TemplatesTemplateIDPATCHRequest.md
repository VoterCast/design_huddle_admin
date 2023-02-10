# DesignHuddleAdmin::TemplatesTemplateIDPATCHRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_code** | **String** |  | [optional] |
| **template_title** | **String** |  | [optional] |
| **template_status** | **String** |  | [optional] |
| **brand_id** | **Float** |  | [optional] |
| **brand_code** | **String** |  | [optional] |
| **user_groups_match_type** | **String** |  | [optional] |
| **user_group_ids** | **Array&lt;Integer&gt;** |  | [optional] |
| **user_group_codes** | **Array&lt;String&gt;** |  | [optional] |
| **replace_user_groups** | **Boolean** |  | [optional][default to false] |
| **primary_template_category_item_id** | **Integer** |  | [optional] |

## Example

```ruby
require 'design_huddle_admin'

instance = DesignHuddleAdmin::TemplatesTemplateIDPATCHRequest.new(
  template_code: null,
  template_title: null,
  template_status: null,
  brand_id: null,
  brand_code: null,
  user_groups_match_type: null,
  user_group_ids: null,
  user_group_codes: null,
  replace_user_groups: null,
  primary_template_category_item_id: null
)
```

