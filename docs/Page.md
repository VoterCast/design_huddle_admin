# DesignHuddleAdmin::Page

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_id** | **String** |  |  |
| **page_name** | **String** |  | [optional] |
| **page_number** | **Integer** |  |  |
| **scene_slides** | [**Array&lt;PageSceneSlidesInner&gt;**](PageSceneSlidesInner.md) |  | [optional] |
| **thumbnail_url** | **String** |  |  |
| **date_created** | **Time** |  |  |

## Example

```ruby
require 'design_huddle_admin'

instance = DesignHuddleAdmin::Page.new(
  page_id: null,
  page_name: null,
  page_number: null,
  scene_slides: null,
  thumbnail_url: null,
  date_created: null
)
```

