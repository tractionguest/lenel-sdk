# SwaggerClient::PasswordPolicySettingsLimits

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**login_attempt_threshold_min** | **Integer** | The minimum allowed number of invalid login attempts that will lock an internal account. | [optional] 
**login_attempt_threshold_max** | **Integer** | The maximum allowed number of invalid login attempts that will lock an internal account. | [optional] 
**login_attempt_reset_interval_in_minutes_min** | **Integer** | The minimum allowed number of minutes to wait before resetting the record of invalid logins. | [optional] 
**login_attempt_reset_interval_in_minutes_max** | **Integer** | The maximum allowed number of minutes to wait before resetting the record of invalid logins. | [optional] 
**lockout_interval_in_minutes_min** | **Integer** | The minimum allowed number of minutes to lock an internal account after exceeding the invalid login attempt threshold. | [optional] 
**lockout_interval_in_minutes_max** | **Integer** | The maximum allowed number of minutes to lock an internal account after exceeding the invalid login attempt threshold. | [optional] 
**expiration_days_min** | **Integer** | The minimum allowed number of days the password will be expired. | [optional] 
**expiration_days_max** | **Integer** | The maximum allowed number of days the password will be expired. | [optional] 
**expiration_reminder_days_min** | **Integer** | The minimum of allowed number of days to start reminding the user, with each login, that the password is almost expired. | [optional] 
**expiration_reminder_days_max** | **Integer** | The maximum of allowed number of days to start reminding the user, with each login, that the password is almost expired. | [optional] 
**minimum_length_min** | **Integer** | The minimum of allowed number of minimum password length. | [optional] 
**minimum_length_max** | **Integer** | The maximum of allowed number of minimum password length. | [optional] 
**history_password_count_min** | **Integer** | The minimum of allowed number of previous passwords that will be prohibited when resetting the password. | [optional] 
**history_password_count_max** | **Integer** | The maximum of allowed number of previous passwords that will be prohibited when resetting the password. | [optional] 
**minimum_password_age_min** | **Integer** | The minimum of allowed number of determines how long users must keep a password before they can change it. | [optional] 
**minimum_password_age_max** | **Integer** | The maximum of allowed number of determines how long users must keep a password before they can change it. | [optional] 
**inactivity_timeout_in_minutes_min** | **Integer** | The minimum of allowed number of authenticated token inactivity timeout, in minutes. | [optional] 
**inactivity_timeout_in_minutes_max** | **Integer** | The maximum of allowed number of authenticated token inactivity timeout, in minutes. | [optional] 

