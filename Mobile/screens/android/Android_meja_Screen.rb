class MejaPage < Appom::Page

    element :btn_meja, :id, 'com.pawoon.pos.staging:id/cl_table'
    element :btn_back_Meja, :accessibility_id, 'Kembali ke atas'
    element :btn_pengaturanclass, :uiautomator, 'new UiSelector().className("android.widget.TextView").instance(1)'
    element :btn_meja1class, :uiautomator, 'new UiSelector().className("android.widget.ImageView").instance(1)'
    element :btn_meja2class, :uiautomator, 'new UiSelector().className("android.widget.ImageView").instance(2)'
    element :btn_meja3class, :uiautomator, 'new UiSelector().className("android.widget.ImageView").instance(3)'
    element :btn_meja4class, :uiautomator, 'new UiSelector().className("android.widget.ImageView").instance(4)'
    element :btn_meja5class, :uiautomator, 'new UiSelector().className("android.widget.ImageView").instance(5)'
    element :btn_meja2class_nd, :uiautomator, 'new UiSelector().className("android.widget.ImageView").instance(0)'
    element :btn_pilihmeja, :id, 'com.pawoon.pos.staging:id/text_ll_pilih_meja'
    element :btn_pindahpisahgabungmeja, :id, 'com.pawoon.pos.staging:id/text_table'

    element :btn_pindahmeja, :id, 'com.pawoon.pos.staging:id/move_table'
    element :btn_pisahmeja, :id, 'com.pawoon.pos.staging:id/split_table'
    element :btn_selectmeja, :id, 'com.pawoon.pos.staging:id/select'
    element :btn_lihattransaksi, :id, 'com.pawoon.pos.staging:id/text_ll_lihat_order'
    element :btn_pidahproductclass, :uiautomator, 'new UiSelector().className("android.widget.ImageView").instance(1)'
    element :btn_simpanpindah, :id, 'com.pawoon.pos.staging:id/save'
    element :btn_simpanpindahconfirm, :id, 'com.pawoon.pos.staging:id/save'
    element :btn_simpanpindahconfirmNew, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/save").instance(0)'

    # delay 5 detik
    # pressback
    

end