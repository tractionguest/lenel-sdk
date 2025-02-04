# LenelSdk::PasswordPolicySettings

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**is_lockout_policy_enabled** | **BOOLEAN** | A flag indicating whether the lockout policy is enabled. | [optional] 
**login_attempt_threshold** | **Integer** | The number of invalid login attempts that will lock an internal account. | [optional] 
**login_attempt_reset_interval_in_minutes** | **Integer** | The number of minutes to wait before resetting the record of invalid logins. | [optional] 
**lockout_interval_in_minutes** | **Integer** | The number of minutes to lock an internal account after exceeding the invalid login attempt threshold. | [optional] 
**disable_lockout_for_sa** | **BOOLEAN** | Supports disabling the lockout policy for the SA user. | [optional] 
**is_expiration_policy_enabled** | **BOOLEAN** | A flag indicating whether the expiration policy is enabled. | [optional] 
**expiration_days** | **Integer** | The number of days the password will be expired. | [optional] 
**is_expiration_reminders_enabled** | **BOOLEAN** | A flag indicating whether to remind the user if the password is almost expired. | [optional] 
**expiration_first_reminder_days** | **Integer** | The first day to remind the user that the password is almost expired. | [optional] 
**expiration_reminder_days** | **Integer** | The day to start reminding the user, with each login, that the password is almost expired. | [optional] 
**is_minimum_length_required** | **BOOLEAN** | A flag indicating whether the minimum password length is required. | [optional] 
**minimum_length** | **Integer** | The minimum password length. | [optional] 
**is_numeric_characters_required** | **BOOLEAN** | A flag indicating whether the password must contain a numeric character. | [optional] 
**is_special_characters_required** | **BOOLEAN** | A flag indicating whether the password must contain a non-alphanumeric character. | [optional] 
**is_upper_and_lower_case_required** | **BOOLEAN** | A flag indicating whether the password must contain an uppercase alphabetic and a lowercase alphabetic character. | [optional] 
**can_be_same_as_user_name** | **BOOLEAN** | A flag indicating whether the password can be same as user name. | [optional] 
**is_history_policy_enabled** | **BOOLEAN** | A flag indicating whether the password history policy is enabled. | [optional] 
**history_password_count** | **Integer** | The number of previous passwords that will be prohibited when resetting the password. | [optional] 
**minimum_password_age** | **Integer** | This determines how long users must keep a password before they can change it. | [optional] 
**is_prohibited_password_policy_enabled** | **BOOLEAN** | A flag indicating whether the prohibited password policy is enabled. | [optional] 
**is_inactivity_timeout_policy_enabled** | **BOOLEAN** | A flag indicating whether the inactivity timeout policy is enabled. | [optional] 
**inactivity_timeout_in_minutes** | **Integer** | The authenticated token inactivity timeout, in minutes. | [optional] 

