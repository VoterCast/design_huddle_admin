# DesignHuddleAdmin::ProjectsProjectIDExportPOSTRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'design_huddle_admin'

DesignHuddleAdmin::ProjectsProjectIDExportPOSTRequest.openapi_one_of
# =>
# [
#   :'ProjectsProjectIDExportPOSTRequestOneOf',
#   :'ProjectsProjectIDExportPOSTRequestOneOf1',
#   :'ProjectsProjectIDExportPOSTRequestOneOf2',
#   :'ProjectsProjectIDExportPOSTRequestOneOf3',
#   :'ProjectsProjectIDExportPOSTRequestOneOf4'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'design_huddle_admin'

DesignHuddleAdmin::ProjectsProjectIDExportPOSTRequest.build(data)
# => #<ProjectsProjectIDExportPOSTRequestOneOf:0x00007fdd4aab02a0>

DesignHuddleAdmin::ProjectsProjectIDExportPOSTRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ProjectsProjectIDExportPOSTRequestOneOf`
- `ProjectsProjectIDExportPOSTRequestOneOf1`
- `ProjectsProjectIDExportPOSTRequestOneOf2`
- `ProjectsProjectIDExportPOSTRequestOneOf3`
- `ProjectsProjectIDExportPOSTRequestOneOf4`
- `nil` (if no type matches)

