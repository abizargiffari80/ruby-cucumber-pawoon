class AfterLoginPage < Appom::Page
    element :text_botnavbar_onboarding, :xpath, "//android.widget.Button[@content-desc='FragmentBeranda']/android.view.ViewGroup/android.widget.TextView"

    # Device Page
    # element :text_device_Auto_Device, :uiautomator, 'new UiSelector().text("Auto Device")' 
    # element :text_auto_device, :uiautomator, 'new UiSelector().className("android.widget.TextView").instance(0)'
    # element :btn_masuk_disini, :text, 'Masuk di sini'
    # element :text_autodevice, :text, 'Auto device'
    # element :text_automationn, :text, 'Automation'
    element :text_auto_device, :id, "com.pawoon.pos.staging:id/tvName" 
    element :text_automation, :id, "com.pawoon.pos.staging:id/tvName"
    element :text_btn_1, :uiautomator, 'new UiSelector().className("android.widget.TextView").instance(3)'
    element :img_produk, :xpath, '(//android.widget.ImageView[@content-desc="Produk"])[1]'
    element :text_data_sebelumnya, :id, 'com.pawoon.pos.staging:id/tv_message'
    element :text_data_sebelumnya_ya, :id, 'com.pawoon.pos.staging:id/tv_yes'
    element :text_data_sebelumnya_no, :id, 'com.pawoon.pos.staging:id/tv_no'
    element :text_ganti_perangkat, :id, 'com.pawoon.pos.staging:id/tv_message'
    element :text_ganti_perangkat_ganti, :id, 'com.pawoon.pos.staging:id/tv_yes'
    element :text_ganti_perangkat_tidak, :id, 'com.pawoon.pos.staging:id/tv_no'
    element :text_ganti_perangkat_yakin, :id, 'com.pawoon.pos.staging:id/tv_message'
    element :text_ganti_perangkat_yakin_YaLanjut, :id, 'com.pawoon.pos.staging:id/tv_yes'
    element :text_ganti_perangkat_yakin_batal, :id, 'com.pawoon.pos.staging:id/tv_no'
    
    element :text_outlet_Automation, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tvName").instance(0)'
    element :text_outlet_Greenlakecity, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tvName").instance(1)'
    element :text_outlet_MejaBaru, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tvName").instance(2)'
    #outlet mas harris
    element :text_outlet_entisGrab3, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tvName").instance(2)'
    
    element :text_ganti_outlet, :id, 'com.pawoon.pos.staging:id/tv_message'
    element :btn_ganti_outlet, :id, 'com.pawoon.pos.staging:id/tv_yes'
    element :btn_No_ganti_outlet, :id, 'com.pawoon.pos.staging:id/tv_no'
    element :btn_ganti_outlet_YaLanjut, :id, 'com.pawoon.pos.staging:id/tv_yes'
    element :btn_ganti_outlet_Batal, :id, 'com.pawoon.pos.staging:id/tv_no'
    



    # Operator Page


end