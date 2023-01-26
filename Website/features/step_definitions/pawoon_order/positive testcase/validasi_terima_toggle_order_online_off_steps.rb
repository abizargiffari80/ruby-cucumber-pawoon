Given('User berada di halaman Pawoon Order #toggleoff') do
    visit '/greenlake-city'
    expect(@pusathalaman.pawoonorderpage.has_txt_produkZ?).to be true
    
end
    
When('User order produk dan toggle terima order online off #toggleoff') do
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
end
    
Then('Validasi toggle terima order online off muncul #toggleoff') do
    expect(@pusathalaman.pawoonorderpage.has_popUp_OutletSedangTidakAktif?).to be true
    p 'Scenario Berhasil'
    sleep 3
end