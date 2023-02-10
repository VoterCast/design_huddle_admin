# DesignHuddleAdmin::TemplateJobsJobIDGETSuccess

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'design_huddle_admin'

DesignHuddleAdmin::TemplateJobsJobIDGETSuccess.openapi_one_of
# =>
# [
#   :'ProjectsProjectIDExportJobsJobIDGETSuccessOneOf',
#   :'TemplateJobsJobIDGETSuccessOneOf'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'design_huddle_admin'

DesignHuddleAdmin::TemplateJobsJobIDGETSuccess.build(data)
# => #<ProjectsProjectIDExportJobsJobIDGETSuccessOneOf:0x00007fdd4aab02a0>

DesignHuddleAdmin::TemplateJobsJobIDGETSuccess.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ProjectsProjectIDExportJobsJobIDGETSuccessOneOf`
- `TemplateJobsJobIDGETSuccessOneOf`
- `nil` (if no type matches)

