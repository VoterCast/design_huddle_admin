# DesignHuddleAdmin::ProjectsProjectIDExportPOSTRequestOneOf1Bleed

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **margin** | [**ProjectsProjectIDExportPOSTRequestOneOf1BleedMargin**](ProjectsProjectIDExportPOSTRequestOneOf1BleedMargin.md) |  | [optional] |
| **no_outer_margin** | **Boolean** | By default the PDF will include double the margin supplied with crop marks indicating the actual margin. | [optional] |

## Example

```ruby
require 'design_huddle_admin'

instance = DesignHuddleAdmin::ProjectsProjectIDExportPOSTRequestOneOf1Bleed.new(
  margin: null,
  no_outer_margin: null
)
```

