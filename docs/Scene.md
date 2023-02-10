# DesignHuddleAdmin::Scene

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scene_id** | **String** |  |  |
| **scene_name** | **String** |  | [optional] |
| **scene_number** | **Integer** |  |  |
| **scene_slides** | [**Array&lt;SceneSceneSlidesInner&gt;**](SceneSceneSlidesInner.md) |  | [optional] |
| **duration** | **Integer** |  |  |
| **thumbnail_url** | **String** |  |  |
| **date_created** | **Time** |  |  |

## Example

```ruby
require 'design_huddle_admin'

instance = DesignHuddleAdmin::Scene.new(
  scene_id: null,
  scene_name: null,
  scene_number: null,
  scene_slides: null,
  duration: null,
  thumbnail_url: null,
  date_created: null
)
```

