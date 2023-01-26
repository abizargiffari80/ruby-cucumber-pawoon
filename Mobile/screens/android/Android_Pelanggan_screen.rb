class PelangganPage < Appom::Page

    element :btn_pelanggan, :id, 'com.pawoon.pos.staging:id/cl_customer'
    element :btn_pelangganAutomation, :uiautomator, 'new UiSelector().className("android.widget.TextView").instance(4)'
    element :btn_pilihpelanggan, :id, 'com.pawoon.pos.staging:id/tv_choose_customer'
    element :btn_ubahpelanggan, :id, 'com.pawoon.pos.staging:id/rv_change_customer'
    element :btn_tambahpelanggan, :id, 'com.pawoon.pos.staging:id/action_add'
    element :txtField_nama_pelanggan, :id, 'com.pawoon.pos.staging:id/edtName'
    element :txtField_nohp_pelanggan, :id, 'com.pawoon.pos.staging:id/edtPhone'
    element :btn_simpan, :id, 'com.pawoon.pos.staging:id/tvSave'

    element :errorMessage_Nama, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/textinput_error").instance(0)'
    element :errorMessage_NoTlp, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/textinput_error").instance(1)'
    element :txtField_ubah_NamaPelanggan, :id, 'com.pawoon.pos.staging:id/edtName'
    element :btn_simpan_ubahPelanggan, :id, 'com.pawoon.pos.staging:id/tvSave'

    element :btn_operator_EkoGreen, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tvName").instance(1)'
    element :btn_back, :accessibility_id, 'Kembali ke atas'
    element :btn_close, :id, 'com.pawoon.pos.staging:id/ivClose'

    element :errorMessage_NoTlpNew, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/textinput_error").instance(0)'
    
end