# DesignHuddleAdmin::ProjectsProjectIDExportPOSTRequestOneOf2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **format** | **String** |  |  |
| **filename** | **String** |  | [optional] |
| **scene_id** | **String** |  | [optional] |
| **scene_ids** | **Array&lt;String&gt;** |  | [optional] |
| **scene_slide_id** | **String** |  | [optional] |
| **scene_slide_ids** | **Array&lt;String&gt;** |  | [optional] |
| **fps** | **Integer** | 30 is the default and maximum value for mp4. 15 is the default and maximum value for gif. | [optional] |
| **quality** | **String** | \&quot;high\&quot; by default. | [optional] |
| **no_audio** | **Boolean** |  | [optional] |
| **notification_url** | **String** |  | [optional] |

## Example

```ruby
require 'design_huddle_admin'

instance = DesignHuddleAdmin::ProjectsProjectIDExportPOSTRequestOneOf2.new(
  format: null,
  filename: null,
  scene_id: null,
  scene_ids: null,
  scene_slide_id: null,
  scene_slide_ids: null,
  fps: null,
  quality: null,
  no_audio: null,
  notification_url: null
)
```

