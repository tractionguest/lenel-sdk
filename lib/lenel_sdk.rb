=begin
#OpenAccess

#This document describes the OpenAccess REST API. OpenAccess provides access to OnGuard via a RESTful web service.  ## Security / licensing headers  Each authenticated request must include the following HTTP headers:   - `Application-Id` - Each application using the OpenAccess API must have a unique application ID.   - `Session-Token` - A session token is retrieved by logging in via the `POST /authentication` operation.  ## Input parameter location - Query string or request body?  Input parameters can be placed either in the request body or in the URL, as a query parameter. The API makes no distinction and will handle them in either location. In the API specification, some parameters are described as being in the request body, and others are described as being in the query string. This is done simply for clarity in each situation, but clients of the API are free to include parameters wherever it is most convenient. **Sensitive data should always be placed in the request body and not exposed in the URL.**  ### **POST /instances** example  ``` POST /instances?type_name=Lnl_Cardholder&version=1.0 {   \"property_value_map\": {     ...   } } ```  ...is equivalent to this...  ``` POST /instances&version=1.0 {   \"type_name\": \"Lnl_Cardholder\",   \"property_value_map\": {     ...   } } ```  ## Task queuing - dealing with long running requests  Some requests might take a long time, especially requests that access external systems, such as Active Directory. Standard OpenAccess requests will time out after 30 seconds if the HTTP request doesn't time out sooner, depending on the client. Any request that you expect to run long can be queued as a task by adding a `queue` property to the request, set to `true`. For example: ``` GET /directory_accounts_matching_cardholders?directory_id=id1 &cardholder_ids=[1,2,3,4,5,6,7,8,9,10] &filter=displayname has 'firstname' and displayname has 'lastname' &queue=true &version=1.0 ```  When a request is queued in this way, OpenAccess will queue a task for execution and return a 202 (Accepted) HTTP status code and a response identical to `GET /queue/{id}`. For example: ``` {   \"id\": \"5c4b7890-ee73-4199-b3d3-366003eb8ca1\",   \"status\": \"pending\",   \"version\": \"1.0\" } ```  The `id` property indicates the ID of the queued task, which can be used to check the status of the task: ``` GET /queue/5c4b7890-ee73-4199-b3d3-366003eb8ca1?version=1.0 ```  When the task is complete, the response will include the response to the queued request: ``` {   \"id\": \"5c4b7890-ee73-4199-b3d3-366003eb8ca1\",   \"response\": {     ...   },   \"status\": \"complete\",   \"version\": \"1.0\" } ```  The response can be retrieved any number of times until the task is deleted. A completed task can be deleted with `DELETE /queue/{id}` or it will be deleted automatically after 1 hour.  **Note:** Even though you can queue any request, it's only recommended when a request is expected to run long, like `GET /directory_accounts` and `GET /directory_accounts_matching_cardholders`.  ## Samples  There are several sample applications that demonstrate various aspects of the API.  ### [Cardholder Search](/api/access/onguard/openaccess/samples/Cardholder Search) - Getting directories used for authentication - `GET /directories` - Login and logout - `POST /authentication` and `DELETE /authentication` - Getting cardholders and photos - `GET /instances`  ### [Command and Control](/api/access/onguard/openaccess/samples/Command and Control) - Getting directories used for authentication - `GET /directories` - Login and logout - `POST /authentication` and `DELETE /authentication` - Getting panels and readers - `GET /instances` - Updating hardware status, getting/setting reader mode, and opening doors - `POST /execute_method`  ### [Event Subscriber](/api/access/onguard/openaccess/samples/Event Subscriber) - Getting directories used for authentication - `GET /directories` (not used within every event subscriber sample) - Login and logout - `POST /authentication` and `DELETE /authentication` - Adding/modifying/disabling event subscriptions - `POST /event_subscriptions`, `PUT /event_subscriptions`, and `DELETE /event_subscriptions` - Using the Web Event Bridge to receive events via WebSocket 

OpenAPI spec version: 7.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.9-SNAPSHOT

=end

# Common files
require 'lenel_sdk/api_client'
require 'lenel_sdk/api_error'
require 'lenel_sdk/version'
require 'lenel_sdk/configuration'

# Models
require 'lenel_sdk/models/access_level'
require 'lenel_sdk/models/authorization_warning_options'
require 'lenel_sdk/models/authorization_warning_options_font_properties'
require 'lenel_sdk/models/badge_mobile_devices_mobile_device_list'
require 'lenel_sdk/models/badge_print_request_response'
require 'lenel_sdk/models/badge_printers_printers'
require 'lenel_sdk/models/cardholder_options_badge_pin_properties'
require 'lenel_sdk/models/console_card'
require 'lenel_sdk/models/console_card_group'
require 'lenel_sdk/models/console_layout'
require 'lenel_sdk/models/credentials'
require 'lenel_sdk/models/directories_item_list'
require 'lenel_sdk/models/directories_property_value_map'
require 'lenel_sdk/models/directory_accounts_item_list'
require 'lenel_sdk/models/directory_accounts_matching_cardholders_failure_list'
require 'lenel_sdk/models/directory_accounts_matching_cardholders_failure_list_item_list'
require 'lenel_sdk/models/directory_accounts_matching_cardholders_successful_list'
require 'lenel_sdk/models/directory_accounts_matching_cardholders_successful_list_directory_account'
require 'lenel_sdk/models/directory_accounts_matching_cardholders_successful_list_item_list'
require 'lenel_sdk/models/enterprise_options_server_list'
require 'lenel_sdk/models/error_error'
require 'lenel_sdk/models/event_subscription_definition'
require 'lenel_sdk/models/execute_method_parameters'
require 'lenel_sdk/models/in_parameter_value_map'
require 'lenel_sdk/models/instance_definition'
require 'lenel_sdk/models/levels'
require 'lenel_sdk/models/levels_1'
require 'lenel_sdk/models/logged_events'
require 'lenel_sdk/models/managed_access_levels_access_level_list'
require 'lenel_sdk/models/modified_event_subscription'
require 'lenel_sdk/models/new_event_subscription'
require 'lenel_sdk/models/parameter_name'
require 'lenel_sdk/models/parameter_name_1'
require 'lenel_sdk/models/parameter_name_2'
require 'lenel_sdk/models/partner_values'
require 'lenel_sdk/models/partner_values_1'
require 'lenel_sdk/models/password_policy_settings'
require 'lenel_sdk/models/print_request'
require 'lenel_sdk/models/queued_tasks_item_list'
require 'lenel_sdk/models/segments'
require 'lenel_sdk/models/segments_1'
require 'lenel_sdk/models/shared_response_definition'
require 'lenel_sdk/models/type_display_attributes'
require 'lenel_sdk/models/type_display_groups'
require 'lenel_sdk/models/type_in_parameters'
require 'lenel_sdk/models/type_methods'
require 'lenel_sdk/models/type_properties'
require 'lenel_sdk/models/user_extended_properties_put'
require 'lenel_sdk/models/user_preference'
require 'lenel_sdk/models/user_preferences'
require 'lenel_sdk/models/user_preferences_1'
require 'lenel_sdk/models/video_recorders'
require 'lenel_sdk/models/visit_settings_1'
require 'lenel_sdk/models/access_level_manager_ids'
require 'lenel_sdk/models/add_console_layout'
require 'lenel_sdk/models/add_user_preferences'
require 'lenel_sdk/models/badge_mobile_devices'
require 'lenel_sdk/models/badge_printer'
require 'lenel_sdk/models/badge_printers'
require 'lenel_sdk/models/cardholder_from_directory'
require 'lenel_sdk/models/cardholder_options'
require 'lenel_sdk/models/directories'
require 'lenel_sdk/models/directory_accounts'
require 'lenel_sdk/models/directory_accounts_matching_cardholders'
require 'lenel_sdk/models/enterprise_options'
require 'lenel_sdk/models/error'
require 'lenel_sdk/models/event_subscription'
require 'lenel_sdk/models/execute_method_results'
require 'lenel_sdk/models/get_console_cards'
require 'lenel_sdk/models/get_logged_events'
require 'lenel_sdk/models/get_user_preferences'
require 'lenel_sdk/models/get_video_recorders'
require 'lenel_sdk/models/instance'
require 'lenel_sdk/models/issue_mobile_credential'
require 'lenel_sdk/models/logged_in_user'
require 'lenel_sdk/models/managed_access_levels'
require 'lenel_sdk/models/modify_user_preferences'
require 'lenel_sdk/models/new_queued_task'
require 'lenel_sdk/models/paged_event_subscriptions'
require 'lenel_sdk/models/paged_instances'
require 'lenel_sdk/models/queued_task'
require 'lenel_sdk/models/queued_tasks'
require 'lenel_sdk/models/segmentation_settings'
require 'lenel_sdk/models/segments'
require 'lenel_sdk/models/type'
require 'lenel_sdk/models/types'
require 'lenel_sdk/models/update_cardholder_with_directory_account_property'
require 'lenel_sdk/models/user_extended_properties'
require 'lenel_sdk/models/video_recorder_authentication_data'
require 'lenel_sdk/models/visit_settings'

# APIs
require 'lenel_sdk/api/api_api'
require 'lenel_sdk/api/authentication_api'
require 'lenel_sdk/api/cardholders_api'
require 'lenel_sdk/api/console_api'
require 'lenel_sdk/api/events_api'
require 'lenel_sdk/api/instances_api'
require 'lenel_sdk/api/settings_api'
require 'lenel_sdk/api/users_api'

module LenelSDK
  class << self
    # Customize default settings for the SDK using block.
    #   LenelSDK.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end