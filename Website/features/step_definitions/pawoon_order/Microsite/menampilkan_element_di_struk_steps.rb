Given(/^User berada di halaman Pawoon Order #elementstruk$/) do
    expect(@pusathalaman.pawoonorderpage.has_txt_produkZ?).to be true
end
    
And(/^User pilih produk  #elementstruk$/) do 
    # Produk Normal
    @pusathalaman.pawoonorderpage.txt_produkZ.click
    @pusathalaman.pawoonorderpage.btn_tambahPesanan.click
    sleep 1
    # Produk Normal Opsi
    @pusathalaman.pawoonorderpage.txt_produkNO.click
    sleep 3
    @pusathalaman.pawoonorderpage.txt_produkNO_Opsi1.click
    @pusathalaman.pawoonorderpage.btn_tambahPesanan.click
    sleep 1
    
end

When(/^User bayar #elementstruk$/) do
    @pusathalaman.pawoonorderpage.btn_selanjutnya.click
    sleep 1
    @pusathalaman.pawoonorderpage.txtField_Nama.send_keys 'Aldo'
    @pusathalaman.pawoonorderpage.txtField_noTlp.send_keys '081211336018'
    @pusathalaman.pawoonorderpage.txtField_Meja.send_keys '1'
    @pusathalaman.pawoonorderpage.txtArea_catatanProduk.send_keys 'Note Automation'
    sleep 1
    @pusathalaman.pawoonorderpage.btn_PilihMetodePembayaran.click
    @pusathalaman.pawoonorderpage.radioBtn_bayarDiKasir.click
    @pusathalaman.pawoonorderpage.btn_bayarSekarang.click
    @pusathalaman.pawoonorderpage.btn_lakukanPembayaranDiKasir.click
end
    
Then(/^Menampilkan struk yang berisi semua elementnya  #elementstruk$/) do
    sleep 2
    expect(@pusathalaman.pawoonorderpage.has_receipt?).to be true
    expect(@pusathalaman.pawoonorderpage.has_logoStruk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_outletNameStruk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_phoneNumberStruk?).to be true

    expect(@pusathalaman.pawoonorderpage.has_txt_kodeStruk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_tanggalStruk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_namaPelangganStruk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_nomorMejaStruk?).to be true

    expect(@pusathalaman.pawoonorderpage.has_txt_nameProdukStruk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_opsiTambahanStruk?).to be true

    expect(@pusathalaman.pawoonorderpage.has_txt_subtotalProdukStruk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_serviceStruk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_pajakStruk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_catatanStruk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_totalProdukStruk?).to be true

    expect(@pusathalaman.pawoonorderpage.has_txt_qtyProdukZStruk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_qtyProdukNOStruk?).to be true

    expect(@pusathalaman.pawoonorderpage.has_txt_hargaProdukZStruk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_hargaProdukNOStruk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_jumlahSubtotalStruk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_jumlahServiceStruk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_jumlahPajakStruk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_isiCatatanStruk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_jumlahTotalStruk?).to be true

    expect(@pusathalaman.pawoonorderpage.has_btn_buatPesanan_baru?).to be true
    @pusathalaman.pawoonorderpage.btn_buatPesanan_baru.click
    @pusathalaman.pawoonorderpage.btn_kembaliKeHalamanUtama.click

    expect(@pusathalaman.pawoonorderpage.has_txt_produkZ?).to be true
    p 'Scenario Berhasil'
    sleep 1
end