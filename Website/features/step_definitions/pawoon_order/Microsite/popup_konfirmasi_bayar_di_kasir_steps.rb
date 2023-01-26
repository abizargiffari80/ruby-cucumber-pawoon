Given(/^User berada di halaman Pawoon Order #popupkasir$/) do
    expect(@pusathalaman.pawoonorderpage.has_txt_produkZ?).to be true
end
    
And(/^User pilih produk  #popupkasir$/) do 
    @pusathalaman.pawoonorderpage.txt_produkZ.click
    @pusathalaman.pawoonorderpage.btn_tambahPesanan.click
    sleep 1
end

When(/^User bayar di kasir  #popupkasir$/) do
    @pusathalaman.pawoonorderpage.btn_selanjutnya.click
    sleep 1
    @pusathalaman.pawoonorderpage.txtField_Nama.send_keys 'Aldo'
    @pusathalaman.pawoonorderpage.txtField_noTlp.send_keys '081211336018'
    @pusathalaman.pawoonorderpage.txtField_Meja.send_keys '1'
    sleep 1
    @pusathalaman.pawoonorderpage.btn_PilihMetodePembayaran.click
    @pusathalaman.pawoonorderpage.radioBtn_bayarDiKasir.click
    @pusathalaman.pawoonorderpage.btn_bayarSekarang.click
end
    
Then(/^Poup up konfirmasi ke kasir muncul  #popupkasir$/) do
    expect(@pusathalaman.pawoonorderpage.has_btn_lakukanPembayaranDiKasir?).to be true
    p 'Scenario Berhasil'
    sleep 1
end