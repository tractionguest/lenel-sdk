# LenelSdk::AuthenticationApi

All URIs are relative to */api/access/onguard/openaccess*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_authentication**](AuthenticationApi.md#add_authentication) | **POST** /authentication | Login
[**delete_authentication**](AuthenticationApi.md#delete_authentication) | **DELETE** /authentication | Logout
[**get_directories**](AuthenticationApi.md#get_directories) | **GET** /directories | Get directories
[**get_identity_provider_url**](AuthenticationApi.md#get_identity_provider_url) | **GET** /identity_provider_url | Get identity provider URL.
[**get_session**](AuthenticationApi.md#get_session) | **GET** /session | Get the session data for a session token

# **add_authentication**
> InlineResponse2007 add_authentication(bodyversion, opts)

Login

Login to the API, retrieving a session token. This method expects the **Application-Id** HTTP header, but does not require **Session-Token**. 

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
end

api_instance = LenelSdk::AuthenticationApi.new
body = LenelSdk::AuthenticationBody.new # AuthenticationBody | Either username and password must be present, or the oidc_token must be present.
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  operation_guid: 'operation_guid_example' # String | This GUID, formatted as \"00000000-0000-0000-0000-000000000000\", can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID.
  operation_description: 'operation_description_example' # String | Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description.
}

begin
  #Login
  result = api_instance.add_authentication(bodyversion, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling AuthenticationApi->add_authentication: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AuthenticationBody**](AuthenticationBody.md)| Either username and password must be present, or the oidc_token must be present. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **operation_guid** | **String**| This GUID, formatted as \&quot;00000000-0000-0000-0000-000000000000\&quot;, can be used to indicate a correlation among multiple API calls so that they can be grouped together in the User Transaction Log reports, enhancing their readability. For more information please refer to OpenAccess documentation, section Operation GUID. | [optional] 
 **operation_description** | **String**| Userfriendly free-form description for the operation being performed. Use this description to enhance the readability of the User Transaction Log reports. For more information please refer to OpenAccess documentation, section Operation Description. | [optional] 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[ApplicationId](../README.md#ApplicationId)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_authentication**
> SharedResponseDefinition delete_authentication(version, opts)

Logout

Logout of the API, invalidating the session token.

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

api_instance = LenelSdk::AuthenticationApi.new
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Logout
  result = api_instance.delete_authentication(version, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling AuthenticationApi->delete_authentication: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 

### Return type

[**SharedResponseDefinition**](SharedResponseDefinition.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_directories**
> Directories get_directories(version, opts)

Get directories

Gets the authentication directories configured.

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

api_instance = LenelSdk::AuthenticationApi.new
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Get directories
  result = api_instance.get_directories(version, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling AuthenticationApi->get_directories: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 

### Return type

[**Directories**](Directories.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_identity_provider_url**
> InlineResponse2005 get_identity_provider_url(directory_id, redirect_url, response_mode, version, opts)

Get identity provider URL.

Get login URL for the selected OpenID Connect identity provider.

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

api_instance = LenelSdk::AuthenticationApi.new
directory_id = 'directory_id_example' # String | The directory ID of the selected identity provider.
redirect_url = 'redirect_url_example' # String | The URL to which the identity provider should send its response.
response_mode = 'response_mode_example' # String | The mode the identity provider should use to respond. Valid values are \"form_post\" and \"fragment\". With \"form_post\", the identity provider responds with an HTTP POST to the redirect_url, with the content in the message body. With \"fragment\", the response is contained in the redirect URL.
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Get identity provider URL.
  result = api_instance.get_identity_provider_url(directory_id, redirect_url, response_mode, version, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling AuthenticationApi->get_identity_provider_url: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **directory_id** | **String**| The directory ID of the selected identity provider. | 
 **redirect_url** | **String**| The URL to which the identity provider should send its response. | 
 **response_mode** | **String**| The mode the identity provider should use to respond. Valid values are \&quot;form_post\&quot; and \&quot;fragment\&quot;. With \&quot;form_post\&quot;, the identity provider responds with an HTTP POST to the redirect_url, with the content in the message body. With \&quot;fragment\&quot;, the response is contained in the redirect URL. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_session**
> InlineResponse2008 get_session(version, opts)

Get the session data for a session token

Used to retrieve the session data associated with a session token. 

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

api_instance = LenelSdk::AuthenticationApi.new
version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.
opts = { 
  queue: true, # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
  do_not_reset_inactivity_timer: true # BOOLEAN | If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity.
}

begin
  #Get the session data for a session token
  result = api_instance.get_session(version, opts)
  p result
rescue LenelSdk::ApiError => e
  puts "Exception when calling AuthenticationApi->get_session: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] 
 **do_not_reset_inactivity_timer** | **BOOLEAN**| If true, this request does not affect the inactivity timer - that is, the timer is not reset to zero, and continues counting from the point of the last recorded OpenAccess activity. | [optional] 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



