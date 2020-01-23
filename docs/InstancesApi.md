# LenelSDK::InstancesApi

All URIs are relative to *https://localhost/api/access/onguard/openaccess*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_instance**](InstancesApi.md#add_instance) | **POST** /instances | Add an instance
[**delete_instance**](InstancesApi.md#delete_instance) | **DELETE** /instances | Delete an instance
[**delete_print_request**](InstancesApi.md#delete_print_request) | **DELETE** /badge/{badge_print_request_id}/print_request | Delete a specific badge print request
[**execute_method**](InstancesApi.md#execute_method) | **POST** /execute_method | Execute method
[**get_badge_printers**](InstancesApi.md#get_badge_printers) | **GET** /badge_printers | Retrieve a list of badge printers
[**get_cardholder_search**](InstancesApi.md#get_cardholder_search) | **GET** /cardholders | Advanced cardholder search
[**get_count**](InstancesApi.md#get_count) | **GET** /count | Get count
[**get_instances**](InstancesApi.md#get_instances) | **GET** /instances | Get instances
[**get_logged_events**](InstancesApi.md#get_logged_events) | **GET** /logged_events | Get logged events
[**get_mobile_devices**](InstancesApi.md#get_mobile_devices) | **GET** /badge/{badgekey}/mobile_devices | A list of mobile devices for a badge.
[**get_print_request**](InstancesApi.md#get_print_request) | **GET** /badge/{badge_print_request_id}/print_request | Retrieve a specific badge print request
[**get_type**](InstancesApi.md#get_type) | **GET** /type | Get type details
[**get_types**](InstancesApi.md#get_types) | **GET** /types | Get type list
[**get_video_recorder_authentication_data**](InstancesApi.md#get_video_recorder_authentication_data) | **GET** /video_recorder/{id}/auth_data | Get video recorder authentication data
[**get_video_recorders**](InstancesApi.md#get_video_recorders) | **GET** /video_recorders | Get video recorders
[**issue_mobile_credential**](InstancesApi.md#issue_mobile_credential) | **POST** /badge/{badgekey}/issue_mobile_credential | Issues mobile credential
[**modify_access_level**](InstancesApi.md#modify_access_level) | **PUT** /access_level/{id} | Modify an access level
[**modify_instance**](InstancesApi.md#modify_instance) | **PUT** /instances | Modify an instance
[**modify_property_bulk_update**](InstancesApi.md#modify_property_bulk_update) | **PUT** /property_bulk_update | Bulk update the instance property
[**print_request**](InstancesApi.md#print_request) | **POST** /badge/{badgekey}/print_request | Submit print request for a given badge


# **add_instance**
> Instance add_instance(type_name, instance, version, opts)

Add an instance

Adds an instance of the given type.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSDK.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSDK::InstancesApi.new

type_name = 'type_name_example' # String | 

instance = LenelSDK::InstanceDefinition.new # InstanceDefinition | The new instance.

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Add an instance
  result = api_instance.add_instance(type_name, instance, version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling InstancesApi->add_instance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type_name** | **String**|  | 
 **instance** | [**InstanceDefinition**](InstanceDefinition.md)| The new instance. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

[**Instance**](Instance.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_instance**
> SharedResponseDefinition delete_instance(type_name, instance, version, opts)

Delete an instance

Deletes an instance of the given type.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSDK.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSDK::InstancesApi.new

type_name = 'type_name_example' # String | 

instance = LenelSDK::InstanceDefinition.new # InstanceDefinition | The instance to delete, with only key properties required.

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Delete an instance
  result = api_instance.delete_instance(type_name, instance, version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling InstancesApi->delete_instance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type_name** | **String**|  | 
 **instance** | [**InstanceDefinition**](InstanceDefinition.md)| The instance to delete, with only key properties required. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

[**SharedResponseDefinition**](SharedResponseDefinition.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_print_request**
> delete_print_request(badge_print_request_id, version, opts)

Delete a specific badge print request

Delete a request to print the badge.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSDK.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSDK::InstancesApi.new

badge_print_request_id = 'badge_print_request_id_example' # String | The badge print request ID represents a unique identifier associated with a badge print request.

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  request_body: nil, # Object | Pass an empty request body.
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Delete a specific badge print request
  api_instance.delete_print_request(badge_print_request_id, version, opts)
rescue LenelSDK::ApiError => e
  puts "Exception when calling InstancesApi->delete_print_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **badge_print_request_id** | **String**| The badge print request ID represents a unique identifier associated with a badge print request. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **request_body** | **Object**| Pass an empty request body. | [optional] 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

nil (empty response body)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **execute_method**
> ExecuteMethodResults execute_method(type_name, method_name, execute_method_parameters, version, opts)

Execute method

Executes a method on an instance.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSDK.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSDK::InstancesApi.new

type_name = 'type_name_example' # String | The type for which to execute a method.

method_name = 'method_name_example' # String | The name of the method to execute.

execute_method_parameters = LenelSDK::ExecuteMethodParameters.new # ExecuteMethodParameters | The execute method parameters.

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Execute method
  result = api_instance.execute_method(type_name, method_name, execute_method_parameters, version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling InstancesApi->execute_method: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type_name** | **String**| The type for which to execute a method. | 
 **method_name** | **String**| The name of the method to execute. | 
 **execute_method_parameters** | [**ExecuteMethodParameters**](ExecuteMethodParameters.md)| The execute method parameters. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

[**ExecuteMethodResults**](ExecuteMethodResults.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_badge_printers**
> BadgePrinters get_badge_printers(version, opts)

Retrieve a list of badge printers

Retrieve a list of badge printers.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSDK.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSDK::InstancesApi.new

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  badge_type_id: 56, # Integer | The ID associated with a given badge type.
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Retrieve a list of badge printers
  result = api_instance.get_badge_printers(version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling InstancesApi->get_badge_printers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **badge_type_id** | **Integer**| The ID associated with a given badge type. | [optional] 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

[**BadgePrinters**](BadgePrinters.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_cardholder_search**
> PagedInstances get_cardholder_search(version, opts)

Advanced cardholder search

Performs an advanced cardholder search, optionally searching on Badge fields.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSDK.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSDK::InstancesApi.new

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  cardholder_filter: 'cardholder_filter_example', # String | The filter based on Cardholder properties.
  badge_filter: 'badge_filter_example', # String | The filter based on Badge properties.
  has_badges: true, # BOOLEAN | Boolean search for the presence of a Badge.
  has_photo: true, # BOOLEAN | Boolean search for the presence of a cardholder photo.
  has_signature: true, # BOOLEAN | Boolean search for the presence of a cardholder signature.
  has_any_directory_account: true, # BOOLEAN | Boolean search for the presence of a cardholder directory account.
  access_level_list: 'access_level_list_example', # String | A list of access level IDs for which to search cardholders. For example: `[1,2,3]`. This parameter is interpreted based on `access_level_search_type`. 
  access_level_search_type: 'any_of', # String | The type of access level search to apply. This parameter describes how to interpret `access_level_list`. - `\"any_of\"` - Finds cardholders with ***any of*** the access levels in   `access_level_list` (at least one). - `\"none_of\"` - Finds cardholders with ***none of*** the access levels in   `access_level_list`. - `\"all_of\"` - Finds cardholders with ***all of*** the access levels in   `access_level_list`. - `\"exactly\"` - Finds cardholders with ***exactly*** the access levels in   `access_level_list` (all of the access levels and no others). 
  page_number: 1, # Integer | The page number to be returned (starts at 1).
  page_size: 20, # Integer | The number of items to be returned per page.
  order_by: 'order_by_example', # String | The field(s) to use when sorting the results.
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Advanced cardholder search
  result = api_instance.get_cardholder_search(version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling InstancesApi->get_cardholder_search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **cardholder_filter** | **String**| The filter based on Cardholder properties. | [optional] 
 **badge_filter** | **String**| The filter based on Badge properties. | [optional] 
 **has_badges** | **BOOLEAN**| Boolean search for the presence of a Badge. | [optional] 
 **has_photo** | **BOOLEAN**| Boolean search for the presence of a cardholder photo. | [optional] 
 **has_signature** | **BOOLEAN**| Boolean search for the presence of a cardholder signature. | [optional] 
 **has_any_directory_account** | **BOOLEAN**| Boolean search for the presence of a cardholder directory account. | [optional] 
 **access_level_list** | **String**| A list of access level IDs for which to search cardholders. For example: &#x60;[1,2,3]&#x60;. This parameter is interpreted based on &#x60;access_level_search_type&#x60;.  | [optional] 
 **access_level_search_type** | **String**| The type of access level search to apply. This parameter describes how to interpret &#x60;access_level_list&#x60;. - &#x60;\&quot;any_of\&quot;&#x60; - Finds cardholders with ***any of*** the access levels in   &#x60;access_level_list&#x60; (at least one). - &#x60;\&quot;none_of\&quot;&#x60; - Finds cardholders with ***none of*** the access levels in   &#x60;access_level_list&#x60;. - &#x60;\&quot;all_of\&quot;&#x60; - Finds cardholders with ***all of*** the access levels in   &#x60;access_level_list&#x60;. - &#x60;\&quot;exactly\&quot;&#x60; - Finds cardholders with ***exactly*** the access levels in   &#x60;access_level_list&#x60; (all of the access levels and no others).  | [optional] [default to any_of]
 **page_number** | **Integer**| The page number to be returned (starts at 1). | [optional] [default to 1]
 **page_size** | **Integer**| The number of items to be returned per page. | [optional] [default to 20]
 **order_by** | **String**| The field(s) to use when sorting the results. | [optional] 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

[**PagedInstances**](PagedInstances.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_count**
> Object get_count(type_name, version, opts)

Get count

Gets the number of instances of a given type.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSDK.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSDK::InstancesApi.new

type_name = 'type_name_example' # String | 

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  filter: 'filter_example', # String | 
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Get count
  result = api_instance.get_count(type_name, version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling InstancesApi->get_count: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type_name** | **String**|  | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **filter** | **String**|  | [optional] 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

**Object**

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_instances**
> PagedInstances get_instances(type_name, version, opts)

Get instances

Gets instances of the given type.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSDK.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSDK::InstancesApi.new

type_name = 'type_name_example' # String | 

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  filter: 'filter_example', # String | 
  page_number: 1, # Integer | The page number to be returned (starts at 1).
  page_size: 20, # Integer | The number of items to be returned per page.
  order_by: 'order_by_example', # String | The field(s) to use when sorting the results.
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Get instances
  result = api_instance.get_instances(type_name, version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling InstancesApi->get_instances: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type_name** | **String**|  | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **filter** | **String**|  | [optional] 
 **page_number** | **Integer**| The page number to be returned (starts at 1). | [optional] [default to 1]
 **page_size** | **Integer**| The number of items to be returned per page. | [optional] [default to 20]
 **order_by** | **String**| The field(s) to use when sorting the results. | [optional] 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

[**PagedInstances**](PagedInstances.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_logged_events**
> GetLoggedEvents get_logged_events(filter, version, opts)

Get logged events

Used to retrieve a page of logged events and their relevant properties.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSDK.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSDK::InstancesApi.new

filter = 'filter_example' # String | The filter based on logged event properties.

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  page_number: 1, # Integer | The page number to be returned (starts at 1).
  page_size: 20, # Integer | The number of items to be returned per page.
  order_by: 'order_by_example', # String | The field(s) to use when sorting the results.
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Get logged events
  result = api_instance.get_logged_events(filter, version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling InstancesApi->get_logged_events: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**| The filter based on logged event properties. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **page_number** | **Integer**| The page number to be returned (starts at 1). | [optional] [default to 1]
 **page_size** | **Integer**| The number of items to be returned per page. | [optional] [default to 20]
 **order_by** | **String**| The field(s) to use when sorting the results. | [optional] 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

[**GetLoggedEvents**](GetLoggedEvents.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_mobile_devices**
> BadgeMobileDevices get_mobile_devices(badgekey, version, opts)

A list of mobile devices for a badge.

Gets a list of mobile devices for a person associated with a badge. This list comes from the mobile credentialing services associated with the badge type of this badge.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSDK.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSDK::InstancesApi.new

badgekey = 56 # Integer | The badgekey of the badge assigned to the mobile devices you want to get from OnGuard.

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #A list of mobile devices for a badge.
  result = api_instance.get_mobile_devices(badgekey, version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling InstancesApi->get_mobile_devices: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **badgekey** | **Integer**| The badgekey of the badge assigned to the mobile devices you want to get from OnGuard. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

[**BadgeMobileDevices**](BadgeMobileDevices.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_print_request**
> BadgePrintRequestResponse get_print_request(badge_print_request_id, version, opts)

Retrieve a specific badge print request

Get the status of a print request for the badge.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSDK.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSDK::InstancesApi.new

badge_print_request_id = 'badge_print_request_id_example' # String | The badge print request ID represents a unique identifier associated with a badge print request.

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Retrieve a specific badge print request
  result = api_instance.get_print_request(badge_print_request_id, version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling InstancesApi->get_print_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **badge_print_request_id** | **String**| The badge print request ID represents a unique identifier associated with a badge print request. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

[**BadgePrintRequestResponse**](BadgePrintRequestResponse.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_type**
> Type get_type(type_name, version, opts)

Get type details

Gets the details of a specific type.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSDK.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSDK::InstancesApi.new

type_name = 'type_name_example' # String | 

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Get type details
  result = api_instance.get_type(type_name, version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling InstancesApi->get_type: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type_name** | **String**|  | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

[**Type**](Type.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_types**
> Types get_types(version, opts)

Get type list

Gets a list of the supported instance types.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSDK.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSDK::InstancesApi.new

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Get type list
  result = api_instance.get_types(version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling InstancesApi->get_types: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

[**Types**](Types.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_video_recorder_authentication_data**
> VideoRecorderAuthenticationData get_video_recorder_authentication_data(id, version, opts)

Get video recorder authentication data

Retrieves the authentication token for a Lenel NVR. This token is used for authentication and authorization against LNVR Services.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSDK.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSDK::InstancesApi.new

id = 56 # Integer | The panel ID of the recorder for which the authentication data is being requested.

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Get video recorder authentication data
  result = api_instance.get_video_recorder_authentication_data(id, version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling InstancesApi->get_video_recorder_authentication_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The panel ID of the recorder for which the authentication data is being requested. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

[**VideoRecorderAuthenticationData**](VideoRecorderAuthenticationData.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_video_recorders**
> GetVideoRecorders get_video_recorders(version, opts)

Get video recorders

Used to retrieve a page of video recorders and their relevant properties. 

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSDK.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSDK::InstancesApi.new

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  page_number: 1, # Integer | The page number to be returned (starts at 1).
  page_size: 20, # Integer | The number of items to be returned per page.
  order_by: 'order_by_example', # String | The field(s) to use when sorting the results.
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Get video recorders
  result = api_instance.get_video_recorders(version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling InstancesApi->get_video_recorders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **page_number** | **Integer**| The page number to be returned (starts at 1). | [optional] [default to 1]
 **page_size** | **Integer**| The number of items to be returned per page. | [optional] [default to 20]
 **order_by** | **String**| The field(s) to use when sorting the results. | [optional] 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

[**GetVideoRecorders**](GetVideoRecorders.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **issue_mobile_credential**
> IssueMobileCredential issue_mobile_credential(badgekey, in_parameter_value_map, version, opts)

Issues mobile credential

Issues a credential to a mobile device of the person with the given badge.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSDK.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSDK::InstancesApi.new

badgekey = 56 # Integer | 

in_parameter_value_map = LenelSDK::InParameterValueMap.new # InParameterValueMap | 

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Issues mobile credential
  result = api_instance.issue_mobile_credential(badgekey, in_parameter_value_map, version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling InstancesApi->issue_mobile_credential: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **badgekey** | **Integer**|  | 
 **in_parameter_value_map** | [**InParameterValueMap**](InParameterValueMap.md)|  | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

[**IssueMobileCredential**](IssueMobileCredential.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **modify_access_level**
> SharedResponseDefinition modify_access_level(id, version, opts)

Modify an access level

Modifies the access level with the given ID. 

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSDK.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSDK::InstancesApi.new

id = 56 # Integer | Id of the access level to modify.

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  modified_access_level: LenelSDK::AccessLevel.new, # AccessLevel | The modified access level.
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Modify an access level
  result = api_instance.modify_access_level(id, version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling InstancesApi->modify_access_level: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Id of the access level to modify. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **modified_access_level** | [**AccessLevel**](AccessLevel.md)| The modified access level. | [optional] 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

[**SharedResponseDefinition**](SharedResponseDefinition.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **modify_instance**
> Instance modify_instance(type_name, instance, version, opts)

Modify an instance

Modifies an instance of the given type.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSDK.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSDK::InstancesApi.new

type_name = 'type_name_example' # String | 

instance = LenelSDK::InstanceDefinition.new # InstanceDefinition | The updated instance.

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Modify an instance
  result = api_instance.modify_instance(type_name, instance, version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling InstancesApi->modify_instance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type_name** | **String**|  | 
 **instance** | [**InstanceDefinition**](InstanceDefinition.md)| The updated instance. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

[**Instance**](Instance.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **modify_property_bulk_update**
> SharedResponseDefinition modify_property_bulk_update(type_name, parameter_name, version, opts)

Bulk update the instance property

Bulk update the instance property with the given instance ids.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSDK.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSDK::InstancesApi.new

type_name = 'type_name_example' # String | Type name.

parameter_name = LenelSDK::ParameterName2.new # ParameterName2 | 

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  id_list: [56], # Array<Integer> | List of instance IDs in the format `[1,2,3,...]`. If no list is provided, all instances will be affected.
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Bulk update the instance property
  result = api_instance.modify_property_bulk_update(type_name, parameter_name, version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling InstancesApi->modify_property_bulk_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type_name** | **String**| Type name. | 
 **parameter_name** | [**ParameterName2**](ParameterName2.md)|  | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **id_list** | [**Array&lt;Integer&gt;**](Integer.md)| List of instance IDs in the format &#x60;[1,2,3,...]&#x60;. If no list is provided, all instances will be affected. | [optional] 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

[**SharedResponseDefinition**](SharedResponseDefinition.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **print_request**
> BadgePrintRequestResponse print_request(badgekey, version, opts)

Submit print request for a given badge

Submit a request to print the badge.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSDK.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSDK::InstancesApi.new

badgekey = 56 # Integer | The badge key of the badge associated with an OnGuard cardholder.

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  print_request: LenelSDK::PrintRequest.new, # PrintRequest | Additional parameters associated with a badge print request.
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Submit print request for a given badge
  result = api_instance.print_request(badgekey, version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling InstancesApi->print_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **badgekey** | **Integer**| The badge key of the badge associated with an OnGuard cardholder. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **print_request** | [**PrintRequest**](PrintRequest.md)| Additional parameters associated with a badge print request. | [optional] 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

[**BadgePrintRequestResponse**](BadgePrintRequestResponse.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



