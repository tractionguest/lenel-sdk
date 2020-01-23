# LenelSDK::SettingsApi

All URIs are relative to *https://localhost/api/access/onguard/openaccess*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_authorization_warning_settings**](SettingsApi.md#get_authorization_warning_settings) | **GET** /settings/authorization_warning | Get authorization warning settings
[**get_cardholder_settings**](SettingsApi.md#get_cardholder_settings) | **GET** /settings/cardholder | Get cardholder settings
[**get_enterprise_settings**](SettingsApi.md#get_enterprise_settings) | **GET** /settings/enterprise | Get enterprise settings
[**get_password_policy_settings**](SettingsApi.md#get_password_policy_settings) | **GET** /settings/password_policy | Get password policy settings
[**get_segmentation_settings**](SettingsApi.md#get_segmentation_settings) | **GET** /settings/segmentation | Get segment related settings
[**get_visit_settings**](SettingsApi.md#get_visit_settings) | **GET** /settings/visit | Get visit settings
[**modify_password_policy_settings**](SettingsApi.md#modify_password_policy_settings) | **PUT** /settings/password_policy | Modify password policy settings
[**modify_visit_setting**](SettingsApi.md#modify_visit_setting) | **PUT** /settings/visit | Modify visit settings


# **get_authorization_warning_settings**
> Object get_authorization_warning_settings(version, opts)

Get authorization warning settings

Returns the authorization warning text, display settings, and Yes/No button text.

### Example
```ruby
# load the gem
require 'lenel_client'
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

api_instance = LenelSDK::SettingsApi.new

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Get authorization warning settings
  result = api_instance.get_authorization_warning_settings(version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling SettingsApi->get_authorization_warning_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

**Object**

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_cardholder_settings**
> CardholderOptions get_cardholder_settings(version, opts)

Get cardholder settings

Returns cardholder and badge-related information for the system.

### Example
```ruby
# load the gem
require 'lenel_client'
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

api_instance = LenelSDK::SettingsApi.new

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  segment_id: 56, # Integer | ID of the segment from which to get badge-related information, if segmentation is enabled.
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Get cardholder settings
  result = api_instance.get_cardholder_settings(version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling SettingsApi->get_cardholder_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **segment_id** | **Integer**| ID of the segment from which to get badge-related information, if segmentation is enabled. | [optional] 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

[**CardholderOptions**](CardholderOptions.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_enterprise_settings**
> EnterpriseOptions get_enterprise_settings(version, opts)

Get enterprise settings

Returns enterprise information for the system.

### Example
```ruby
# load the gem
require 'lenel_client'
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

api_instance = LenelSDK::SettingsApi.new

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Get enterprise settings
  result = api_instance.get_enterprise_settings(version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling SettingsApi->get_enterprise_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

[**EnterpriseOptions**](EnterpriseOptions.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_password_policy_settings**
> PasswordPolicySettings get_password_policy_settings(version, opts)

Get password policy settings

Gets the current password policy settings of the system.

### Example
```ruby
# load the gem
require 'lenel_client'
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

api_instance = LenelSDK::SettingsApi.new

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Get password policy settings
  result = api_instance.get_password_policy_settings(version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling SettingsApi->get_password_policy_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

[**PasswordPolicySettings**](PasswordPolicySettings.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_segmentation_settings**
> SegmentationSettings get_segmentation_settings(version, opts)

Get segment related settings

Gets the current segment settings of the system.

### Example
```ruby
# load the gem
require 'lenel_client'
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

api_instance = LenelSDK::SettingsApi.new

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Get segment related settings
  result = api_instance.get_segmentation_settings(version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling SettingsApi->get_segmentation_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

[**SegmentationSettings**](SegmentationSettings.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_visit_settings**
> VisitSettings get_visit_settings(version, opts)

Get visit settings

Gets the current visit settings of the system.

### Example
```ruby
# load the gem
require 'lenel_client'
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

api_instance = LenelSDK::SettingsApi.new

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Get visit settings
  result = api_instance.get_visit_settings(version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling SettingsApi->get_visit_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

[**VisitSettings**](VisitSettings.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **modify_password_policy_settings**
> SharedResponseDefinition modify_password_policy_settings(modified_password_policy_settings, version, opts)

Modify password policy settings

Modifies the system password policy settings.

### Example
```ruby
# load the gem
require 'lenel_client'
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

api_instance = LenelSDK::SettingsApi.new

modified_password_policy_settings = LenelSDK::PasswordPolicySettings.new # PasswordPolicySettings | The modified password policy settings.

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Modify password policy settings
  result = api_instance.modify_password_policy_settings(modified_password_policy_settings, version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling SettingsApi->modify_password_policy_settings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **modified_password_policy_settings** | [**PasswordPolicySettings**](PasswordPolicySettings.md)| The modified password policy settings. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

[**SharedResponseDefinition**](SharedResponseDefinition.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **modify_visit_setting**
> SharedResponseDefinition modify_visit_setting(visit_settings, version, opts)

Modify visit settings

Modifies system visit settings.

### Example
```ruby
# load the gem
require 'lenel_client'
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

api_instance = LenelSDK::SettingsApi.new

visit_settings = LenelSDK::VisitSettings1.new # VisitSettings1 | 

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Modify visit settings
  result = api_instance.modify_visit_setting(visit_settings, version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling SettingsApi->modify_visit_setting: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **visit_settings** | [**VisitSettings1**](VisitSettings1.md)|  | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

[**SharedResponseDefinition**](SharedResponseDefinition.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



