# DesignHuddleAdmin::UserGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_group_id** | **Integer** |  |  |
| **user_group_code** | **String** |  | [optional] |
| **user_group_name** | **String** |  |  |
| **excluded** | **Boolean** |  |  |

## Example

```ruby
require 'design_huddle_admin'

instance = DesignHuddleAdmin::UserGroup.new(
  user_group_id: null,
  user_group_code: null,
  user_group_name: null,
  excluded: null
)
```

