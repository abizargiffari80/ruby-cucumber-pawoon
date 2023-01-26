require 'appium_lib'

class CicilanPage < Appom::Page

    element :btn_simpan_cicilan, :id, 'com.pawoon.pos.staging:id/action_save'
    element :btn_detail_cicilan, :id, 'com.pawoon.pos.staging:id/detail'
    element :checkbox_cicilan1, :id, 'com.pawoon.pos.staging:id/installment_check'
    element :btn_bayar_cicilan, :id, 'com.pawoon.pos.staging:id/button_pay'
    element :txt_customer, :id, 'com.pawoon.pos.staging:id/customer_name'

    element :scrollF, :uiautomator, 'new UiScrollable(new UiSelector().scrollIntoView("
    + "new UiSelector().resourceId("com.pawoon.pos.staging:id/installment_check")))'

    element :cekbox_cicilan1, :uiautomator, 'new UiScrollable(new UiSelector().scrollable(true).instance(0))" +
         ".scrollIntoView(new UiSelector().resourceId("com.pawoon.pos.staging:id/installment_check").instance(0));'


    # ------------------------------------

    element :btn_pilihPelanggan_cicilan, :id, 'android:id/button1'
    element :dropdown_jumlah_cicilan, :id, 'com.pawoon.pos.staging:id/total_installment'
    element :dropdown_periode_cicilan, :id, 'com.pawoon.pos.staging:id/period_installment'
    element :textfield_uangmuka_cicilan, :id, 'com.pawoon.pos.staging:id/down_payment'

    element :txt_jumlah_cicilan, :uiautomator, 'new UiSelector().resourceId("android:id/text1").instance(0)'
    element :txt_periode_cicilan, :uiautomator, 'new UiSelector().resourceId("android:id/text1").instance(0)'
    element :txt_tipe_periode_cicilan, :uiautomator, 'new UiSelector().resourceId("android:id/text1").instance(1)'

    element :txt_cicilanke12, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/installment").instance(6)'

    element :txt_periode_mingguan, :uiautomator, 'new UiSelector().resourceId("android:id/text1").instance(0)'
    element :txt_periode_bulanan, :uiautomator, 'new UiSelector().resourceId("android:id/text1").instance(1)'
    element :txt_periode_custom, :uiautomator, 'new UiSelector().resourceId("android:id/text1").instance(2)'

    element :txt_periode_cicilan1, :uiautomator, 'new UiSelector().resourceId("android:id/text1").instance(0)'
    element :txt_periode_cicilan2, :uiautomator, 'new UiSelector().resourceId("android:id/text1").instance(1)'
    element :txt_periode_cicilan3, :uiautomator, 'new UiSelector().resourceId("android:id/text1").instance(2)'
    element :txt_periode_cicilan4, :uiautomator, 'new UiSelector().resourceId("android:id/text1").instance(3)'
    element :txt_periode_cicilan5, :uiautomator, 'new UiSelector().resourceId("android:id/text1").instance(4)'
    element :txt_periode_cicilan6, :uiautomator, 'new UiSelector().resourceId("android:id/text1").instance(5)'
    element :txt_periode_cicilan7, :uiautomator, 'new UiSelector().resourceId("android:id/text1").instance(6)'
    element :txt_periode_cicilan8, :uiautomator, 'new UiSelector().resourceId("android:id/text1").instance(7)'
    element :txt_periode_cicilan9, :uiautomator, 'new UiSelector().resourceId("android:id/text1").instance(8)'
    element :txt_periode_cicilan10, :uiautomator, 'new UiSelector().resourceId("android:id/text1").instance(9)'
    # ke 12 ttp index ke 9
    
    
    element :txt_jatuhtempo_cicilan1, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/due_date").instance(0)'
    element :txt_jatuhtempo_cicilan2, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/due_date").instance(1)'

    element :txt_kalender_custom_cicilan, :id,'android:id/date_picker_header_date'
    element :btn_oke_kalender_custom_cicilan, :id, 'android:id/button1'
    element :txt_jumlah_cicilan1, :id, 'com.pawoon.pos.staging:id/installment_amount'

    element :txt_cicilan1, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/installment").instance(0)'
    element :txt_cicilan2, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/installment").instance(1)'
    
    element :txt_LUNAS_cicilan, :id,'com.pawoon.pos.staging:id/installment_remaining'
    
    element :txt_total_pembayaran, :id, 'com.pawoon.pos.staging:id/tv_total'
    element :txt_total_pembayaran_cicilan, :id, 'com.pawoon.pos.staging:id/billed_amount_text'

    element :txt_total_poin_pel_cicilan, :id, 'com.pawoon.pos.staging:id/customer_point'
    element :txt_poin_transaksi, :id, 'com.pawoon.pos.staging:id/tvPointIssue'

    # --------------------------------------------------------------------------------------------------------------------------
    # halaman cicilan
    element :txt_nama_pelanggan, :id, 'com.pawoon.pos.staging:id/customer_name'
    element :txt_total_tagihan, :id, 'com.pawoon.pos.staging:id/billed_amount_text'
    element :jumlah_cicilan, :uiautomator, 'new UiSelector().resourceId("android:id/text1").instance(0)'
    element :periode_cicilan, :uiautomator, 'new UiSelector().resourceId("android:id/text1").instance(1)'
    element :uang_muka, :id, 'com.pawoon.pos.staging:id/down_payment'
    element :txt_cicilanke1, :id, 'com.pawoon.pos.staging:id/installment'
    element :txt_tanggal_jatuhtempo, :id, 'com.pawoon.pos.staging:id/due_date'
    element :txt_jumlah_harga_cicilan, :id, 'com.pawoon.pos.staging:id/installment_amount'
    element :txt_jumlah_hargaTotal_cicilan, :id, 'com.pawoon.pos.staging:id/grand_total_installment'
    element :btn_simpan, :id, 'com.pawoon.pos.staging:id/action_save'


    # halaman detail cicilan
    element :txt_nama_pelanggan, :id, 'com.pawoon.pos.staging:id/customer_name'
    element :txt_receipt_code, :id, 'com.pawoon.pos.staging:id/receipt_code'
    element :txt_jumlah_tagihan, :id, 'com.pawoon.pos.staging:id/billed'
    element :txt_jumlah_sudah_dibayar, :id, 'com.pawoon.pos.staging:id/paid'
    element :txt_jumlah_sisa_pembayaran, :id, 'com.pawoon.pos.staging:id/unpaid'

    # (riwayat pembayaran)
    element :txt_Uang_Muka_DP, :id, 'com.pawoon.pos.staging:id/installment'
    element :txt_jatuh_tempo_rp, :id, 'com.pawoon.pos.staging:id/due_date'
    element :txt_tanggal_dibayar, :id, 'com.pawoon.pos.staging:id/paid_date'
    element :txt_jumlah_nominal, :id, 'com.pawoon.pos.staging:id/amount'
    element :txt_tipe_metode_pembayaran, :id, 'com.pawoon.pos.staging:id/payment_method'
    element :txt_nama_kasir, :id, 'com.pawoon.pos.staging:id/cashier'

    # (sisa pembayaran)
    element :checkbox_cicilanKe1, :id, 'com.pawoon.pos.staging:id/installment_check'
    element :txt_jatuh_tempo_sp, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/due_date").instance(1)'
    element :txt_jumlah_sp, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/amount").instance(1)'
    element :btn_bayar, :id, 'com.pawoon.pos.staging:id/button_pay'



end