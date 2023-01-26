Given('User berada di halaman Pawoon Order #bayardikasir') do
    expect(@pusathalaman.pawoonorderpage.has_txt_produkZ?).to be true
end
    
When('User order produk dan bayar di kasir #bayardikasir') do
    $driver.execute_script("window.scrollBy(0,250)", "")

    @pusathalaman.pawoonorderpage.txt_produkZ.click
    @pusathalaman.pawoonorderpage.btn_tambahPesanan.click
    sleep 1
    @pusathalaman.pawoonorderpage.btn_selanjutnya.click
    sleep 1
    @pusathalaman.pawoonorderpage.txtField_Nama.send_keys 'Aldo'
    @pusathalaman.pawoonorderpage.txtField_noTlp.send_keys '081211336018'
    @pusathalaman.pawoonorderpage.txtField_Meja.send_keys '1'
    @pusathalaman.pawoonorderpage.btn_PilihMetodePembayaran.click
    @pusathalaman.pawoonorderpage.radioBtn_bayarDiKasir.click
    @pusathalaman.pawoonorderpage.btn_bayarSekarang.click
    @pusathalaman.pawoonorderpage.btn_lakukanPembayaranDiKasir.click
end
    
Then('Berhasil Bayar Di Kasir #bayardikasir') do
    @pusathalaman.pawoonorderpage.btn_buatPesanan_baru.click
    @pusathalaman.pawoonorderpage.btn_kembaliKeHalamanUtama.click

    expect(@pusathalaman.pawoonorderpage.has_txt_produkZ?).to be true
    p 'Order Berhasil'
    sleep 1
end