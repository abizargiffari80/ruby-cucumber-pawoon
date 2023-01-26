class PawoonOrderPage < SitePrism::Page

    # produk page
    element :dropdown_selectCategory, '#selectCategory'
    element :btn_closeCategory, '#closeCategorySelection'
    element :Category, '#app > div.bg-overlay > div.popup.popup-bottom.popup-category-selection > div'
    element :txt_produkZ, '#\31 bccff70-ae21-11e9-8675-7f4e7d561f7b > div:nth-child(2) > div > div.col-md-9.col-sm-9.col-9 > div > p.title'
    element :radioButton_NormalOpsi, '#ea0a9630-b2b1-11e9-b8b8-51a8f7db0a02'
    element :radioButton_NormalZ, '#\31 bccff70-ae21-11e9-8675-7f4e7d561f7b'
    element :radioButton_NormalP, '#ea064da0-b2b1-11e9-acb4-1d17f79c961a'
    element :radioButton_Variant, '#ea115aa0-b2b1-11e9-8db2-3f5b8abb6378'
    element :radioButton_VariantOpsi, '#eabd60c0-b2b1-11e9-8c84-f9744b7b67f0'
    element :radioButton_NormalX, '#ffa32fa0-f904-11ec-b89c-db982876388e'
    element :txt_produkNO, '#ea0a9630-b2b1-11e9-b8b8-51a8f7db0a02 > div > div > div.col-md-9.col-sm-9.col-9 > div > p.title'
    element :txt_produkNO_Opsi1, '#modifier-list > div > div:nth-child(2) > div > div.col.i-flex-right > div > ul > li.qty-plus > i'
    element :txt_produkV, '#ea115aa0-b2b1-11e9-8db2-3f5b8abb6378 > div > div > div.col-md-9.col-sm-9.col-9 > div > p.title'
    element :txt_produkV_Var1, '#variant-list > div.selection-group.variants.variant-1 > div:nth-child(2) > div > div.col.i-flex-right > input[type=radio]'
    element :txt_produkV_Var2, '#variant-list > div.selection-group.variants.variant-2 > div:nth-child(2) > div > div.col.i-flex-right > input[type=radio]'
    element :txt_produkV_Var3, '#variant-list > div.selection-group.variants.variant-3 > div:nth-child(2) > div > div.col.i-flex-right > input[type=radio]'
    element :txt_produkVO, '#eabd60c0-b2b1-11e9-8c84-f9744b7b67f0 > div > div > div.col-md-9.col-sm-9.col-9 > div > p.title'
    element :txt_produkVO_Var1, '#variant-list > div.selection-group.variants.variant-1 > div:nth-child(2) > div > div.col.i-flex-right > input[type=radio]'
    element :txt_produkVO_Var2, '#variant-list > div.selection-group.variants.variant-2 > div:nth-child(2) > div > div.col.i-flex-right > input[type=radio]'
    element :txt_produkVO_Var3, '#variant-list > div.selection-group.variants.variant-3 > div:nth-child(2) > div > div.col.i-flex-right > input[type=radio]'

    element :btn_kurangiProduk, '#app > div.bg-overlay > div.popup.popup-bottom.popup-detail-item > div > div.popup-body.high > form > div.absolute-box.bottom > div > div.col.text-right > div > ul > li.qty-min > i'

    # checkout page
    element :checkout_Header, '#app > section.top-header'
    element :checkout_Footer, '#app > div.popup.popup-bottom.popup-info-detail-price-and-tax > div > div > div'
    element :txt_checkoutNamaOutlet, '#app > section.content-wrapper.checkout > div.merchant-detail > div > div.address-component > p'
    element :txt_namaProduk, '#list-cart-wrapper > div > div > div.col-md-9.col-sm-9.col-9 > div > div.row.detail-head > p'
    element :txt_hargaProduk, '#list-cart-wrapper > div > div > div.col-md-9.col-sm-9.col-9 > div > div.detail-bottom > div > div.col.text-left > span'
    element :btn_editProduk, '#appendProductVariants > div > div > div.col-2.i-flex-right > a > img'
    element :btn_ubahPesanan, '#list-cart-wrapper > div > div > div.col-md-9.col-sm-9.col-9 > div > div.row.detail-head > div > i'
    element :btn_tambahPesananLain, '#btnAddOrder'
    element :btn_updatePesanan, '#app > div.popup.popup-bottom.popup-detail-item > div > div.popup-body.high > form > div.absolute-box.bottom > div > div.col-12.mt-10 > button'
    element :btn_hapusPesanan, '#list-cart-wrapper > div > div > div.col-md-9.col-sm-9.col-9 > div > div.detail-bottom > div > div.col.i-flex-right > div > ul > li.qty-min > i'
    
    element :btn_lihatDetailTrx, '#app > div.popup.popup-bottom.popup-info-detail-price-and-tax > div > div > div > div.tax-service-info > div.row.title > div.col.text-right > small'
    element :btn_tutupDetailTrx, '#app > div.popup.popup-bottom.popup-info-detail-price-and-tax > div > div > div > div.tax-service-info > div.row.title.active > div.col.text-right > small > i'
    element :txt_detailTrx_Subtotal, '#app > div.popup.popup-bottom.popup-info-detail-price-and-tax > div > div > div > div.tax-service-info > div.tax-service-detail > div:nth-child(1) > div:nth-child(1) > div'
    element :txt_detailTrx_Service, '#app > div.popup.popup-bottom.popup-info-detail-price-and-tax > div > div > div > div.tax-service-info > div.tax-service-detail > div:nth-child(2) > div:nth-child(1) > div'
    element :txt_detailTrx_Ppn, '#app > div.popup.popup-bottom.popup-info-detail-price-and-tax > div > div > div > div.tax-service-info > div.tax-service-detail > div:nth-child(2) > div:nth-child(1) > div'
    element :txt_detailTrx_Total, '#app > div.popup.popup-bottom.popup-info-detail-price-and-tax > div > div > div > div.row.total-cart > div:nth-child(1) > div'
    element :txt_detailTrx_jumlahSubtotal, '#subtotal'
    element :txt_detailTrx_jumlahService, '#app > div.popup.popup-bottom.popup-info-detail-price-and-tax > div > div > div > div.tax-service-info > div.tax-service-detail > div:nth-child(2) > div.col.text-right > span'
    element :txt_detailTrx_jumlahPpn, '#app > div.popup.popup-bottom.popup-info-detail-price-and-tax > div > div > div > div.tax-service-info > div.tax-service-detail > div:nth-child(3) > div.col.text-right > span'
    element :txt_detailTrx_jumlahTotal, '#totalPrice'


    element :txt_produkVO_Opsi1, '#modifier-list > div > div:nth-child(2) > div > div.col.i-flex-right > div > ul > li.qty-plus > i'
    element :txtArea_catatanProduk, '#note'
    element :btn_tambahPesanan, '#app > div.bg-overlay > div.popup.popup-bottom.popup-detail-item > div > div.popup-body.high > form > div.absolute-box.bottom > div > div.col-12.mt-10 > button'
    element :btn_selanjutnya, '#btnNext'
    element :btn_tambahQtyPesanan, '#list-cart-wrapper > div > div > div.col-md-9.col-sm-9.col-9 > div > div.detail-bottom > div > div.col.i-flex-right > div > ul > li.qty-plus > i'
    element :btn_kurangiQtyPesanan, '#list-cart-wrapper > div > div > div.col-md-9.col-sm-9.col-9 > div > div.detail-bottom > div > div.col.i-flex-right > div > ul > li.qty-min > i'
    element :txt_qtyPesanan, '#list-cart-wrapper > div > div > div.col-md-9.col-sm-9.col-9 > div > div.detail-bottom > div > div.col.i-flex-right > div > ul > li.qty-count.qty-count-product-cart'
    element :txt_opsiTambahanDanQty, '#list-cart-wrapper > div:nth-child(2) > div > div.col-md-9.col-sm-9.col-9 > div > ul > li'

    # data diri page
    element :txtField_Nama, '#name'
    element :txtField_noTlp, '#phoneNumber'
    element :txtField_Meja, '#tableNumber'
    element :btn_PilihMetodePembayaran, '#confirmOrder'
    element :errorMessage_nama, '#name-error'
    element :errorMessage_noTlp, '#phoneNumber-error'
    element :errorMessage_noMeja, '#tableNumber-error'

    # bayar dikasir
    element :txt_bayarDiKasir, '#app > div.popup.popup-center.popup-confirm-info > div > div.popup-body > div > h5'
    element :btn_lakukanPembayaranDiKasir, '#btnShowReceipt'
    element :txt_segeraLakukanPembayaranDiKasir, '#alertReceiptMessage'

    # detail struk
    element :receipt, '#receipt > div'
    element :logoStruk, '#receipt > div > div.img-company-logo > img'
    element :txt_outletNameStruk, '#outlet-name'
    element :txt_phoneNumberStruk, '#outlet-phone'

    #isinya / seblah kanan
    element :txt_kodeStruk, '#receipt-code'
    element :txt_tanggalStruk, '#transaction-date'
    element :txt_namaPelangganStruk, '#customer-name'
    element :txt_nomorMejaStruk, '#table-no'

    element :txt_nameProdukStruk, '#receipt > div > div.text-wrapper > div.my-items > div > div.col-6'
    element :txt_opsiTambahanStruk, '#receipt > div > div.text-wrapper > div.my-items > div:nth-child(3) > div'

    element :txt_subtotalProdukStruk, '#receipt > div > div.text-wrapper > div:nth-child(8) > div.col-5'
    element :txt_serviceStruk, '#receipt > div > div.text-wrapper > div.tns-outlet.my-service > div > div.col-5'
    element :txt_pajakStruk, '#receipt > div > div.text-wrapper > div.tns-outlet.my-tax > div > div.col-5'
    element :txt_catatanStruk, '#receipt > div > div.text-wrapper > div.row.bill-note > div.col-3'
    element :txt_totalProdukStruk, '#receipt > div > div.text-wrapper > div:nth-child(14) > div.col-5 > b'

    #-----
    element :txt_qtyProdukZStruk, '#receipt > div > div.text-wrapper > div.my-items > div:nth-child(1) > div.col-2'
    element :txt_qtyProdukNOStruk, '#receipt > div > div.text-wrapper > div.my-items > div:nth-child(2) > div.col-2'

    #-----
    element :txt_hargaProdukZStruk, '#receipt > div > div.text-wrapper > div.my-items > div:nth-child(1) > div.col-4.text-right'
    element :txt_hargaProdukNOStruk, '#receipt > div > div.text-wrapper > div.my-items > div:nth-child(2) > div.col-4.text-right'
    element :txt_jumlahSubtotalStruk, '#receipt > div > div.text-wrapper > div:nth-child(8) > div.col-7.text-right.subtotal'
    element :txt_jumlahServiceStruk, '#receipt > div > div.text-wrapper > div.tns-outlet.my-service > div > div.col-7.text-right > span'
    element :txt_jumlahPajakStruk, '#receipt > div > div.text-wrapper > div.tns-outlet.my-tax > div > div.col-7.text-right > span'
    element :txt_isiCatatanStruk, '#receipt > div > div.text-wrapper > div.row.bill-note > div.col-7.note'
    element :txt_jumlahTotalStruk, '#receipt > div > div.text-wrapper > div:nth-child(14) > div.col-7.text-right.final-amount'
    
    # payment method
    element :radioBtn_bayarDiKasir, '#form-checkout > div.checkout-form.payment-method > div > div > div > div:nth-child(1) > label.payment-item > div > div.col.i-flex-right > input[type=radio]'
    element :radioBtn_Gopay, '#form-checkout > div.checkout-form.payment-method > div > div > div > div:nth-child(2) > label:nth-child(2) > div > div.col.i-flex-right > input[type=radio]'
    element :radioBtn_Shopeepay, '#form-checkout > div.checkout-form.payment-method > div > div > div > div:nth-child(2) > label:nth-child(3) > div > div.col.i-flex-right > input[type=radio]'
    element :radioBtn_Mandiri, '#form-checkout > div.checkout-form.payment-method > div > div > div > div:nth-child(3) > label:nth-child(2) > div > div.col.i-flex-right > input[type=radio]'
    element :radioBtn_Permata, '#form-checkout > div.checkout-form.payment-method > div > div > div > div:nth-child(3) > label:nth-child(3) > div > div.col.i-flex-right > input[type=radio]'
    element :radioBtn_Bri, '#form-checkout > div.checkout-form.payment-method > div > div > div > div:nth-child(3) > label:nth-child(4) > div > div.col.i-flex-right > input[type=radio]'
    element :radioBtn_Bni, '#form-checkout > div.checkout-form.payment-method > div > div > div > div:nth-child(3) > label:nth-child(5) > div > div.col.i-flex-right > input[type=radio]'
    element :btn_bayarSekarang, '#confirmOrder'
    element :popUp_OutletSedangTidakAktif, 'body > div.jq-toast-wrap > div'

    # bayar gopay
    element :txtField_pinGopay, '#pin'
    element :btn_Submit, '#wrap > div.container > form > div:nth-child(5) > div > button'
    
    # berhasil bayar
    element :txt_pemabayaranKamuBerhasil, '#app > div.popup.popup-center.popup-payment-success > div > div.popup-body > div > h5'
    element :btn_showReceipt, '#btnShowReceipt'
    element :btn_buatPesanan_baru, '#btnReorder > div > div.col-7.box-info > h5'
    element :btn_kembaliKeHalamanUtama, '#btnHome'

    # selected produk
    element :txt_x1_produkZ, '#\31 bccff70-ae21-11e9-8675-7f4e7d561f7b > div.list-item.update > div > div.col-md-9.col-sm-9.col-9 > div > span.qty-select'
    element :txt_x1_produkNO, '#ea0a9630-b2b1-11e9-b8b8-51a8f7db0a02 > div > div > div.col-md-9.col-sm-9.col-9 > div > span.qty-select'
    element :txt_x1_produkV, '#ea115aa0-b2b1-11e9-8db2-3f5b8abb6378 > div > div > div.col-md-9.col-sm-9.col-9 > div > span.qty-select'
    element :txt_x1_produkVO, '#eabd60c0-b2b1-11e9-8c84-f9744b7b67f0 > div > div > div.col-md-9.col-sm-9.col-9 > div > span.qty-select'

    # header
    element :header, '#app > section.top-header'
    element :banner, '#app > section.content-wrapper > div > div.image-wrapper > img'
    element :txt_home_namaOutlet, '#app > section.content-wrapper > div > div.filter-wrapper.bg-grey > div.address-component > h4'
    element :txt_home_alamatOutlet, '#app > section.content-wrapper > div > div.filter-wrapper.bg-grey > div.address-component > p:nth-child(2) > small'
    element :txt_home_dropDownCategory, '#selectCategory'
    element :txt_home_titleCategory, '#selectCategory > div > div.col-md-10.col-sm-10.col-10 > p'
    element :txt_home_fotoProduk, '#\31 bccff70-ae21-11e9-8675-7f4e7d561f7b > div:nth-child(2) > div > div.col-md-3.col-sm-3.col-3 > div > img'
    element :txt_home_namaProduk, '#\31 bccff70-ae21-11e9-8675-7f4e7d561f7b > div:nth-child(2) > div > div.col-md-9.col-sm-9.col-9 > div > p.title'
    element :txt_home_descProduk, '#\31 bccff70-ae21-11e9-8675-7f4e7d561f7b > div:nth-child(2) > div > div.col-md-9.col-sm-9.col-9 > div > p.description'
    element :txt_home_hargaProduk, '#\31 bccff70-ae21-11e9-8675-7f4e7d561f7b > div:nth-child(2) > div > div.col-md-9.col-sm-9.col-9 > div > span.price'
    element :txt_home_qtyProduk, '#\31 bccff70-ae21-11e9-8675-7f4e7d561f7b > div.list-item.update > div > div.col-md-9.col-sm-9.col-9 > div > span.qty-select'
    
    # detail produk
    element :form_detail_produk, '#app > div.bg-overlay > div.popup.popup-bottom.popup-detail-item > div'
    element :txt_detail_namaProduk, '#app > div.bg-overlay > div.popup.popup-bottom.popup-detail-item > div > div.popup-header > div > div.col-8.title.text-left'
    element :btn_close_detail, '#closePopupDetailItem'
    element :txt_detail_gambarProduk, '#app > div.bg-overlay > div.popup.popup-bottom.popup-detail-item > div > div.popup-body.high > form > div.image-wrapper.text-center.detail-item-img > img'
    element :txtField_detail_catatanProduk, '#note'

    element :footer_detailProduk, '#app > div.bg-overlay > div.popup.popup-bottom.popup-detail-item > div > div.popup-body.high > form > div.absolute-box.bottom'
    element :txt_footerdetail_hargaProduk, '#totalItemPrice'
    element :btn_footerdetail_minusQty, '#app > div.bg-overlay > div.popup.popup-bottom.popup-detail-item > div > div.popup-body.high > form > div.absolute-box.bottom > div > div.col.text-right > div > ul > li.qty-min > i'
    element :btn_footerdetail_plusQty, '#app > div.bg-overlay > div.popup.popup-bottom.popup-detail-item > div > div.popup-body.high > form > div.absolute-box.bottom > div > div.col.text-right > div > ul > li.qty-plus > i'
    
    element :radioBtn_detail_Variant1, '#variant-list > div.selection-group.variants.variant-1 > div:nth-child(2) > div > div.col.i-flex-right > input[type=radio]'
    element :radioBtn_detail_disabledVariant2, '#variant-list > div.selection-group.variants.variant-2 > div:nth-child(2) > div > div.col.i-flex-right > input[type=radio]'
    element :radioBtn_detail_disabledVariant3, '#variant-list > div.selection-group.variants.variant-3 > div:nth-child(2) > div > div.col.i-flex-right > input[type=radio]'
    
    element :txt_detail_namaOpsiTambahan, '#modifier-list > div > div:nth-child(2) > div > div.col.text-left > p'
    element :txt_detail_hargaOpsiTambahan, '#modifier-list > div > div:nth-child(2) > div > div.col.text-left > span'
    element :btn_detail_minusOpsiTambahan, '#modifier-list > div > div:nth-child(2) > div > div.col.i-flex-right > div > ul > li.qty-min > i'
    element :btn_detail_plusOpsiTambahan, '#modifier-list > div > div:nth-child(2) > div > div.col.i-flex-right > div > ul > li.qty-plus > i'

end