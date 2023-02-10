# DesignHuddleAdmin::TemplateCustomizationObjectsPOSTRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **Object** | Supply a &lt;a target&#x3D;\&quot;_parent\&quot; href&#x3D;\&quot;https://api.designhuddle.com/doc/Template_Customization_Objects.pdf\&quot;&gt;Template Customization Object&lt;/a&gt; to be used on subsequent &lt;a href&#x3D;\&quot;#tag/Projects/paths/~1projects/post\&quot;&gt;Project creation&lt;/a&gt; and &lt;a target&#x3D;\&quot;_parent\&quot; href&#x3D;\&quot;https://api.designhuddle.com/doc/Variable_Template_Previews.pdf\&quot;&gt;Variable Template Preview&lt;/a&gt; requests. |  |
| **save_as_user_default** | **Boolean** |  | [optional] |

## Example

```ruby
require 'design_huddle_admin'

instance = DesignHuddleAdmin::TemplateCustomizationObjectsPOSTRequest.new(
  object: null,
  save_as_user_default: null
)
```

