class TransaksiPage < Appom::Page
    element :text_produkPaketHemat, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_product_name").instance(0)'
    element :text_produkN1, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_product_name").instance(1)'
    element :text_produkNO, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_product_name").instance(2)'
    element :text_produkV1, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_product_name").instance(3)'
    element :text_produkVO, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_product_name").instance(4)'
    element :text_produkX1, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_product_name").instance(5)'
    element :text_produkX2, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_product_name").instance(6)'
    element :text_produkX3, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_product_name").instance(7)'
    element :text_produkZ, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_product_name").instance(8)'
    element :text_produkZ1, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_product_name").instance(9)'
    element :text_produkZ2, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_product_name").instance(10)'
    element :text_produkZ3, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_product_name").instance(11)'
    element :text_produkZ4, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_product_name").instance(12)'

    element :text_produkN1Loop, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_product_name").instance(1)'

    element :btn_OK, :id, 'android:id/button1'

    element :text_produkNOplus, :id, 'com.pawoon.pos.staging:id/plus'
    element :text_produkNOmin, :id, 'com.pawoon.pos.staging:id/min'
    element :text_produkNOsave, :id, 'com.pawoon.pos.staging:id/save'
    element :text_produkV1variant1, :id, 'com.pawoon.pos.staging:id/variant_detail'
    element :text_produkV1variant1save, :id, 'com.pawoon.pos.staging:id/save'


    element :btn_saya_mengerti_trx, :id, 'com.pawoon.pos.staging:id/tv_dismiss' 
    element :btn_saya_mengerti_metod, :id, 'com.pawoon.pos.staging:id/tv_dismiss'
    element :btn_bayar, :id, 'com.pawoon.pos.staging:id/btn_pay'
    element :btn_simpan, :id, 'com.pawoon.pos.staging:id/btn_save' 
    element :btn_simpanNew, :uiautomator, 'new UiSelector().className("android.widget.Button").instance(1)'
    element :btn_transaksi_tersimpan, :id, 'com.pawoon.pos.staging:id/fragment_saved_transaction'
    element :btn_transaksi_tersimpanNew, :uiautomator, 'new UiSelector().className("android.widget.FrameLayout").instance(1)'
    element :btn_transaksi_tersimpanNew1, :uiautomator, 'new UiSelector().className("android.widget.TextView").instance(3)'

    element :btn_lanjutkan_transaksi, :id, 'com.pawoon.pos.staging:id/tvButtonVoid'

    element :btn_meja, :id, 'com.pawoon.pos.staging:id/cl_table'
    element :btn_custom_amount, :id, 'com.pawoon.pos.staging:id/cl_custom_amount'
    element :btn_pelanggan, :id, 'com.pawoon.pos.staging:id/cl_customer'
    element :btn_pesanan_online, :id, 'com.pawoon.pos.staging:id/nav_graph_transaction_integration'
    element :btn_tipe_penjualan, :id, 'com.pawoon.pos.staging:id/btn_sales_type'
    element :btn_more, :id, 'com.pawoon.pos.staging:id/action_menu_more'
    element :btn_drawer, :id, 'Buka panel navigasi'

    element :btn_drawer, :accessibility_id, 'Buka panel navigasi'
    element :btn_updatedata, :id, 'com.pawoon.pos.staging:id/btn_sync'
    element :btn_transaksibaru, :id, 'com.pawoon.pos.staging:id/fragment_transaction_home'
    element :btn_riwayattransaksi, :id, 'com.pawoon.pos.staging:id/action_transaction_history'
    element :btn_rekapkas, :id, 'com.pawoon.pos.staging:id/action_cash_management_old'
    element :btn_tambahproduk, :id, 'com.pawoon.pos.staging:id/action_manage_product'
    element :btn_laporan, :id, 'com.pawoon.pos.staging:id/action_report'
    element :btn_operator, :id, 'com.pawoon.pos.staging:id/action_operator'
    element :btn_absensi, :id, 'com.pawoon.pos.staging:id/action_absences'
    element :btn_setting, :id, 'com.pawoon.pos.staging:id/action_setting'

    
    element :btn_detail_Produk, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_name").instance(0)'
    element :btn_detail_Produk_Hapus, :id, 'com.pawoon.pos.staging:id/rvHapusProduk'
    element :btn_detail_Produk_Kembali, :id, 'com.pawoon.pos.staging:id/llKembali'
    element :btn_detail_Produk_Simpan, :id, 'com.pawoon.pos.staging:id/llSimpan'

    element :btn_titiktiga, :id, 'com.pawoon.pos.staging:id/action_menu_more'
    element :btn_batalkanTransaksi, :id, 'com.pawoon.pos.staging:id/btn_cancel_transaction'
    element :btn_gunakanVoucher, :id, 'com.pawoon.pos.staging:id/use_voucher'
    element :btn_batalkanVoucher, :id, 'com.pawoon.pos.staging:id/use_voucher'

    element :btn_tambahDiskonManual, :id, 'com.pawoon.pos.staging:id/rvUbahDiskon'
    element :btn_tambahDiskonManualPersen, :id, 'com.pawoon.pos.staging:id/ctvPercent'
    element :btn_tambahDiskonManualRupiah, :id, 'com.pawoon.pos.staging:id/ctvRupiah'
    element :txtField_tambahDiskonManual, :id, 'com.pawoon.pos.staging:id/cetDiscountValue'
    element :btn_tambahDiskonManualSimpan, :id, 'com.pawoon.pos.staging:id/ctvSave'

    element :txt_diskonDiCart, :id, 'com.pawoon.pos.staging:id/tv_discount_label'

end