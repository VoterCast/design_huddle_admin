# DesignHuddleAdmin::ProjectsPOSTRequestOneOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_title** | **String** |  | [optional] |
| **template_id** | **Integer** |  |  |
| **customizations_hash** | **String** | Optionally supply the returned &lt;em&gt;object_hash&lt;/em&gt; of a &lt;a target&#x3D;\&quot;_parent\&quot; href&#x3D;\&quot;https://api.designhuddle.com/doc/Using_Template_Customization_Objects.pdf\&quot;&gt;previously created Template Customization Object&lt;/a&gt; to automatically customize/populate this Template per user. The full &lt;em&gt;customizations&lt;/em&gt; object will be ignored if this field is supplied. | [optional] |
| **customizations** | **Object** | Optionally supply a &lt;a target&#x3D;\&quot;_parent\&quot; href&#x3D;\&quot;https://api.designhuddle.com/doc/Template_Customization_Objects.pdf\&quot;&gt;Template Customization Object&lt;/a&gt; to automatically customize/populate this Template per user. To improve performance when re-using the same object on multiple Project creations, &lt;a href&#x3D;\&quot;#tag/Templates/paths/~1template~1customization-objects/post\&quot;&gt;store the object&lt;/a&gt; first and then provide the returned &lt;em&gt;object_hash&lt;/em&gt; instead. This can also be accomplished by passing in this parameter on only the first Project creation and storing the returned &lt;em&gt;customizations_hash&lt;/em&gt; field for use on further executions.  | [optional] |

## Example

```ruby
require 'design_huddle_admin'

instance = DesignHuddleAdmin::ProjectsPOSTRequestOneOf.new(
  project_title: null,
  template_id: null,
  customizations_hash: null,
  customizations: null
)
```

