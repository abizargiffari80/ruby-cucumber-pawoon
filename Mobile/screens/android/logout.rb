class LogoutPage < Appom::Page
    element :img_produk, :xpath, '(//android.widget.ImageView[@content-desc="Produk"])[1]'
    element :btn_burger, :accessibility_id, 'Buka panel navigasi' #//android.widget.ImageButton[@content-desc="Buka panel navigasi"]
    element :btn_pengaturan, :id, 'com.pawoon.pos.staging:id/action_setting'
    element :btn_informasi, :id, 'com.pawoon.pos.staging:id/tvInformasi'
    element :btn_logout, :id, 'com.pawoon.pos.staging:id/llLogout'
    element :btn_ya, :id, 'android:id/button1'
end