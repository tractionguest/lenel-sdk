# SwaggerClient::SettingsApi

All URIs are relative to */api/access/onguard/openaccess*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_authorization_warning_settings**](SettingsApi.md#get_authorization_warning_settings) | **GET** /settings/authorization_warning | Get authorization warning settings
[**get_cardholder_settings**](SettingsApi.md#get_cardholder_settings) | **GET** /settings/cardholder | Get cardholder settings
[**get_enterprise_settings**](SettingsApi.md#get_enterprise_settings) | **GET** /settings/enterprise | Get enterprise settings
[**get_password_policy_settings**](SettingsApi.md#get_password_policy_settings) | **GET** /settings/password_policy | Get password policy settings
[**get_password_policy_settings_limits**](SettingsApi.md#get_password_policy_settings_limits) | **GET** /settings/password_policy_limits | Get password policy limits.
[**get_segmentation_settings**](SettingsApi.md#get_segmentation_settings) | **GET** /settings/segmentation | Get segment related settings
[**get_video_options**](SettingsApi.md#get_video_options) | **GET** /settings/video | Get video options
[**get_visit_settings**](SettingsApi.md#get_visit_settings) | **GET** /settings/visit | Get visit settings
[**modify_password_policy_settings**](SettingsApi.md#modify_password_policy_settings) | **PUT** /settings/password_policy | Modify password policy settings
[**modify_visit_setting**](SettingsApi.md#modify_visit_setting) | **PUT** /settings/visit | Modify visit settings

# **get_authorization_warning_settings**
> InlineResponse2006 get_authorization_warning_settings(version, opts)

Get authorization warning settings

Returns the authorization warning text, display settings, and Yes/No button text.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = SwaggerClient::SettingsApi.new
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true, # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
  operation_guid: 'operation_guid_example', # String | This GUID, formatted as \"00000000-0000-0000-0000-000000000000\", can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID.
  operation_description: 'operation_description_example' # String | Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description.
}

begin
  #Get authorization warning settings
  result = api_instance.get_authorization_warning_settings(version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SettingsApi->get_authorization_warning_settings: #{e}"
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

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_cardholder_settings**
> CardholderOptions get_cardholder_settings(version, opts)

Get cardholder settings

Returns cardholder and badge-related information for the system.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = SwaggerClient::SettingsApi.new
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  segment_id: 56, # Integer | ID of the segment from which to get badge-related information, if segmentation is enabled.
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true, # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
  operation_guid: 'operation_guid_example', # String | This GUID, formatted as \"00000000-0000-0000-0000-000000000000\", can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID.
  operation_description: 'operation_description_example' # String | Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description.
}

begin
  #Get cardholder settings
  result = api_instance.get_cardholder_settings(version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SettingsApi->get_cardholder_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **segment_id** | **Integer**| ID of the segment from which to get badge-related information, if segmentation is enabled. | [optional] 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 
 **operation_guid** | **String**| This GUID, formatted as \&quot;00000000-0000-0000-0000-000000000000\&quot;, can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID. | [optional] 
 **operation_description** | **String**| Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description. | [optional] 

### Return type

[**CardholderOptions**](CardholderOptions.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_enterprise_settings**
> EnterpriseOptions get_enterprise_settings(version, opts)

Get enterprise settings

Returns enterprise information for the system.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = SwaggerClient::SettingsApi.new
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true, # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
  operation_guid: 'operation_guid_example', # String | This GUID, formatted as \"00000000-0000-0000-0000-000000000000\", can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID.
  operation_description: 'operation_description_example' # String | Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description.
}

begin
  #Get enterprise settings
  result = api_instance.get_enterprise_settings(version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SettingsApi->get_enterprise_settings: #{e}"
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

[**EnterpriseOptions**](EnterpriseOptions.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_password_policy_settings**
> PasswordPolicySettings get_password_policy_settings(version, opts)

Get password policy settings

Gets the current password policy settings of the system.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = SwaggerClient::SettingsApi.new
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true, # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
  operation_guid: 'operation_guid_example', # String | This GUID, formatted as \"00000000-0000-0000-0000-000000000000\", can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID.
  operation_description: 'operation_description_example' # String | Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description.
}

begin
  #Get password policy settings
  result = api_instance.get_password_policy_settings(version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SettingsApi->get_password_policy_settings: #{e}"
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

[**PasswordPolicySettings**](PasswordPolicySettings.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_password_policy_settings_limits**
> PasswordPolicySettingsLimits get_password_policy_settings_limits(version, opts)

Get password policy limits.

Gets the current password policy minimum and maximum limits.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = SwaggerClient::SettingsApi.new
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true, # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
  operation_guid: 'operation_guid_example', # String | This GUID, formatted as \"00000000-0000-0000-0000-000000000000\", can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID.
  operation_description: 'operation_description_example' # String | Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description.
}

begin
  #Get password policy limits.
  result = api_instance.get_password_policy_settings_limits(version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SettingsApi->get_password_policy_settings_limits: #{e}"
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

[**PasswordPolicySettingsLimits**](PasswordPolicySettingsLimits.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_segmentation_settings**
> SegmentationSettings get_segmentation_settings(version, opts)

Get segment related settings

Gets the current segment settings of the system.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = SwaggerClient::SettingsApi.new
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true, # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
  operation_guid: 'operation_guid_example', # String | This GUID, formatted as \"00000000-0000-0000-0000-000000000000\", can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID.
  operation_description: 'operation_description_example' # String | Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description.
}

begin
  #Get segment related settings
  result = api_instance.get_segmentation_settings(version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SettingsApi->get_segmentation_settings: #{e}"
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

[**SegmentationSettings**](SegmentationSettings.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_video_options**
> VideoOptions get_video_options(version, opts)

Get video options

Returns video options.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = SwaggerClient::SettingsApi.new
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true, # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
  operation_guid: 'operation_guid_example', # String | This GUID, formatted as \"00000000-0000-0000-0000-000000000000\", can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID.
  operation_description: 'operation_description_example' # String | Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description.
}

begin
  #Get video options
  result = api_instance.get_video_options(version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SettingsApi->get_video_options: #{e}"
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

[**VideoOptions**](VideoOptions.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_visit_settings**
> VisitSettings get_visit_settings(version, opts)

Get visit settings

Gets the current visit settings of the system.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = SwaggerClient::SettingsApi.new
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true, # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
  operation_guid: 'operation_guid_example', # String | This GUID, formatted as \"00000000-0000-0000-0000-000000000000\", can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID.
  operation_description: 'operation_description_example' # String | Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description.
}

begin
  #Get visit settings
  result = api_instance.get_visit_settings(version, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SettingsApi->get_visit_settings: #{e}"
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

[**VisitSettings**](VisitSettings.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **modify_password_policy_settings**
> SharedResponseDefinition modify_password_policy_settings(bodyversion, opts)

Modify password policy settings

Modifies the system password policy settings.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = SwaggerClient::SettingsApi.new
body = SwaggerClient::PasswordPolicySettings.new # PasswordPolicySettings | The modified password policy settings.
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Modify password policy settings
  result = api_instance.modify_password_policy_settings(bodyversion, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SettingsApi->modify_password_policy_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PasswordPolicySettings**](PasswordPolicySettings.md)| The modified password policy settings. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**SharedResponseDefinition**](SharedResponseDefinition.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **modify_visit_setting**
> SharedResponseDefinition modify_visit_setting(bodyversion, opts)

Modify visit settings

Modifies system visit settings.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: ApplicationId
  config.api_key['Application-Id'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Application-Id'] = 'Bearer'

  # Configure API key authorization: SessionToken
  config.api_key['Session-Token'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Session-Token'] = 'Bearer'
end

api_instance = SwaggerClient::SettingsApi.new
body = SwaggerClient::SettingsVisitBody.new # SettingsVisitBody | 
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Modify visit settings
  result = api_instance.modify_visit_setting(bodyversion, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SettingsApi->modify_visit_setting: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SettingsVisitBody**](SettingsVisitBody.md)|  | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**SharedResponseDefinition**](SharedResponseDefinition.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



