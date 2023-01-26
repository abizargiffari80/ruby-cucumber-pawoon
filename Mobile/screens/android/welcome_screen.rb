class WelcomePage < Appom::Page
    element :button_masuk_disini, :id, "com.pawoon.pos.staging:id/tv_login"
    element :btn_masuk_disini, :text, 'Masuk di sini'
    # element :masuk_text1_splashscreen, :xpath, "//android.widget.TextView[contains(@text, 'Masuk')]"
end