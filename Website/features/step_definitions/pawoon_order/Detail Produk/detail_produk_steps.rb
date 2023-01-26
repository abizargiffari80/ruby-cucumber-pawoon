Given(/^User berada di halaman Pawoon Order #detailproduk$/) do
    expect(@pusathalaman.pawoonorderpage.has_txt_produkZ?).to be true
end
    
When(/^User pilih produk #detailproduk$/) do 
    @pusathalaman.pawoonorderpage.txt_produkZ.click
end
    
Then(/^Element detail produk tampil #detailproduk$/) do
    # produk normal
    expect(@pusathalaman.pawoonorderpage.has_form_detail_produk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_detail_namaProduk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_btn_close_detail?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_detail_gambarProduk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txtField_detail_catatanProduk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_btn_tambahPesanan?).to be true
    expect(@pusathalaman.pawoonorderpage.has_footer_detailProduk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_footerdetail_hargaProduk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_btn_footerdetail_minusQty?).to be true
    expect(@pusathalaman.pawoonorderpage.has_btn_footerdetail_plusQty?).to be true
    @pusathalaman.pawoonorderpage.btn_close_detail.click
    sleep 1

    # variant
    @pusathalaman.pawoonorderpage.txt_produkV.click
    expect(@pusathalaman.pawoonorderpage.has_txt_detail_namaProduk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_form_detail_produk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_btn_close_detail?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_detail_gambarProduk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txtField_detail_catatanProduk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_btn_tambahPesanan?).to be true
    expect(@pusathalaman.pawoonorderpage.has_footer_detailProduk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_footerdetail_hargaProduk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_btn_footerdetail_minusQty?).to be true
    expect(@pusathalaman.pawoonorderpage.has_btn_footerdetail_plusQty?).to be true

    # deprecated
    # expect(@pusathalaman.pawoonorderpage.has_radioBtn_detail_Variant1?).to be true
    # expect(@pusathalaman.pawoonorderpage.has_radioBtn_detail_disabledVariant2?).to be true
    # expect(@pusathalaman.pawoonorderpage.has_radioBtn_detail_disabledVariant3?).to be true

    # new flow
    expect(@pusathalaman.pawoonorderpage.has_txt_produkV_Var1?).to be true
    @pusathalaman.pawoonorderpage.txt_produkV_Var1.click
    expect(@pusathalaman.pawoonorderpage.has_txt_produkV_Var2?).to be true
    @pusathalaman.pawoonorderpage.txt_produkV_Var2.click
    expect(@pusathalaman.pawoonorderpage.has_txt_produkV_Var3?).to be true
    @pusathalaman.pawoonorderpage.btn_close_detail.click
    sleep 1

    # opsi tambahan
    @pusathalaman.pawoonorderpage.txt_produkNO.click
    expect(@pusathalaman.pawoonorderpage.has_txt_detail_namaProduk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_form_detail_produk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_btn_close_detail?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_detail_gambarProduk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txtField_detail_catatanProduk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_btn_tambahPesanan?).to be true
    expect(@pusathalaman.pawoonorderpage.has_footer_detailProduk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_footerdetail_hargaProduk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_btn_footerdetail_minusQty?).to be true
    expect(@pusathalaman.pawoonorderpage.has_btn_footerdetail_plusQty?).to be true
    
    expect(@pusathalaman.pawoonorderpage.has_txt_detail_namaOpsiTambahan?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_detail_hargaOpsiTambahan?).to be true
    expect(@pusathalaman.pawoonorderpage.has_btn_detail_minusOpsiTambahan?).to be true
    expect(@pusathalaman.pawoonorderpage.has_btn_detail_plusOpsiTambahan?).to be true
    @pusathalaman.pawoonorderpage.btn_close_detail.click
    sleep 1

    p 'Scenario Berhasil'
    
end