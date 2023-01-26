class SplitPage < Appom::Page

    element :btn_split_bill, :id, 'com.pawoon.pos.staging:id/btn_split_bill'
    element :btn_select_split, :id, 'com.pawoon.pos.staging:id/btn_select'
    element :btn_plus_split_bill, :id, 'com.pawoon.pos.staging:id/ivIndicator'
    element :btn_bayar_split_bill, :id, 'com.pawoon.pos.staging:id/llPayment'

    element :btn_split_payment, :id, 'com.pawoon.pos.staging:id/btn_split_payment'
    element :btn_pm1, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_payment_method").instance(0)'
    element :btn_pm2, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_payment_method").instance(1)'
    element :btn_pm3, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_payment_method").instance(2)'
    element :btn_pm4, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_payment_method").instance(3)'
    element :btn_pm5, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_payment_method").instance(4)'
    element :btn_bayar1, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_pay").instance(0)'
    element :btn_bayar2, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_pay").instance(1)'
    element :btn_tunai, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_payment_name").instance(0)'
    element :btn_kartu, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_payment_name").instance(1)'
    element :btn_lanjutkan_pembayaran, :id, 'com.pawoon.pos.staging:id/tvDone'

    #split payment
    element :btn_back, :accessibility_id, 'Kembali ke atas'
    element :btn_tambah_mp, :id, 'com.pawoon.pos.staging:id/tv_add_payment_method'
    element :text_split_pembayaran, :id, 'com.pawoon.pos.staging:id/txv_split_pembayaran'
    element :btn_hapus1, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_operation").instance(0)'
    element :btn_hapus2, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_operation").instance(1)'
    element :btn_hapus3, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_operation").instance(2)'
    element :btn_hapus4, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_operation").instance(3)'
    element :btn_hapus5, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_operation").instance(4)'
    
    element :btn_bayar1, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_pay").instance(0)'
    element :btn_bayar2, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_pay").instance(1)'
    element :btn_bayar3, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_pay").instance(2)'
    element :btn_bayar4, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_pay").instance(3)'
    element :btn_bayar5, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_pay").instance(4)'

    element :txtField_ammount1, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/et_payment_amount").instance(0)'
    element :txtField_ammount2, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/et_payment_amount").instance(1)'
    element :txtField_ammount3, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/et_payment_amount").instance(2)'
    element :txtField_ammount4, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/et_payment_amount").instance(3)'
    element :txtField_ammount5, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/et_payment_amount").instance(4)'

    element :btn_mpTunai, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_payment_name").instance(0)'
    element :btn_mpKartu, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_payment_name").instance(1)'
    element :btn_mpDebit, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_payment_name").instance(2)'
    element :btn_mpCredit, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_payment_name").instance(3)'

    #split bill
    element :btn_diskon_split_bill, :id, 'com.pawoon.pos.staging:id/action_discount'
    element :btn_simpan_split_bill, :id, 'com.pawoon.pos.staging:id/action_save'
    element :btn_OK_simpan_split_bill, :id, 'android:id/button1'


end