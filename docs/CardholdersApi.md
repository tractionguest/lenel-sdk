# LenelSDK::CardholdersApi

All URIs are relative to *https://localhost/api/access/onguard/openaccess*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_active_directory_accounts**](CardholdersApi.md#get_active_directory_accounts) | **GET** /directory_accounts | Search directory accounts
[**get_cardholder_from_directory**](CardholdersApi.md#get_cardholder_from_directory) | **GET** /cardholder_from_directory | Get cardholder ID from their linked directory account
[**get_directory_accounts_matching_cardholders**](CardholdersApi.md#get_directory_accounts_matching_cardholders) | **GET** /directory_accounts_matching_cardholders | Get directory accounts matching the given cardholders
[**update_cardholder_with_directory_account_property**](CardholdersApi.md#update_cardholder_with_directory_account_property) | **PUT** /update_cardholder_with_directory_account_property | Update the cardholder with a directory account property


# **get_active_directory_accounts**
> DirectoryAccounts get_active_directory_accounts(directory_id, filter, version, opts)

Search directory accounts

Gets directory accounts matching the provided filter.  **Note:** Depending on the Active Directory server configuration, number of users in the directory, and uniqueness of search criteria, this method may time out. 

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

api_instance = LenelSDK::CardholdersApi.new

directory_id = 'directory_id_example' # String | Directory ID for the directory containing the active directory accounts you want to find.

filter = 'filter_example' # String | Filter format -`<ADattr> <condition> '<value>'`. EX: `displayname has 'smith'` -  Support Conditions - `eq`, `has`. One specific case is `<ADattr> <eq> ''` which means AD attribute's value is empty.  EX: `displayname eq ''` -  Support negative conditions -    `not(<ADattr.> <has> '<value>')` means AD attribute's value does not contain the input value. EX: `not(samaccountname has 'smith')`   `not(<ADattr.> <eq> '')` means AD attribute's value is not empty.  

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Search directory accounts
  result = api_instance.get_active_directory_accounts(directory_id, filter, version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling CardholdersApi->get_active_directory_accounts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **directory_id** | **String**| Directory ID for the directory containing the active directory accounts you want to find. | 
 **filter** | **String**| Filter format -&#x60;&lt;ADattr&gt; &lt;condition&gt; &#39;&lt;value&gt;&#39;&#x60;. EX: &#x60;displayname has &#39;smith&#39;&#x60; -  Support Conditions - &#x60;eq&#x60;, &#x60;has&#x60;. One specific case is &#x60;&lt;ADattr&gt; &lt;eq&gt; &#39;&#39;&#x60; which means AD attribute&#39;s value is empty.  EX: &#x60;displayname eq &#39;&#39;&#x60; -  Support negative conditions -    &#x60;not(&lt;ADattr.&gt; &lt;has&gt; &#39;&lt;value&gt;&#39;)&#x60; means AD attribute&#39;s value does not contain the input value. EX: &#x60;not(samaccountname has &#39;smith&#39;)&#x60;   &#x60;not(&lt;ADattr.&gt; &lt;eq&gt; &#39;&#39;)&#x60; means AD attribute&#39;s value is not empty.   | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

[**DirectoryAccounts**](DirectoryAccounts.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_cardholder_from_directory**
> CardholderFromDirectory get_cardholder_from_directory(user_name, password, directory_id, version, opts)

Get cardholder ID from their linked directory account

Returns the internal cardholder ID of a cardholder who has a linked directory account with the given credentials.

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

api_instance = LenelSDK::CardholdersApi.new

user_name = 'user_name_example' # String | Directory account username of the cardholder whose internal ID you want to look up in OnGuard.

password = 'password_example' # String | Directory account password of the cardholder whose internal ID you want to look up in OnGuard.

directory_id = 'directory_id_example' # String | Directory ID for the directory containing the cardholder's account that you want to look up.

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Get cardholder ID from their linked directory account
  result = api_instance.get_cardholder_from_directory(user_name, password, directory_id, version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling CardholdersApi->get_cardholder_from_directory: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_name** | **String**| Directory account username of the cardholder whose internal ID you want to look up in OnGuard. | 
 **password** | **String**| Directory account password of the cardholder whose internal ID you want to look up in OnGuard. | 
 **directory_id** | **String**| Directory ID for the directory containing the cardholder&#39;s account that you want to look up. | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

[**CardholderFromDirectory**](CardholderFromDirectory.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_directory_accounts_matching_cardholders**
> DirectoryAccountsMatchingCardholders get_directory_accounts_matching_cardholders(directory_id, cardholder_ids, filter, version, opts)

Get directory accounts matching the given cardholders

Gets directory accounts matching the given cardholders, based on the property pairs specified by the filter.  **Note:** Depending on the Active Directory server configuration, number of users in the directory, and uniqueness of search criteria, this method may time out. On larger systems (>5000 directory accounts), restrict the number of cardholders searched to under 100 per request. 

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

api_instance = LenelSDK::CardholdersApi.new

directory_id = 'directory_id_example' # String | Directory ID for the directory containing the active directory accounts that you want to find.

cardholder_ids = [56] # Array<Integer> | List of cardholder IDs in the format `[1,2,3,...]`.

filter = 'filter_example' # String | Filter format -`<ADattr> <condition> '<CardholderAttr>'`. EX: `displayname has 'firstname' ` -  Support Condition - `eq`, `has`. The condition compares AD attribute's value with Cardholder attribute's value. -  Support negative condition -    `not(<ADattr.> <has> '<CardholderAttr>')` mean AD attribute's value doesn't contain the Cardholder attribute's value. EX: `not(displayname has 'lastname')`. 

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Get directory accounts matching the given cardholders
  result = api_instance.get_directory_accounts_matching_cardholders(directory_id, cardholder_ids, filter, version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling CardholdersApi->get_directory_accounts_matching_cardholders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **directory_id** | **String**| Directory ID for the directory containing the active directory accounts that you want to find. | 
 **cardholder_ids** | [**Array&lt;Integer&gt;**](Integer.md)| List of cardholder IDs in the format &#x60;[1,2,3,...]&#x60;. | 
 **filter** | **String**| Filter format -&#x60;&lt;ADattr&gt; &lt;condition&gt; &#39;&lt;CardholderAttr&gt;&#39;&#x60;. EX: &#x60;displayname has &#39;firstname&#39; &#x60; -  Support Condition - &#x60;eq&#x60;, &#x60;has&#x60;. The condition compares AD attribute&#39;s value with Cardholder attribute&#39;s value. -  Support negative condition -    &#x60;not(&lt;ADattr.&gt; &lt;has&gt; &#39;&lt;CardholderAttr&gt;&#39;)&#x60; mean AD attribute&#39;s value doesn&#39;t contain the Cardholder attribute&#39;s value. EX: &#x60;not(displayname has &#39;lastname&#39;)&#x60;.  | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

[**DirectoryAccountsMatchingCardholders**](DirectoryAccountsMatchingCardholders.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_cardholder_with_directory_account_property**
> UpdateCardholderWithDirectoryAccountProperty update_cardholder_with_directory_account_property(cardholder_id, parameter_name, version, opts)

Update the cardholder with a directory account property

Updates the given cardholder with the given directory account property.

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

api_instance = LenelSDK::CardholdersApi.new

cardholder_id = 56 # Integer | cardholder ID.

parameter_name = LenelSDK::ParameterName1.new # ParameterName1 | 

version = 'version_example' # String | Used to maintain backward compatibility as the API is updated, in the format 1.0.

opts = { 
  queue: false # BOOLEAN | Queues the request as a task and returns a response identical to `GET /queue/{id}`.
}

begin
  #Update the cardholder with a directory account property
  result = api_instance.update_cardholder_with_directory_account_property(cardholder_id, parameter_name, version, opts)
  p result
rescue LenelSDK::ApiError => e
  puts "Exception when calling CardholdersApi->update_cardholder_with_directory_account_property: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cardholder_id** | **Integer**| cardholder ID. | 
 **parameter_name** | [**ParameterName1**](ParameterName1.md)|  | 
 **version** | **String**| Used to maintain backward compatibility as the API is updated, in the format 1.0. | 
 **queue** | **BOOLEAN**| Queues the request as a task and returns a response identical to &#x60;GET /queue/{id}&#x60;. | [optional] [default to false]

### Return type

[**UpdateCardholderWithDirectoryAccountProperty**](UpdateCardholderWithDirectoryAccountProperty.md)

### Authorization

[ApplicationId](../README.md#ApplicationId), [SessionToken](../README.md#SessionToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



