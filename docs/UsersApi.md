# LenelSdk::UsersApi

All URIs are relative to */api/access/onguard/openaccess*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_managed_access_levels**](UsersApi.md#add_managed_access_levels) | **POST** /user/{id}/managed_access_levels | Add managed access levels
[**add_user_preferences**](UsersApi.md#add_user_preferences) | **POST** /user_preferences | Add user preference
[**add_user_segments**](UsersApi.md#add_user_segments) | **POST** /user/{id}/segments | Add user segments
[**delete_managed_access_levels**](UsersApi.md#delete_managed_access_levels) | **DELETE** /user/{id}/managed_access_levels | Delete managed access levels
[**delete_user_preferences**](UsersApi.md#delete_user_preferences) | **DELETE** /user_preferences | Delete user preference
[**delete_user_segments**](UsersApi.md#delete_user_segments) | **DELETE** /user/{id}/segments | Delete user segments
[**get_editable_segments**](UsersApi.md#get_editable_segments) | **GET** /editable_segments | Get editable segments
[**get_logged_in_user**](UsersApi.md#get_logged_in_user) | **GET** /logged_in_user | Get logged in user
[**get_managed_access_levels**](UsersApi.md#get_managed_access_levels) | **GET** /user/{id}/managed_access_levels | Get managed access levels
[**get_managers_of_access_level**](UsersApi.md#get_managers_of_access_level) | **GET** /managers_of_access_level | Get managers of access level
[**get_restricted_segments**](UsersApi.md#get_restricted_segments) | **GET** /restricted_segments | Get restricted segments
[**get_user_preferences**](UsersApi.md#get_user_preferences) | **GET** /user_preferences | Get user preferences
[**get_user_segments**](UsersApi.md#get_user_segments) | **GET** /user/{id}/segments | Get user segments
[**getuser**](UsersApi.md#getuser) | **GET** /user/{id} | Get extended properties for a user
[**modify_user_password**](UsersApi.md#modify_user_password) | **PUT** /user_password | Modify user password
[**modify_user_preferences**](UsersApi.md#modify_user_preferences) | **PUT** /user_preferences | Modify user preference
[**modifyuser**](UsersApi.md#modifyuser) | **PUT** /user/{id} | Sets the extended properties for a user

# **add_managed_access_levels**
> SharedResponseDefinition add_managed_access_levels(bodyversionid, opts)

Add managed access levels

Adds to the existing list of access levels a user can manage.

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

api_instance = LenelSdk::UsersApi.new
body = LenelSdk::IdManagedAccessLevelsBody.new # IdManagedAccessLevelsBody | A list of access level IDs the user can manage.
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
id = 'id_example' # String | ID of user to which access level management will be added.
opts = { 
  queue: true # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
  operation_guid: 'operation_guid_example' # String | This GUID, formatted as \"00000000-0000-0000-0000-000000000000\", can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID.
  operation_description: 'operation_description_example' # String | Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description.
}

begin
  #Add managed access levels
  result = api_instance.add_managed_access_levels(bodyversionid, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling UsersApi->add_managed_access_levels: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**IdManagedAccessLevelsBody**](IdManagedAccessLevelsBody.md)| A list of access level IDs the user can manage. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **id** | **String**| ID of user to which access level management will be added. | 
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



# **add_user_preferences**
> AddUserPreferences add_user_preferences(bodyversion, opts)

Add user preference

Adds a user preference.

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

api_instance = LenelSdk::UsersApi.new
body = LenelSdk::UserPreferencesBody1.new # UserPreferencesBody1 | 
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
  operation_guid: 'operation_guid_example' # String | This GUID, formatted as \"00000000-0000-0000-0000-000000000000\", can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID.
  operation_description: 'operation_description_example' # String | Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description.
}

begin
  #Add user preference
  result = api_instance.add_user_preferences(bodyversion, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling UsersApi->add_user_preferences: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserPreferencesBody1**](UserPreferencesBody1.md)|  | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 
 **operation_guid** | **String**| This GUID, formatted as \&quot;00000000-0000-0000-0000-000000000000\&quot;, can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID. | [optional] 
 **operation_description** | **String**| Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description. | [optional] 

### Return type

[**AddUserPreferences**](AddUserPreferences.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_user_segments**
> SharedResponseDefinition add_user_segments(bodyversionid, opts)

Add user segments

Adds to the existing list of segments assigned to a user.

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

api_instance = LenelSdk::UsersApi.new
body = LenelSdk::IdSegmentsBody.new # IdSegmentsBody | A list of segment IDs that indicate which segments to assign to the user.
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
id = 'id_example' # String | ID of the user to which segment assignment will be added.
opts = { 
  queue: true # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Add user segments
  result = api_instance.add_user_segments(bodyversionid, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling UsersApi->add_user_segments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**IdSegmentsBody**](IdSegmentsBody.md)| A list of segment IDs that indicate which segments to assign to the user. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **id** | **String**| ID of the user to which segment assignment will be added. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**SharedResponseDefinition**](SharedResponseDefinition.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_managed_access_levels**
> SharedResponseDefinition delete_managed_access_levels(bodyversionid, opts)

Delete managed access levels

Deletes specific access levels from the access levels a user can manage.

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

api_instance = LenelSdk::UsersApi.new
body = LenelSdk::IdManagedAccessLevelsBody1.new # IdManagedAccessLevelsBody1 | A list of access level IDs the user cannot manage.
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
id = 'id_example' # String | ID of user from which to remove access level management.
opts = { 
  queue: true # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
  operation_guid: 'operation_guid_example' # String | This GUID, formatted as \"00000000-0000-0000-0000-000000000000\", can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID.
  operation_description: 'operation_description_example' # String | Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description.
}

begin
  #Delete managed access levels
  result = api_instance.delete_managed_access_levels(bodyversionid, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling UsersApi->delete_managed_access_levels: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**IdManagedAccessLevelsBody1**](IdManagedAccessLevelsBody1.md)| A list of access level IDs the user cannot manage. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **id** | **String**| ID of user from which to remove access level management. | 
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



# **delete_user_preferences**
> SharedResponseDefinition delete_user_preferences(preference_id, version, opts)

Delete user preference

Deletes specified preference from the existing user preferences.

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

api_instance = LenelSdk::UsersApi.new
preference_id = 56 # Integer | ID of user preference to be deleted.
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true, # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
  operation_guid: 'operation_guid_example', # String | This GUID, formatted as \"00000000-0000-0000-0000-000000000000\", can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID.
  operation_description: 'operation_description_example' # String | Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description.
}

begin
  #Delete user preference
  result = api_instance.delete_user_preferences(preference_id, version, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling UsersApi->delete_user_preferences: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **preference_id** | **Integer**| ID of user preference to be deleted. | 
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



# **delete_user_segments**
> SharedResponseDefinition delete_user_segments(bodyversionid, opts)

Delete user segments

Deletes specific segments from the segments assigned to a user.

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

api_instance = LenelSdk::UsersApi.new
body = LenelSdk::IdSegmentsBody1.new # IdSegmentsBody1 | A list of segment IDs that indicate which segments to remove from the user.
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
id = 'id_example' # String | ID of user from which to remove segment assignment.
opts = { 
  queue: true # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Delete user segments
  result = api_instance.delete_user_segments(bodyversionid, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling UsersApi->delete_user_segments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**IdSegmentsBody1**](IdSegmentsBody1.md)| A list of segment IDs that indicate which segments to remove from the user. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **id** | **String**| ID of user from which to remove segment assignment. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**SharedResponseDefinition**](SharedResponseDefinition.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_editable_segments**
> Segments get_editable_segments(version, opts)

Get editable segments

Returns a list of segments for which the logged-in user has editable permission, if segmentation is enabled.

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

api_instance = LenelSdk::UsersApi.new
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Get editable segments
  result = api_instance.get_editable_segments(version, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling UsersApi->get_editable_segments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**Segments**](Segments.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_logged_in_user**
> LoggedInUser get_logged_in_user(version, opts)

Get logged in user

Gets details about the logged in user.

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

api_instance = LenelSdk::UsersApi.new
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true, # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
  operation_guid: 'operation_guid_example', # String | This GUID, formatted as \"00000000-0000-0000-0000-000000000000\", can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID.
  operation_description: 'operation_description_example' # String | Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description.
}

begin
  #Get logged in user
  result = api_instance.get_logged_in_user(version, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling UsersApi->get_logged_in_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 
 **operation_guid** | **String**| This GUID, formatted as \&quot;00000000-0000-0000-0000-000000000000\&quot;, can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID. | [optional] 
 **operation_description** | **String**| Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description. | [optional] 

### Return type

[**LoggedInUser**](LoggedInUser.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_managed_access_levels**
> ManagedAccessLevels get_managed_access_levels(id, version, opts)

Get managed access levels

Returns a list of access levels a user can manage and a flag indicating whether the user has AAM view-only access.

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

api_instance = LenelSdk::UsersApi.new
id = 'id_example' # String | ID of user for whom you want a list of access levels the user can manage. If this parameter is not provided, the access level list is provided for the logged in user.
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true, # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
  operation_guid: 'operation_guid_example', # String | This GUID, formatted as \"00000000-0000-0000-0000-000000000000\", can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID.
  operation_description: 'operation_description_example' # String | Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description.
}

begin
  #Get managed access levels
  result = api_instance.get_managed_access_levels(id, version, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling UsersApi->get_managed_access_levels: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of user for whom you want a list of access levels the user can manage. If this parameter is not provided, the access level list is provided for the logged in user. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 
 **operation_guid** | **String**| This GUID, formatted as \&quot;00000000-0000-0000-0000-000000000000\&quot;, can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID. | [optional] 
 **operation_description** | **String**| Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description. | [optional] 

### Return type

[**ManagedAccessLevels**](ManagedAccessLevels.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_managers_of_access_level**
> AccessLevelManagerIds get_managers_of_access_level(access_level_id, version, opts)

Get managers of access level

Returns a list of user IDs for users who can manage the access level.

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

api_instance = LenelSdk::UsersApi.new
access_level_id = 56 # Integer | ID of the access level for which to retrieve users who can manage that access level.
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true, # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
  operation_guid: 'operation_guid_example', # String | This GUID, formatted as \"00000000-0000-0000-0000-000000000000\", can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID.
  operation_description: 'operation_description_example' # String | Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description.
}

begin
  #Get managers of access level
  result = api_instance.get_managers_of_access_level(access_level_id, version, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling UsersApi->get_managers_of_access_level: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_level_id** | **Integer**| ID of the access level for which to retrieve users who can manage that access level. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 
 **operation_guid** | **String**| This GUID, formatted as \&quot;00000000-0000-0000-0000-000000000000\&quot;, can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID. | [optional] 
 **operation_description** | **String**| Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description. | [optional] 

### Return type

[**AccessLevelManagerIds**](AccessLevelManagerIds.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_restricted_segments**
> Segments get_restricted_segments(version, opts)

Get restricted segments

Returns a list of segments related to access levels which the logged-in user is allowed to assign to badges, if segmentation and \"allow levels to be assignable by other segments\" feature are enabled.

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

api_instance = LenelSdk::UsersApi.new
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Get restricted segments
  result = api_instance.get_restricted_segments(version, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling UsersApi->get_restricted_segments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**Segments**](Segments.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_user_preferences**
> GetUserPreferences get_user_preferences(client_name, version, opts)

Get user preferences

Returns user preferences for the current user and application type

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

api_instance = LenelSdk::UsersApi.new
client_name = 'client_name_example' # String | The application client name
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  setting_type: 'setting_type_example', # String | Type of settings to be queried
  is_global: true, # BOOLEAN | A flag indicating whether the preference is global
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true, # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
  operation_guid: 'operation_guid_example', # String | This GUID, formatted as \"00000000-0000-0000-0000-000000000000\", can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID.
  operation_description: 'operation_description_example' # String | Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description.
}

begin
  #Get user preferences
  result = api_instance.get_user_preferences(client_name, version, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling UsersApi->get_user_preferences: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_name** | **String**| The application client name | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **setting_type** | **String**| Type of settings to be queried | [optional] 
 **is_global** | **BOOLEAN**| A flag indicating whether the preference is global | [optional] 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 
 **operation_guid** | **String**| This GUID, formatted as \&quot;00000000-0000-0000-0000-000000000000\&quot;, can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID. | [optional] 
 **operation_description** | **String**| Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description. | [optional] 

### Return type

[**GetUserPreferences**](GetUserPreferences.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_user_segments**
> Segments get_user_segments(id, version, opts)

Get user segments

Returns a list of segments assigned to a user.

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

api_instance = LenelSdk::UsersApi.new
id = 'id_example' # String | ID of the user for whom you want to retrieve segments.
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Get user segments
  result = api_instance.get_user_segments(id, version, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling UsersApi->get_user_segments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the user for whom you want to retrieve segments. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**Segments**](Segments.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **getuser**
> UserExtendedProperties getuser(id, version, opts)

Get extended properties for a user

Gets extended properties for a user.

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

api_instance = LenelSdk::UsersApi.new
id = 'id_example' # String | ID of user for which to retrieve the extended properties.
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Get extended properties for a user
  result = api_instance.getuser(id, version, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling UsersApi->getuser: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of user for which to retrieve the extended properties. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**UserExtendedProperties**](UserExtendedProperties.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **modify_user_password**
> SharedResponseDefinition modify_user_password(bodyversion, opts)

Modify user password

Modify the user's password.

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

api_instance = LenelSdk::UsersApi.new
body = LenelSdk::UserPasswordBody.new # UserPasswordBody | 
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
  operation_guid: 'operation_guid_example' # String | This GUID, formatted as \"00000000-0000-0000-0000-000000000000\", can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID.
  operation_description: 'operation_description_example' # String | Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description.
}

begin
  #Modify user password
  result = api_instance.modify_user_password(bodyversion, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling UsersApi->modify_user_password: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserPasswordBody**](UserPasswordBody.md)|  | 
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

 - **Content-Type**: application/json
 - **Accept**: application/json



# **modify_user_preferences**
> ModifyUserPreferences modify_user_preferences(bodyversion, opts)

Modify user preference

Modify the existing user preference with the given ID.

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

api_instance = LenelSdk::UsersApi.new
body = LenelSdk::UserPreferencesBody.new # UserPreferencesBody | 
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
  operation_guid: 'operation_guid_example' # String | This GUID, formatted as \"00000000-0000-0000-0000-000000000000\", can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID.
  operation_description: 'operation_description_example' # String | Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description.
}

begin
  #Modify user preference
  result = api_instance.modify_user_preferences(bodyversion, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling UsersApi->modify_user_preferences: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserPreferencesBody**](UserPreferencesBody.md)|  | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 
 **operation_guid** | **String**| This GUID, formatted as \&quot;00000000-0000-0000-0000-000000000000\&quot;, can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID. | [optional] 
 **operation_description** | **String**| Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description. | [optional] 

### Return type

[**ModifyUserPreferences**](ModifyUserPreferences.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **modifyuser**
> SharedResponseDefinition modifyuser(versionid, opts)

Sets the extended properties for a user

Sets the extended properties for a user.

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

api_instance = LenelSdk::UsersApi.new
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
id = 'id_example' # String | ID of user for which to set the extended properties.
opts = { 
  body: LenelSdk::UserExtendedPropertiesPut.new # UserExtendedPropertiesPut | The updated properties
  queue: true # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Sets the extended properties for a user
  result = api_instance.modifyuser(versionid, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling UsersApi->modifyuser: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **id** | **String**| ID of user for which to set the extended properties. | 
 **body** | [**UserExtendedPropertiesPut**](UserExtendedPropertiesPut.md)| The updated properties | [optional] 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**SharedResponseDefinition**](SharedResponseDefinition.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



