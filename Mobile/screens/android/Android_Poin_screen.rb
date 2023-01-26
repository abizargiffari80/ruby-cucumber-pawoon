class PoinPage < Appom::Page

    element :btn_poin, :id, 'com.pawoon.pos.staging:id/action_point'
    element :txtfield_reddempoin, :id, 'com.pawoon.pos.staging:id/eRedeemPoinPawoon'
    element :btn_redeempoin, :id, 'com.pawoon.pos.staging:id/redeem'
    element :txt_jmlhredeemedPoin, :id, 'com.pawoon.pos.staging:id/issued_point'

    element :txt_poinDidapat, :id, 'com.pawoon.pos.staging:id/tvPointIssue'
    element :txt_poinDigunakan, :id, 'com.pawoon.pos.staging:id/tvPointRedeem'

    element :btn_pilihPelanggan, :id, 'android:id/button1'
    element :txt_JumlahPoinPelanggan, :id, 'com.pawoon.pos.staging:id/tvPoinMemberPoint'
    element :txt_PoinTIdakCukup, :id, 'android:id/message'
    element :txt_poinRegistrasi, :id, 'com.pawoon.pos.staging:id/issued_point'
    element :txt_poinTrx, :id, 'com.pawoon.pos.staging:id/issued_point'
    element :txt_validasiPoinMelebihiMaksPoin, :id, 'com.pawoon.pos.staging:id/tvPoinMelebihiMaksPoin'

    #ppob
    element :text_CategoryProdukDigital, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_category_name").instance(1)'
    element :text_PaketData, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_product_name").instance(0)'
    element :text_PulsaIsiUlang, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_product_name").instance(1)'

    element :btn_1_ppob, :uiautomator, 'new UiSelector().className("android.widget.TextView").instance(5)'
    element :btn_2_ppob, :uiautomator, 'new UiSelector().className("android.widget.TextView").instance(6)'
    element :btn_3_ppob, :uiautomator, 'new UiSelector().className("android.widget.TextView").instance(7)'
    element :btn_4_ppob, :uiautomator, 'new UiSelector().className("android.widget.TextView").instance(8)'
    element :btn_5_ppob, :uiautomator, 'new UiSelector().className("android.widget.TextView").instance(9)'
    element :btn_6_ppob, :uiautomator, 'new UiSelector().className("android.widget.TextView").instance(10)'
    element :btn_7_ppob, :uiautomator, 'new UiSelector().className("android.widget.TextView").instance(11)'
    element :btn_8_ppob, :uiautomator, 'new UiSelector().className("android.widget.TextView").instance(12)'
    element :btn_9_ppob, :uiautomator, 'new UiSelector().className("android.widget.TextView").instance(13)'
    element :btn_0_ppob, :uiautomator, 'new UiSelector().className("android.widget.TextView").instance(14)'
    element :btn_hapus_ppob, :uiautomator, 'com.pawoon.pos.staging:id/backspace'

    element :btn_Pilih_Produk_ppob, :id, 'com.pawoon.pos.staging:id/buy'
    element :btn_Konfirmasi_ppob, :id, 'com.pawoon.pos.staging:id/buy'

    element :produk_ppob_pulsa5000, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/amount").instance(1)'

    element :btn_1_pin_ppob, :uiautomator, 'new UiSelector().className("android.widget.TextView").instance(2)'
    element :btn_2_pin_ppob, :uiautomator, 'new UiSelector().className("android.widget.TextView").instance(3)'
    element :btn_3_pin_ppob, :uiautomator, 'new UiSelector().className("android.widget.TextView").instance(4)'
    element :btn_4_pin_ppob, :uiautomator, 'new UiSelector().className("android.widget.TextView").instance(5)'
    element :btn_5_pin_ppob, :uiautomator, 'new UiSelector().className("android.widget.TextView").instance(6)'
    element :btn_6_pin_ppob, :uiautomator, 'new UiSelector().className("android.widget.TextView").instance(7)'
    element :btn_7_pin_ppob, :uiautomator, 'new UiSelector().className("android.widget.TextView").instance(8)'
    element :btn_8_pin_ppob, :uiautomator, 'new UiSelector().className("android.widget.TextView").instance(9)'
    element :btn_9_pin_ppob, :uiautomator, 'new UiSelector().className("android.widget.TextView").instance(10)'
    element :btn_0_pin_ppob, :uiautomator, 'new UiSelector().className("android.widget.TextView").instance(11)'
    element :btn_hapus_pin_ppob, :uiautomator, 'com.pawoon.pos.staging:id/backspace'

    element :btn_transaksi_tersimpan_produkPpob, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_title").instance(1)'

    element :txt_totalPoinPelanggan, :id, 'com.pawoon.pos.staging:id/customer_point'

    element :txt_produkDetail, :id, 'com.pawoon.pos.staging:id/tv_name'
    element :txt_produkDetail_UbahHarga, :id, 'com.pawoon.pos.staging:id/rvUbahHarga'
    element :txt_produkDetail_UbahHarga_Hapus, :id, 'com.pawoon.pos.staging:id/tvDelete'
    element :txt_produkDetail_UbahHarga_Simpan, :id, 'com.pawoon.pos.staging:id/tvPay'
    element :txt_produkDetail_Simpan, :id, 'com.pawoon.pos.staging:id/llSimpan'

end