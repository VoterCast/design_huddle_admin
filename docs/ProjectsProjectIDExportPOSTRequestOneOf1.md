# DesignHuddleAdmin::ProjectsProjectIDExportPOSTRequestOneOf1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **format** | **String** |  |  |
| **filename** | **String** |  | [optional] |
| **page_id** | **String** |  | [optional] |
| **page_ids** | **Array&lt;String&gt;** |  | [optional] |
| **dpi** | **Integer** | 300 by default for normal sizes, 150 for large format. | [optional] |
| **bleed** | [**ProjectsProjectIDExportPOSTRequestOneOf1Bleed**](ProjectsProjectIDExportPOSTRequestOneOf1Bleed.md) |  | [optional] |
| **notification_url** | **String** |  | [optional] |

## Example

```ruby
require 'design_huddle_admin'

instance = DesignHuddleAdmin::ProjectsProjectIDExportPOSTRequestOneOf1.new(
  format: null,
  filename: null,
  page_id: null,
  page_ids: null,
  dpi: null,
  bleed: null,
  notification_url: null
)
```

