class LoginPage < Appom::Page
    element :input_email_login, :id, "com.pawoon.pos.staging:id/etEmail"
    element :input_password_login, :id, "com.pawoon.pos.staging:id/etPassword"
    element :button_masuk_login, :id, "com.pawoon.pos.staging:id/btnSubmit"
    #element :txt_location_permission, :id "com.android.packageinstaller:id/permission_message"
    #element :btn_location_permission_yes, :id "com.android.packageinstaller:id/permission_allow_button"
    #element :input_email_login, :accessibility_id, "TextInputAlmatEmailLogin"
    #element :input_password_login, :accessibility_id, "TextInputKataSandiLogin"
    #element :button_masuk_login, :accessibility_id, "ButtonMasukLogin"
end