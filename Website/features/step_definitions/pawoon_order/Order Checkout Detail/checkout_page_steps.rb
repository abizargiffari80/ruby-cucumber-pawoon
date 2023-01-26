Given(/^User berada di halaman Pawoon Order #checkoutpage$/) do
    expect(@pusathalaman.pawoonorderpage.has_txt_produkZ?).to be true
end

And(/^User pilih produk #checkoutpage$/) do
    @pusathalaman.pawoonorderpage.txt_produkZ.click
    @pusathalaman.pawoonorderpage.btn_tambahPesanan.click
    sleep 1
    # Produk Normal Opsi
    @pusathalaman.pawoonorderpage.txt_produkNO.click
    sleep 3
    @pusathalaman.pawoonorderpage.txt_produkNO_Opsi1.click
    @pusathalaman.pawoonorderpage.btn_tambahPesanan.click
end
    
When(/^User klik selanjutnya #checkoutpage$/) do 
    @pusathalaman.pawoonorderpage.btn_selanjutnya.click
    sleep 1
end
    
Then(/^Element detail produk tampil #checkoutpage$/) do
    # header footer
    expect(@pusathalaman.pawoonorderpage.has_checkout_Header?).to be true
    expect(@pusathalaman.pawoonorderpage.has_checkout_Footer?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_checkoutNamaOutlet?).to be true

    # detail produk
    expect(@pusathalaman.pawoonorderpage.has_txt_namaProduk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_hargaProduk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_btn_ubahPesanan?).to be true
    expect(@pusathalaman.pawoonorderpage.has_btn_tambahQtyPesanan?).to be true
    expect(@pusathalaman.pawoonorderpage.has_btn_kurangiQtyPesanan?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_qtyPesanan?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_opsiTambahanDanQty?).to be true
    expect(@pusathalaman.pawoonorderpage.has_btn_tambahPesananLain?).to be true

    # data diri
    expect(@pusathalaman.pawoonorderpage.has_txtField_Nama?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txtField_noTlp?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txtField_Meja?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txtArea_catatanProduk?).to be true

    # detail footer
    expect(@pusathalaman.pawoonorderpage.has_txt_detailTrx_jumlahTotal?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_detailTrx_Total?).to be true
    expect(@pusathalaman.pawoonorderpage.has_btn_PilihMetodePembayaran?).to be true

    p 'Scenario Berhasil'
    sleep 1
end