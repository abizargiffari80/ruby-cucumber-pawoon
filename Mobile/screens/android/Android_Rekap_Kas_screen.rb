class RekapKasPage < Appom::Page

    element :btn_lainnya, :id, 'com.pawoon.pos.staging:id/llLainnya'
    element :btn_toggle_rekapkas, :id, 'com.pawoon.pos.staging:id/scRekapKasSaldo'
    element :btn_back, :accessibility_id, 'Kembali ke atas'
    element :btn_Rekap_Kas, :id, 'com.pawoon.pos.staging:id/action_rekap'
    element :txtField_tunai, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/ctvRp").instance(0)'
    element :txtField_kartu, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/ctvRp").instance(1)'
    element :txtField_debitX, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/ctvRp").instance(2)'
    element :txtField_creditX, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/ctvRp").instance(3)'

    element :txt_jumlahTunai, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/ctvTipePembayaranTips").instance(0)'
    element :txt_jumlahKartu, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/ctvTipePembayaranTips").instance(1)'
    element :txt_jumlahDebitX, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/ctvTipePembayaranTips").instance(2)'
    element :txt_jumlahCreditX, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/ctvTipePembayaranTips").instance(3)'

    element :btn_Simpan, :id, 'com.pawoon.pos.staging:id/ctvSave'
    element :btn_SayaMengerti, :id, 'android:id/button1'
    element :btn_Tidak, :id, 'com.pawoon.pos.staging:id/btnCancel'
    element :txt_totalHarusnya, :id, 'com.pawoon.pos.staging:id/ctvTotalTips'
    element :txt_jumlahTotal, :id, 'com.pawoon.pos.staging:id/ctvTotal'

    element :txtField_tunaii, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/cetTipePembayaran").instance(0)'

end