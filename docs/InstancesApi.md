# LenelSdk::InstancesApi

All URIs are relative to */api/access/onguard/openaccess*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_device_group**](InstancesApi.md#add_device_group) | **POST** /device_group | Add device group
[**add_instance**](InstancesApi.md#add_instance) | **POST** /instances | Add an instance
[**delete_device_group**](InstancesApi.md#delete_device_group) | **DELETE** /device_group | Delete device group
[**delete_instance**](InstancesApi.md#delete_instance) | **DELETE** /instances | Delete an instance
[**delete_print_request**](InstancesApi.md#delete_print_request) | **DELETE** /badge/{badge_print_request_id}/print_request | Delete a specific badge print request
[**execute_method**](InstancesApi.md#execute_method) | **POST** /execute_method | Execute method
[**get_access_panels_with_certs_and_users**](InstancesApi.md#get_access_panels_with_certs_and_users) | **GET** /access_panel_with_certs_and_users | Get access panels list with certificates and users
[**get_cardholder_search**](InstancesApi.md#get_cardholder_search) | **GET** /cardholders | Advanced cardholder search
[**get_count**](InstancesApi.md#get_count) | **GET** /count | Get count
[**get_device_groups**](InstancesApi.md#get_device_groups) | **GET** /device_groups | Get device groups
[**get_instances**](InstancesApi.md#get_instances) | **GET** /instances | Get instances
[**get_logged_events**](InstancesApi.md#get_logged_events) | **GET** /logged_events | Get logged events
[**get_mobile_devices**](InstancesApi.md#get_mobile_devices) | **GET** /badge/{badgekey}/mobile_devices | A list of mobile devices for a badge.
[**get_print_request**](InstancesApi.md#get_print_request) | **GET** /badge/{badge_print_request_id}/print_request | Retrieve a specific badge print request
[**get_type**](InstancesApi.md#get_type) | **GET** /type | Get type details
[**get_types**](InstancesApi.md#get_types) | **GET** /types | Get type list
[**get_video_recorder_authentication_data**](InstancesApi.md#get_video_recorder_authentication_data) | **GET** /video_recorder/{id}/auth_data | Get video recorder authentication data
[**get_video_recorder_credentials**](InstancesApi.md#get_video_recorder_credentials) | **GET** /video_recorder/{id}/credentials | Get video recorder credentials
[**get_video_recorders**](InstancesApi.md#get_video_recorders) | **GET** /video_recorders | Get video recorders
[**get_visit_event_status**](InstancesApi.md#get_visit_event_status) | **GET** /visitevent_status | Get VisitEvent status
[**get_visitor_search**](InstancesApi.md#get_visitor_search) | **GET** /visitors | Advanced visitor search
[**issue_mobile_credential**](InstancesApi.md#issue_mobile_credential) | **POST** /badge/{badgekey}/issue_mobile_credential | Issues mobile credential
[**modify_access_level**](InstancesApi.md#modify_access_level) | **PUT** /access_level/{id} | Modify an access level
[**modify_device_group**](InstancesApi.md#modify_device_group) | **PUT** /device_group | Modify device group
[**modify_instance**](InstancesApi.md#modify_instance) | **PUT** /instances | Modify an instance
[**modify_property_bulk_update**](InstancesApi.md#modify_property_bulk_update) | **PUT** /property_bulk_update | Bulk update the instance property
[**print_request**](InstancesApi.md#print_request) | **POST** /badge/{badgekey}/print_request | Submit print request for a given badge
[**send_incoming_events**](InstancesApi.md#send_incoming_events) | **POST** /send_incoming_events | Send incoming events

# **add_device_group**
> AddModifyDeviceGroupResponse add_device_group(bodyversion, opts)

Add device group

Adds a device group.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSdk.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSdk::InstancesApi.new
body = LenelSdk::AddDeviceGroupRequest.new # AddDeviceGroupRequest | 
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
  operation_guid: 'operation_guid_example' # String | This GUID, formatted as \"00000000-0000-0000-0000-000000000000\", can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID.
  operation_description: 'operation_description_example' # String | Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description.
}

begin
  #Add device group
  result = api_instance.add_device_group(bodyversion, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling InstancesApi->add_device_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AddDeviceGroupRequest**](AddDeviceGroupRequest.md)|  | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 
 **operation_guid** | **String**| This GUID, formatted as \&quot;00000000-0000-0000-0000-000000000000\&quot;, can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID. | [optional] 
 **operation_description** | **String**| Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description. | [optional] 

### Return type

[**AddModifyDeviceGroupResponse**](AddModifyDeviceGroupResponse.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_instance**
> Instance add_instance(bodytype_nameversion, opts)

Add an instance

Adds an instance of the given type.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSdk.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSdk::InstancesApi.new
body = LenelSdk::InstanceDefinition.new # InstanceDefinition | The new instance.
type_name = 'type_name_example' # String | 
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
  operation_guid: 'operation_guid_example' # String | This GUID, formatted as \"00000000-0000-0000-0000-000000000000\", can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID.
  operation_description: 'operation_description_example' # String | Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description.
}

begin
  #Add an instance
  result = api_instance.add_instance(bodytype_nameversion, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling InstancesApi->add_instance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InstanceDefinition**](InstanceDefinition.md)| The new instance. | 
 **type_name** | **String**|  | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 
 **operation_guid** | **String**| This GUID, formatted as \&quot;00000000-0000-0000-0000-000000000000\&quot;, can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID. | [optional] 
 **operation_description** | **String**| Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description. | [optional] 

### Return type

[**Instance**](Instance.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_device_group**
> SharedResponseDefinition delete_device_group(id, version, opts)

Delete device group

Deletes device group with the given ID.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSdk.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSdk::InstancesApi.new
id = 56 # Integer | ID of device group to be deleted.
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true, # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
  operation_guid: 'operation_guid_example', # String | This GUID, formatted as \"00000000-0000-0000-0000-000000000000\", can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID.
  operation_description: 'operation_description_example' # String | Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description.
}

begin
  #Delete device group
  result = api_instance.delete_device_group(id, version, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling InstancesApi->delete_device_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of device group to be deleted. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 
 **operation_guid** | **String**| This GUID, formatted as \&quot;00000000-0000-0000-0000-000000000000\&quot;, can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID. | [optional] 
 **operation_description** | **String**| Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description. | [optional] 

### Return type

[**SharedResponseDefinition**](SharedResponseDefinition.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_instance**
> SharedResponseDefinition delete_instance(bodytype_nameversion, opts)

Delete an instance

Deletes an instance of the given type.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSdk.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSdk::InstancesApi.new
body = LenelSdk::InstanceDefinition.new # InstanceDefinition | The instance to delete, with only key properties required.
type_name = 'type_name_example' # String | 
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  force: true # BOOLEAN | 
  queue: true # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
  operation_guid: 'operation_guid_example' # String | This GUID, formatted as \"00000000-0000-0000-0000-000000000000\", can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID.
  operation_description: 'operation_description_example' # String | Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description.
}

begin
  #Delete an instance
  result = api_instance.delete_instance(bodytype_nameversion, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling InstancesApi->delete_instance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InstanceDefinition**](InstanceDefinition.md)| The instance to delete, with only key properties required. | 
 **type_name** | **String**|  | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **force** | **BOOLEAN**|  | [optional] 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 
 **operation_guid** | **String**| This GUID, formatted as \&quot;00000000-0000-0000-0000-000000000000\&quot;, can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID. | [optional] 
 **operation_description** | **String**| Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description. | [optional] 

### Return type

[**SharedResponseDefinition**](SharedResponseDefinition.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_print_request**
> delete_print_request(versionbadge_print_request_id, opts)

Delete a specific badge print request

Delete a request to print the badge.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSdk.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSdk::InstancesApi.new
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
badge_print_request_id = 'badge_print_request_id_example' # String | The badge print request ID represents a unique identifier associated with a badge print request.
opts = { 
  body: 'body_example' # String | Pass an empty request body.
  queue: true # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Delete a specific badge print request
  api_instance.delete_print_request(versionbadge_print_request_id, opts)
rescue LenelSdk::ApiError => e
  puts "Exception when calling InstancesApi->delete_print_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **badge_print_request_id** | **String**| The badge print request ID represents a unique identifier associated with a badge print request. | 
 **body** | [**String**](String.md)| Pass an empty request body. | [optional] 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

nil (empty response body)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **execute_method**
> ExecuteMethodResults execute_method(bodytype_namemethod_nameversion, opts)

Execute method

Executes a method on an instance.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSdk.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSdk::InstancesApi.new
body = LenelSdk::ExecuteMethodParameters.new # ExecuteMethodParameters | The execute method parameters.
type_name = 'type_name_example' # String | The type for which to execute a method.
method_name = 'method_name_example' # String | The name of the method to execute.
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
  operation_guid: 'operation_guid_example' # String | This GUID, formatted as \"00000000-0000-0000-0000-000000000000\", can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID.
  operation_description: 'operation_description_example' # String | Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description.
}

begin
  #Execute method
  result = api_instance.execute_method(bodytype_namemethod_nameversion, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling InstancesApi->execute_method: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ExecuteMethodParameters**](ExecuteMethodParameters.md)| The execute method parameters. | 
 **type_name** | **String**| The type for which to execute a method. | 
 **method_name** | **String**| The name of the method to execute. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 
 **operation_guid** | **String**| This GUID, formatted as \&quot;00000000-0000-0000-0000-000000000000\&quot;, can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID. | [optional] 
 **operation_description** | **String**| Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description. | [optional] 

### Return type

[**ExecuteMethodResults**](ExecuteMethodResults.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_access_panels_with_certs_and_users**
> GetAccessPanelsWithCertsAndUsersResponse get_access_panels_with_certs_and_users(version, opts)

Get access panels list with certificates and users

This is extended view of Lnl_Panel instances with TLS and Peer certificates info and controller users list.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSdk.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSdk::InstancesApi.new
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  filter: 'filter_example', # String | The filter based on Lnl_panel type name properties
  page_number: 56, # Integer | The page number to be returned (starts at 1).
  page_size: 56, # Integer | The number of items to be returned per page.
  order_by: 'order_by_example', # String | The field(s) to use when sorting the results.
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Get access panels list with certificates and users
  result = api_instance.get_access_panels_with_certs_and_users(version, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling InstancesApi->get_access_panels_with_certs_and_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **filter** | **String**| The filter based on Lnl_panel type name properties | [optional] 
 **page_number** | **Integer**| The page number to be returned (starts at 1). | [optional] 
 **page_size** | **Integer**| The number of items to be returned per page. | [optional] 
 **order_by** | **String**| The field(s) to use when sorting the results. | [optional] 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**GetAccessPanelsWithCertsAndUsersResponse**](GetAccessPanelsWithCertsAndUsersResponse.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
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
LenelSdk.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSdk::InstancesApi.new
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  auto_load_badge: true, # BOOLEAN | A flag indicating whether to load the badges assigned to cardholders in the response.
  auto_load_multimedia_object: true, # BOOLEAN | A flag indicating whether to load the multimedia objects such as pictures and signatures assigned to cardholders in the response.
  auto_load_access_level: true, # BOOLEAN | A flag indicating whether to load the access levels assigned to cardholders in the response.
  auto_load_reader: true, # BOOLEAN | A flag indicating whether to load the readers assigned to access levels in the response.
  auto_load_timezone: true, # BOOLEAN | A flag indicating whether to load the timezones assigned to access levels in the response.
  auto_load_timezone_interval: true, # BOOLEAN | A flag indicating whether to load the timezone intervals related to timezone.
  cardholder_filter: 'cardholder_filter_example', # String | The filter based on Cardholder properties.
  badge_filter: 'badge_filter_example', # String | The filter based on Badge properties.
  sum_badge_filter: true, # BOOLEAN | A flag indicating whether to join cardholder and badge filter with OR instead of AND operator.
  has_badges: true, # BOOLEAN | Boolean search for the presence of a Badge.
  has_only_inactive_badges: true, # BOOLEAN | Boolean search for Cardholders which have only inactive badges.
  last_activity_filter: 'last_activity_filter_example', # String | The filter based on Lnl_BadgeLastLocation properties.
  has_photo: true, # BOOLEAN | Boolean search for the presence of a cardholder photo.
  has_signature: true, # BOOLEAN | Boolean search for the presence of a cardholder signature.
  has_any_directory_account: true, # BOOLEAN | Boolean search for the presence of a cardholder directory account.
  access_level_filter: 'access_level_filter_example', # String | The filter based on Access Level properties.
  access_level_list: 'access_level_list_example', # String | A list of access level IDs for which to search cardholders. For example: `[1,2,3]`. This parameter is interpreted based on `access_level_search_type`. 
  access_level_search_type: 'any_of', # String | The type of access level search to apply. This parameter describes how to interpret `access_level_list`. - `\"any_of\"` - Finds cardholders with ***any of*** the access levels in   `access_level_list` (at least one). - `\"none_of\"` - Finds cardholders with ***none of*** the access levels in   `access_level_list`. - `\"all_of\"` - Finds cardholders with ***all of*** the access levels in   `access_level_list`. - `\"exactly\"` - Finds cardholders with ***exactly*** the access levels in   `access_level_list` (all of the access levels and no others). 
  reader_filter: 'reader_filter_example', # String | The filter based on Reader properties.
  reader_name_list: 'reader_name_list_example', # String | A list of reader names for which to search cardholders. For example: `[name1,name2,name3]`. This parameter is interpreted based on `reader_name_list_search_type`. 
  reader_name_list_search_type: 'any_of', # String | The type of reader name list search to apply. This parameter describes how to interpret `reader_name_list`. - `\"any_of\"` - Finds cardholders with ***any of*** the readers in   `reader_name_list` (at least one). - `\"none_of\"` - Finds cardholders with ***none of*** the readers in   `reader_name_list`. - `\"all_of\"` - Finds cardholders with ***all of*** the readers in   `reader_name_list`. - `\"exactly\"` - Finds cardholders with ***exactly*** the readers in   `reader_name_list` (all of the access levels and no others). 
  timezone_name_list: 'timezone_name_list_example', # String | A list of timezone names for which to search cardholders. For example: `[name1,name2,name3]`. This parameter is interpreted based on `timezone_name_list_search_type`. 
  timezone_name_list_search_type: 'any_of', # String | The type of timezone name list search to apply. This parameter describes how to interpret `timezone_name_list`. - `\"any_of\"` - Finds cardholders with ***any of*** the timezones in   `timezone_name_list` (at least one). - `\"none_of\"` - Finds cardholders with ***none of*** the timezones in   `timezone_name_list`. - `\"all_of\"` - Finds cardholders with ***all of*** the timezones in   `timezone_name_list`. - `\"exactly\"` - Finds cardholders with ***exactly*** the timezones in   `timezone_name_list` (all of the access levels and no others). 
  page_number: 56, # Integer | The page number to be returned (starts at 1).
  page_size: 56, # Integer | The number of items to be returned per page.
  order_by: 'order_by_example', # String | The field(s) to use when sorting the results.
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true, # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
  operation_guid: 'operation_guid_example', # String | This GUID, formatted as \"00000000-0000-0000-0000-000000000000\", can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID.
  operation_description: 'operation_description_example' # String | Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description.
}

begin
  #Advanced cardholder search
  result = api_instance.get_cardholder_search(version, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling InstancesApi->get_cardholder_search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **auto_load_badge** | **BOOLEAN**| A flag indicating whether to load the badges assigned to cardholders in the response. | [optional] 
 **auto_load_multimedia_object** | **BOOLEAN**| A flag indicating whether to load the multimedia objects such as pictures and signatures assigned to cardholders in the response. | [optional] 
 **auto_load_access_level** | **BOOLEAN**| A flag indicating whether to load the access levels assigned to cardholders in the response. | [optional] 
 **auto_load_reader** | **BOOLEAN**| A flag indicating whether to load the readers assigned to access levels in the response. | [optional] 
 **auto_load_timezone** | **BOOLEAN**| A flag indicating whether to load the timezones assigned to access levels in the response. | [optional] 
 **auto_load_timezone_interval** | **BOOLEAN**| A flag indicating whether to load the timezone intervals related to timezone. | [optional] 
 **cardholder_filter** | **String**| The filter based on Cardholder properties. | [optional] 
 **badge_filter** | **String**| The filter based on Badge properties. | [optional] 
 **sum_badge_filter** | **BOOLEAN**| A flag indicating whether to join cardholder and badge filter with OR instead of AND operator. | [optional] 
 **has_badges** | **BOOLEAN**| Boolean search for the presence of a Badge. | [optional] 
 **has_only_inactive_badges** | **BOOLEAN**| Boolean search for Cardholders which have only inactive badges. | [optional] 
 **last_activity_filter** | **String**| The filter based on Lnl_BadgeLastLocation properties. | [optional] 
 **has_photo** | **BOOLEAN**| Boolean search for the presence of a cardholder photo. | [optional] 
 **has_signature** | **BOOLEAN**| Boolean search for the presence of a cardholder signature. | [optional] 
 **has_any_directory_account** | **BOOLEAN**| Boolean search for the presence of a cardholder directory account. | [optional] 
 **access_level_filter** | **String**| The filter based on Access Level properties. | [optional] 
 **access_level_list** | **String**| A list of access level IDs for which to search cardholders. For example: &#x60;[1,2,3]&#x60;. This parameter is interpreted based on &#x60;access_level_search_type&#x60;.  | [optional] 
 **access_level_search_type** | **String**| The type of access level search to apply. This parameter describes how to interpret &#x60;access_level_list&#x60;. - &#x60;\&quot;any_of\&quot;&#x60; - Finds cardholders with ***any of*** the access levels in   &#x60;access_level_list&#x60; (at least one). - &#x60;\&quot;none_of\&quot;&#x60; - Finds cardholders with ***none of*** the access levels in   &#x60;access_level_list&#x60;. - &#x60;\&quot;all_of\&quot;&#x60; - Finds cardholders with ***all of*** the access levels in   &#x60;access_level_list&#x60;. - &#x60;\&quot;exactly\&quot;&#x60; - Finds cardholders with ***exactly*** the access levels in   &#x60;access_level_list&#x60; (all of the access levels and no others).  | [optional] [default to any_of]
 **reader_filter** | **String**| The filter based on Reader properties. | [optional] 
 **reader_name_list** | **String**| A list of reader names for which to search cardholders. For example: &#x60;[name1,name2,name3]&#x60;. This parameter is interpreted based on &#x60;reader_name_list_search_type&#x60;.  | [optional] 
 **reader_name_list_search_type** | **String**| The type of reader name list search to apply. This parameter describes how to interpret &#x60;reader_name_list&#x60;. - &#x60;\&quot;any_of\&quot;&#x60; - Finds cardholders with ***any of*** the readers in   &#x60;reader_name_list&#x60; (at least one). - &#x60;\&quot;none_of\&quot;&#x60; - Finds cardholders with ***none of*** the readers in   &#x60;reader_name_list&#x60;. - &#x60;\&quot;all_of\&quot;&#x60; - Finds cardholders with ***all of*** the readers in   &#x60;reader_name_list&#x60;. - &#x60;\&quot;exactly\&quot;&#x60; - Finds cardholders with ***exactly*** the readers in   &#x60;reader_name_list&#x60; (all of the access levels and no others).  | [optional] [default to any_of]
 **timezone_name_list** | **String**| A list of timezone names for which to search cardholders. For example: &#x60;[name1,name2,name3]&#x60;. This parameter is interpreted based on &#x60;timezone_name_list_search_type&#x60;.  | [optional] 
 **timezone_name_list_search_type** | **String**| The type of timezone name list search to apply. This parameter describes how to interpret &#x60;timezone_name_list&#x60;. - &#x60;\&quot;any_of\&quot;&#x60; - Finds cardholders with ***any of*** the timezones in   &#x60;timezone_name_list&#x60; (at least one). - &#x60;\&quot;none_of\&quot;&#x60; - Finds cardholders with ***none of*** the timezones in   &#x60;timezone_name_list&#x60;. - &#x60;\&quot;all_of\&quot;&#x60; - Finds cardholders with ***all of*** the timezones in   &#x60;timezone_name_list&#x60;. - &#x60;\&quot;exactly\&quot;&#x60; - Finds cardholders with ***exactly*** the timezones in   &#x60;timezone_name_list&#x60; (all of the access levels and no others).  | [optional] [default to any_of]
 **page_number** | **Integer**| The page number to be returned (starts at 1). | [optional] 
 **page_size** | **Integer**| The number of items to be returned per page. | [optional] 
 **order_by** | **String**| The field(s) to use when sorting the results. | [optional] 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 
 **operation_guid** | **String**| This GUID, formatted as \&quot;00000000-0000-0000-0000-000000000000\&quot;, can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID. | [optional] 
 **operation_description** | **String**| Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description. | [optional] 

### Return type

[**PagedInstances**](PagedInstances.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_count**
> InlineResponse2009 get_count(type_name, version, opts)

Get count

Gets the number of instances of a given type.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSdk.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSdk::InstancesApi.new
type_name = 'type_name_example' # String | 
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  filter: 'filter_example', # String | 
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Get count
  result = api_instance.get_count(type_name, version, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling InstancesApi->get_count: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type_name** | **String**|  | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **filter** | **String**|  | [optional] 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_device_groups**
> GetDeviceGroupsResponse get_device_groups(version, opts)

Get device groups

Used to retrieve a page of device groups.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSdk.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSdk::InstancesApi.new
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  filter: 'filter_example', # String | The filter based on device group properties.
  page_number: 56, # Integer | The page number to be returned (starts at 1).
  page_size: 56, # Integer | The number of items to be returned per page.
  order_by: 'order_by_example', # String | The field(s) to use when sorting the results.
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Get device groups
  result = api_instance.get_device_groups(version, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling InstancesApi->get_device_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **filter** | **String**| The filter based on device group properties. | [optional] 
 **page_number** | **Integer**| The page number to be returned (starts at 1). | [optional] 
 **page_size** | **Integer**| The number of items to be returned per page. | [optional] 
 **order_by** | **String**| The field(s) to use when sorting the results. | [optional] 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**GetDeviceGroupsResponse**](GetDeviceGroupsResponse.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
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
LenelSdk.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSdk::InstancesApi.new
type_name = 'type_name_example' # String | 
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  filter: 'filter_example', # String | 
  page_number: 56, # Integer | The page number to be returned (starts at 1).
  page_size: 56, # Integer | The number of items to be returned per page.
  order_by: 'order_by_example', # String | The field(s) to use when sorting the results.
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true, # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
  bulk_export: true, # BOOLEAN | Bulk export feature activation (requires ***version>=1.9***). 
  binary_encoding: 'binary_encoding_example', # String | Encoding method for binary data, ***base64*** by default.          
  data_separator: 'data_separator_example', # String | One or more special characters used to separate fields in a line, ***~*** (tilde) by default. 
  select: 'select_example', # String | List of fields to download, separated by commas. 
  null_value_writing: true, # BOOLEAN | Database `NULL` value handling in resulting csv file, ***false*** by default: - `false` - columns with null value will be skipped - `true`  - columns with null value will be marked as `<null>` 
  chunk_size: 56, # Integer | Maximum size of a single result file, expressed in MiB (the size applies to the resulting file before data compression). Unlimited if set to 0.          
  sql_query_timeout: 56, # Integer | Timeout for SQL query request in seconds.          
  max_thread_count: 56, # Integer | Number of tasks used to process a single request. Limited by MaxProcessingThreadCount parameter (20 by default).         
  output_compression: true # BOOLEAN | Enable resulting csv file compression, ***false*** by default. 
}

begin
  #Get instances
  result = api_instance.get_instances(type_name, version, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling InstancesApi->get_instances: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type_name** | **String**|  | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **filter** | **String**|  | [optional] 
 **page_number** | **Integer**| The page number to be returned (starts at 1). | [optional] 
 **page_size** | **Integer**| The number of items to be returned per page. | [optional] 
 **order_by** | **String**| The field(s) to use when sorting the results. | [optional] 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 
 **bulk_export** | **BOOLEAN**| Bulk export feature activation (requires ***version&gt;&#x3D;1.9***).  | [optional] 
 **binary_encoding** | **String**| Encoding method for binary data, ***base64*** by default.           | [optional] 
 **data_separator** | **String**| One or more special characters used to separate fields in a line, ***~*** (tilde) by default.  | [optional] 
 **select** | **String**| List of fields to download, separated by commas.  | [optional] 
 **null_value_writing** | **BOOLEAN**| Database &#x60;NULL&#x60; value handling in resulting csv file, ***false*** by default: - &#x60;false&#x60; - columns with null value will be skipped - &#x60;true&#x60;  - columns with null value will be marked as &#x60;&lt;null&gt;&#x60;  | [optional] 
 **chunk_size** | **Integer**| Maximum size of a single result file, expressed in MiB (the size applies to the resulting file before data compression). Unlimited if set to 0.           | [optional] 
 **sql_query_timeout** | **Integer**| Timeout for SQL query request in seconds.           | [optional] 
 **max_thread_count** | **Integer**| Number of tasks used to process a single request. Limited by MaxProcessingThreadCount parameter (20 by default).          | [optional] 
 **output_compression** | **BOOLEAN**| Enable resulting csv file compression, ***false*** by default.  | [optional] 

### Return type

[**PagedInstances**](PagedInstances.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
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
LenelSdk.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSdk::InstancesApi.new
filter = 'filter_example' # String | The filter based on logged event properties.
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  monitoring_zone_id: 56, # Integer | id of selected monitoring zone
  page_number: 56, # Integer | The page number to be returned (starts at 1).
  page_size: 56, # Integer | The number of items to be returned per page.
  order_by: 'order_by_example', # String | The field(s) to use when sorting the results.
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Get logged events
  result = api_instance.get_logged_events(filter, version, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling InstancesApi->get_logged_events: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**| The filter based on logged event properties. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **monitoring_zone_id** | **Integer**| id of selected monitoring zone | [optional] 
 **page_number** | **Integer**| The page number to be returned (starts at 1). | [optional] 
 **page_size** | **Integer**| The number of items to be returned per page. | [optional] 
 **order_by** | **String**| The field(s) to use when sorting the results. | [optional] 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**GetLoggedEvents**](GetLoggedEvents.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
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
LenelSdk.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSdk::InstancesApi.new
badgekey = 56 # Integer | The badgekey of the badge assigned to the mobile devices you want to get from OnGuard.
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #A list of mobile devices for a badge.
  result = api_instance.get_mobile_devices(badgekey, version, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling InstancesApi->get_mobile_devices: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **badgekey** | **Integer**| The badgekey of the badge assigned to the mobile devices you want to get from OnGuard. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**BadgeMobileDevices**](BadgeMobileDevices.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
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
LenelSdk.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSdk::InstancesApi.new
badge_print_request_id = 'badge_print_request_id_example' # String | The badge print request ID represents a unique identifier associated with a badge print request.
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Retrieve a specific badge print request
  result = api_instance.get_print_request(badge_print_request_id, version, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling InstancesApi->get_print_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **badge_print_request_id** | **String**| The badge print request ID represents a unique identifier associated with a badge print request. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**BadgePrintRequestResponse**](BadgePrintRequestResponse.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
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
LenelSdk.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSdk::InstancesApi.new
type_name = 'type_name_example' # String | 
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true, # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
  operation_guid: 'operation_guid_example', # String | This GUID, formatted as \"00000000-0000-0000-0000-000000000000\", can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID.
  operation_description: 'operation_description_example' # String | Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description.
}

begin
  #Get type details
  result = api_instance.get_type(type_name, version, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling InstancesApi->get_type: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type_name** | **String**|  | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 
 **operation_guid** | **String**| This GUID, formatted as \&quot;00000000-0000-0000-0000-000000000000\&quot;, can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID. | [optional] 
 **operation_description** | **String**| Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description. | [optional] 

### Return type

[**Type**](Type.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
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
LenelSdk.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSdk::InstancesApi.new
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Get type list
  result = api_instance.get_types(version, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling InstancesApi->get_types: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**Types**](Types.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
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
LenelSdk.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSdk::InstancesApi.new
id = 56 # Integer | The panel ID of the recorder for which the authentication data is being requested.
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true, # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
  operation_guid: 'operation_guid_example', # String | This GUID, formatted as \"00000000-0000-0000-0000-000000000000\", can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID.
  operation_description: 'operation_description_example', # String | Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description.
  authentication_data: 'authentication_data_example' # String | improve audit record creation for get video_recorder auth data api.For more information please refer to OpenAccess documentation, section Operation Description.
}

begin
  #Get video recorder authentication data
  result = api_instance.get_video_recorder_authentication_data(id, version, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling InstancesApi->get_video_recorder_authentication_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The panel ID of the recorder for which the authentication data is being requested. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 
 **operation_guid** | **String**| This GUID, formatted as \&quot;00000000-0000-0000-0000-000000000000\&quot;, can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID. | [optional] 
 **operation_description** | **String**| Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description. | [optional] 
 **authentication_data** | **String**| improve audit record creation for get video_recorder auth data api.For more information please refer to OpenAccess documentation, section Operation Description. | [optional] 

### Return type

[**VideoRecorderAuthenticationData**](VideoRecorderAuthenticationData.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_video_recorder_credentials**
> VideoRecorderCredentials get_video_recorder_credentials(id, realm_value, version, opts)

Get video recorder credentials

Retrieves username in plain text and hash of credentials given a panel id for secure connection between MM and recorders.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSdk.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSdk::InstancesApi.new
id = 56 # Integer | The panel ID of the recorder for which credentials are required.
realm_value = 'realm_value_example' # String | A string that is passed from MM
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Get video recorder credentials
  result = api_instance.get_video_recorder_credentials(id, realm_value, version, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling InstancesApi->get_video_recorder_credentials: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The panel ID of the recorder for which credentials are required. | 
 **realm_value** | **String**| A string that is passed from MM | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**VideoRecorderCredentials**](VideoRecorderCredentials.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
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
LenelSdk.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSdk::InstancesApi.new
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  filter: 'filter_example', # String | The filter based on video recorder properties.
  page_number: 56, # Integer | The page number to be returned (starts at 1).
  page_size: 56, # Integer | The number of items to be returned per page.
  order_by: 'order_by_example', # String | The field(s) to use when sorting the results.
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true, # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
  operation_guid: 'operation_guid_example', # String | This GUID, formatted as \"00000000-0000-0000-0000-000000000000\", can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID.
  operation_description: 'operation_description_example' # String | Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description.
}

begin
  #Get video recorders
  result = api_instance.get_video_recorders(version, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling InstancesApi->get_video_recorders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **filter** | **String**| The filter based on video recorder properties. | [optional] 
 **page_number** | **Integer**| The page number to be returned (starts at 1). | [optional] 
 **page_size** | **Integer**| The number of items to be returned per page. | [optional] 
 **order_by** | **String**| The field(s) to use when sorting the results. | [optional] 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 
 **operation_guid** | **String**| This GUID, formatted as \&quot;00000000-0000-0000-0000-000000000000\&quot;, can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID. | [optional] 
 **operation_description** | **String**| Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description. | [optional] 

### Return type

[**GetVideoRecorders**](GetVideoRecorders.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_visit_event_status**
> GetVisitEventStatus get_visit_event_status(version, opts)

Get VisitEvent status

Used to retrieve a page of VisitEvents with their status.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSdk.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSdk::InstancesApi.new
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  filter: 'filter_example', # String | The filter based on Lnl_VisitEvent properties.
  visitevent_status_list: ['visitevent_status_list_example'], # Array<String> | The list of visitevent status names to search. For example: `[\"active\",\"finished\"]`. Allowed values: `\"scheduled\"`, `\"active\"`, `\"finished\"`. 
  visit_status_list: ['visit_status_list_example'], # Array<String> | The list of visit status names to search. For example: `[\"active\",\"overstayed\"]`. Allowed values: `\"scheduled\"`, `\"late\"`, `\"active\"`, `\"overstayed\"`, `\"finished\"`. 
  visitor_id_list: [56], # Array<Integer> | The list of visitor IDs in the format: `[1,2,3,...]`. Allows to search only statuses of those visit events in which the selected visitor(s) take a part. 
  page_number: 56, # Integer | The page number to be returned (starts at 1).
  page_size: 56, # Integer | The number of items to be returned per page.
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Get VisitEvent status
  result = api_instance.get_visit_event_status(version, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling InstancesApi->get_visit_event_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **filter** | **String**| The filter based on Lnl_VisitEvent properties. | [optional] 
 **visitevent_status_list** | [**Array&lt;String&gt;**](String.md)| The list of visitevent status names to search. For example: &#x60;[\&quot;active\&quot;,\&quot;finished\&quot;]&#x60;. Allowed values: &#x60;\&quot;scheduled\&quot;&#x60;, &#x60;\&quot;active\&quot;&#x60;, &#x60;\&quot;finished\&quot;&#x60;.  | [optional] 
 **visit_status_list** | [**Array&lt;String&gt;**](String.md)| The list of visit status names to search. For example: &#x60;[\&quot;active\&quot;,\&quot;overstayed\&quot;]&#x60;. Allowed values: &#x60;\&quot;scheduled\&quot;&#x60;, &#x60;\&quot;late\&quot;&#x60;, &#x60;\&quot;active\&quot;&#x60;, &#x60;\&quot;overstayed\&quot;&#x60;, &#x60;\&quot;finished\&quot;&#x60;.  | [optional] 
 **visitor_id_list** | [**Array&lt;Integer&gt;**](Integer.md)| The list of visitor IDs in the format: &#x60;[1,2,3,...]&#x60;. Allows to search only statuses of those visit events in which the selected visitor(s) take a part.  | [optional] 
 **page_number** | **Integer**| The page number to be returned (starts at 1). | [optional] 
 **page_size** | **Integer**| The number of items to be returned per page. | [optional] 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**GetVisitEventStatus**](GetVisitEventStatus.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_visitor_search**
> PagedInstances get_visitor_search(version, opts)

Advanced visitor search

Performs an advanced visitor search, optionally searching on Badge fields.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSdk.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSdk::InstancesApi.new
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  auto_load_badge: true, # BOOLEAN | A flag indicating whether to load the badges assigned to visitors in the response.
  auto_load_multimedia_object: true, # BOOLEAN | A flag indicating whether to load the multimedia objects such as pictures and signatures assigned to visitors in the response.
  auto_load_access_level: true, # BOOLEAN | A flag indicating whether to load the access levels assigned to visitors in the response.
  auto_load_reader: true, # BOOLEAN | A flag indicating whether to load the readers assigned to access levels in the response.
  auto_load_timezone: true, # BOOLEAN | A flag indicating whether to load the timezones assigned to access levels in the response.
  auto_load_timezone_interval: true, # BOOLEAN | A flag indicating whether to load the timezone intervals related to timezone.
  visitor_filter: 'visitor_filter_example', # String | The filter based on Visitor properties.
  badge_filter: 'badge_filter_example', # String | The filter based on Badge properties.
  sum_badge_filter: true, # BOOLEAN | A flag indicating whether to join visitor and badge filter with OR instead of AND operator.
  has_badges: true, # BOOLEAN | Boolean search for the presence of a Badge.
  has_photo: true, # BOOLEAN | Boolean search for the presence of a visitor photo.
  has_signature: true, # BOOLEAN | Boolean search for the presence of a visitor signature.
  has_any_directory_account: true, # BOOLEAN | Boolean search for the presence of a visitor directory account.
  access_level_filter: 'access_level_filter_example', # String | The filter based on Access Level properties.
  access_level_list: 'access_level_list_example', # String | A list of access level IDs for which to search visitors. For example: `[1,2,3]`. This parameter is interpreted based on `access_level_search_type`. 
  access_level_search_type: 'any_of', # String | The type of access level search to apply. This parameter describes how to interpret `access_level_list`. - `\"any_of\"` - Finds visitors with ***any of*** the access levels in   `access_level_list` (at least one). - `\"none_of\"` - Finds visitors with ***none of*** the access levels in   `access_level_list`. - `\"all_of\"` - Finds visitors with ***all of*** the access levels in   `access_level_list`. - `\"exactly\"` - Finds visitors with ***exactly*** the access levels in   `access_level_list` (all of the access levels and no others). 
  reader_filter: 'reader_filter_example', # String | The filter based on Reader properties.
  reader_name_list: 'reader_name_list_example', # String | A list of reader names for which to search visitors. For example: `[name1,name2,name3]`. This parameter is interpreted based on `reader_name_list_search_type`. 
  reader_name_list_search_type: 'any_of', # String | The type of reader name list search to apply. This parameter describes how to interpret `reader_name_list`. - `\"any_of\"` - Finds visitors with ***any of*** the readers in   `reader_name_list` (at least one). - `\"none_of\"` - Finds visitors with ***none of*** the readers in   `reader_name_list`. - `\"all_of\"` - Finds visitors with ***all of*** the readers in   `reader_name_list`. - `\"exactly\"` - Finds visitors with ***exactly*** the readers in   `reader_name_list` (all of the access levels and no others). 
  timezone_name_list: 'timezone_name_list_example', # String | A list of timezone names for which to search visitors. For example: `[name1,name2,name3]`. This parameter is interpreted based on `timezone_name_list_search_type`. 
  timezone_name_list_search_type: 'any_of', # String | The type of timezone name list search to apply. This parameter describes how to interpret `timezone_name_list`. - `\"any_of\"` - Finds visitors with ***any of*** the timezones in   `timezone_name_list` (at least one). - `\"none_of\"` - Finds visitors with ***none of*** the timezones in   `timezone_name_list`. - `\"all_of\"` - Finds visitors with ***all of*** the timezones in   `timezone_name_list`. - `\"exactly\"` - Finds visitors with ***exactly*** the timezones in   `timezone_name_list` (all of the access levels and no others). 
  page_number: 56, # Integer | The page number to be returned (starts at 1).
  page_size: 56, # Integer | The number of items to be returned per page.
  order_by: 'order_by_example', # String | The field(s) to use when sorting the results.
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Advanced visitor search
  result = api_instance.get_visitor_search(version, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling InstancesApi->get_visitor_search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **auto_load_badge** | **BOOLEAN**| A flag indicating whether to load the badges assigned to visitors in the response. | [optional] 
 **auto_load_multimedia_object** | **BOOLEAN**| A flag indicating whether to load the multimedia objects such as pictures and signatures assigned to visitors in the response. | [optional] 
 **auto_load_access_level** | **BOOLEAN**| A flag indicating whether to load the access levels assigned to visitors in the response. | [optional] 
 **auto_load_reader** | **BOOLEAN**| A flag indicating whether to load the readers assigned to access levels in the response. | [optional] 
 **auto_load_timezone** | **BOOLEAN**| A flag indicating whether to load the timezones assigned to access levels in the response. | [optional] 
 **auto_load_timezone_interval** | **BOOLEAN**| A flag indicating whether to load the timezone intervals related to timezone. | [optional] 
 **visitor_filter** | **String**| The filter based on Visitor properties. | [optional] 
 **badge_filter** | **String**| The filter based on Badge properties. | [optional] 
 **sum_badge_filter** | **BOOLEAN**| A flag indicating whether to join visitor and badge filter with OR instead of AND operator. | [optional] 
 **has_badges** | **BOOLEAN**| Boolean search for the presence of a Badge. | [optional] 
 **has_photo** | **BOOLEAN**| Boolean search for the presence of a visitor photo. | [optional] 
 **has_signature** | **BOOLEAN**| Boolean search for the presence of a visitor signature. | [optional] 
 **has_any_directory_account** | **BOOLEAN**| Boolean search for the presence of a visitor directory account. | [optional] 
 **access_level_filter** | **String**| The filter based on Access Level properties. | [optional] 
 **access_level_list** | **String**| A list of access level IDs for which to search visitors. For example: &#x60;[1,2,3]&#x60;. This parameter is interpreted based on &#x60;access_level_search_type&#x60;.  | [optional] 
 **access_level_search_type** | **String**| The type of access level search to apply. This parameter describes how to interpret &#x60;access_level_list&#x60;. - &#x60;\&quot;any_of\&quot;&#x60; - Finds visitors with ***any of*** the access levels in   &#x60;access_level_list&#x60; (at least one). - &#x60;\&quot;none_of\&quot;&#x60; - Finds visitors with ***none of*** the access levels in   &#x60;access_level_list&#x60;. - &#x60;\&quot;all_of\&quot;&#x60; - Finds visitors with ***all of*** the access levels in   &#x60;access_level_list&#x60;. - &#x60;\&quot;exactly\&quot;&#x60; - Finds visitors with ***exactly*** the access levels in   &#x60;access_level_list&#x60; (all of the access levels and no others).  | [optional] [default to any_of]
 **reader_filter** | **String**| The filter based on Reader properties. | [optional] 
 **reader_name_list** | **String**| A list of reader names for which to search visitors. For example: &#x60;[name1,name2,name3]&#x60;. This parameter is interpreted based on &#x60;reader_name_list_search_type&#x60;.  | [optional] 
 **reader_name_list_search_type** | **String**| The type of reader name list search to apply. This parameter describes how to interpret &#x60;reader_name_list&#x60;. - &#x60;\&quot;any_of\&quot;&#x60; - Finds visitors with ***any of*** the readers in   &#x60;reader_name_list&#x60; (at least one). - &#x60;\&quot;none_of\&quot;&#x60; - Finds visitors with ***none of*** the readers in   &#x60;reader_name_list&#x60;. - &#x60;\&quot;all_of\&quot;&#x60; - Finds visitors with ***all of*** the readers in   &#x60;reader_name_list&#x60;. - &#x60;\&quot;exactly\&quot;&#x60; - Finds visitors with ***exactly*** the readers in   &#x60;reader_name_list&#x60; (all of the access levels and no others).  | [optional] [default to any_of]
 **timezone_name_list** | **String**| A list of timezone names for which to search visitors. For example: &#x60;[name1,name2,name3]&#x60;. This parameter is interpreted based on &#x60;timezone_name_list_search_type&#x60;.  | [optional] 
 **timezone_name_list_search_type** | **String**| The type of timezone name list search to apply. This parameter describes how to interpret &#x60;timezone_name_list&#x60;. - &#x60;\&quot;any_of\&quot;&#x60; - Finds visitors with ***any of*** the timezones in   &#x60;timezone_name_list&#x60; (at least one). - &#x60;\&quot;none_of\&quot;&#x60; - Finds visitors with ***none of*** the timezones in   &#x60;timezone_name_list&#x60;. - &#x60;\&quot;all_of\&quot;&#x60; - Finds visitors with ***all of*** the timezones in   &#x60;timezone_name_list&#x60;. - &#x60;\&quot;exactly\&quot;&#x60; - Finds visitors with ***exactly*** the timezones in   &#x60;timezone_name_list&#x60; (all of the access levels and no others).  | [optional] [default to any_of]
 **page_number** | **Integer**| The page number to be returned (starts at 1). | [optional] 
 **page_size** | **Integer**| The number of items to be returned per page. | [optional] 
 **order_by** | **String**| The field(s) to use when sorting the results. | [optional] 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**PagedInstances**](PagedInstances.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **issue_mobile_credential**
> IssueMobileCredential issue_mobile_credential(bodyversionbadgekey, opts)

Issues mobile credential

Issues a credential to a mobile device of the person with the given badge.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSdk.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSdk::InstancesApi.new
body = LenelSdk::BadgekeyIssueMobileCredentialBody.new # BadgekeyIssueMobileCredentialBody | 
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
badgekey = 56 # Integer | 
opts = { 
  queue: true # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Issues mobile credential
  result = api_instance.issue_mobile_credential(bodyversionbadgekey, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling InstancesApi->issue_mobile_credential: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BadgekeyIssueMobileCredentialBody**](BadgekeyIssueMobileCredentialBody.md)|  | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **badgekey** | **Integer**|  | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**IssueMobileCredential**](IssueMobileCredential.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **modify_access_level**
> SharedResponseDefinition modify_access_level(versionid, opts)

Modify an access level

Modifies the access level with the given ID. 

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSdk.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSdk::InstancesApi.new
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
id = 56 # Integer | Id of the access level to modify.
opts = { 
  body: LenelSdk::AccessLevel.new # AccessLevel | The modified access level.
  queue: true # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
  operation_guid: 'operation_guid_example' # String | This GUID, formatted as \"00000000-0000-0000-0000-000000000000\", can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID.
  operation_description: 'operation_description_example' # String | Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description.
}

begin
  #Modify an access level
  result = api_instance.modify_access_level(versionid, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling InstancesApi->modify_access_level: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **id** | **Integer**| Id of the access level to modify. | 
 **body** | [**AccessLevel**](AccessLevel.md)| The modified access level. | [optional] 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 
 **operation_guid** | **String**| This GUID, formatted as \&quot;00000000-0000-0000-0000-000000000000\&quot;, can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID. | [optional] 
 **operation_description** | **String**| Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description. | [optional] 

### Return type

[**SharedResponseDefinition**](SharedResponseDefinition.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **modify_device_group**
> AddModifyDeviceGroupResponse modify_device_group(bodyversion, opts)

Modify device group

Modify the existing device group with the given ID.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSdk.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSdk::InstancesApi.new
body = LenelSdk::ModifyDeviceGroupRequest.new # ModifyDeviceGroupRequest | 
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
  operation_guid: 'operation_guid_example' # String | This GUID, formatted as \"00000000-0000-0000-0000-000000000000\", can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID.
  operation_description: 'operation_description_example' # String | Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description.
}

begin
  #Modify device group
  result = api_instance.modify_device_group(bodyversion, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling InstancesApi->modify_device_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ModifyDeviceGroupRequest**](ModifyDeviceGroupRequest.md)|  | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 
 **operation_guid** | **String**| This GUID, formatted as \&quot;00000000-0000-0000-0000-000000000000\&quot;, can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID. | [optional] 
 **operation_description** | **String**| Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description. | [optional] 

### Return type

[**AddModifyDeviceGroupResponse**](AddModifyDeviceGroupResponse.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **modify_instance**
> Instance modify_instance(bodytype_nameversion, opts)

Modify an instance

Modifies an instance of the given type.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSdk.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSdk::InstancesApi.new
body = LenelSdk::InstanceDefinition.new # InstanceDefinition | The updated instance.
type_name = 'type_name_example' # String | 
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
  operation_guid: 'operation_guid_example' # String | This GUID, formatted as \"00000000-0000-0000-0000-000000000000\", can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID.
  operation_description: 'operation_description_example' # String | Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description.
}

begin
  #Modify an instance
  result = api_instance.modify_instance(bodytype_nameversion, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling InstancesApi->modify_instance: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InstanceDefinition**](InstanceDefinition.md)| The updated instance. | 
 **type_name** | **String**|  | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 
 **operation_guid** | **String**| This GUID, formatted as \&quot;00000000-0000-0000-0000-000000000000\&quot;, can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID. | [optional] 
 **operation_description** | **String**| Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description. | [optional] 

### Return type

[**Instance**](Instance.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **modify_property_bulk_update**
> SharedResponseDefinition modify_property_bulk_update(bodytype_nameversion, opts)

Bulk update the instance property

Bulk update the instance property with the given instance ids.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSdk.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSdk::InstancesApi.new
body = LenelSdk::PropertyBulkUpdateBody.new # PropertyBulkUpdateBody | 
type_name = 'type_name_example' # String | Type name.
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  id_list: [56] # Array<Integer> | List of instance IDs in the format `[1,2,3,...]`. If no list is provided, all instances will be affected.
  queue: true # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Bulk update the instance property
  result = api_instance.modify_property_bulk_update(bodytype_nameversion, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling InstancesApi->modify_property_bulk_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PropertyBulkUpdateBody**](PropertyBulkUpdateBody.md)|  | 
 **type_name** | **String**| Type name. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **id_list** | [**Array&lt;Integer&gt;**](Integer.md)| List of instance IDs in the format &#x60;[1,2,3,...]&#x60;. If no list is provided, all instances will be affected. | [optional] 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**SharedResponseDefinition**](SharedResponseDefinition.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **print_request**
> BadgePrintRequestResponse print_request(versionbadgekey, opts)

Submit print request for a given badge

Submit a request to print the badge.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSdk.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSdk::InstancesApi.new
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
badgekey = 56 # Integer | The badge key of the badge associated with an OnGuard cardholder.
opts = { 
  body: LenelSdk::BadgekeyPrintRequestBody.new # BadgekeyPrintRequestBody | Additional parameters associated with a badge print request.
  queue: true # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Submit print request for a given badge
  result = api_instance.print_request(versionbadgekey, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling InstancesApi->print_request: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **badgekey** | **Integer**| The badge key of the badge associated with an OnGuard cardholder. | 
 **body** | [**BadgekeyPrintRequestBody**](BadgekeyPrintRequestBody.md)| Additional parameters associated with a badge print request. | [optional] 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**BadgePrintRequestResponse**](BadgePrintRequestResponse.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **send_incoming_events**
> SendIncomingEventsResponse send_incoming_events(version, opts)

Send incoming events

Send a list of events to OnGuard.

### Example
```ruby
# load the gem
require 'lenel_sdk'
# setup authorization
LenelSdk.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = LenelSdk::InstancesApi.new
version = '1.1' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  body: LenelSdk::NewIncomingEvents.new # NewIncomingEvents | The new incoming events.
  queue: true # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Send incoming events
  result = api_instance.send_incoming_events(version, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling InstancesApi->send_incoming_events: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | [default to 1.1]
 **body** | [**NewIncomingEvents**](NewIncomingEvents.md)| The new incoming events. | [optional] 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**SendIncomingEventsResponse**](SendIncomingEventsResponse.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



