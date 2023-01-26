Given(/^User berada di halaman validasi data diri$/) do
    expect(@pusathalaman.pawoonorderpage.has_txt_produkZ?).to be true
    @pusathalaman.pawoonorderpage.txt_produkZ.click
    @pusathalaman.pawoonorderpage.btn_tambahPesanan.click
    sleep 1
    @pusathalaman.pawoonorderpage.btn_selanjutnya.click
    sleep 1
    
end
    
When(/^User order produk tanpa "(.*)"$/) do | datadiri |
    p datadiri
    case datadiri
    when 'isi nama pelanggan'
        @pusathalaman.pawoonorderpage.txtField_noTlp.send_keys '081211336018'
        @pusathalaman.pawoonorderpage.txtField_Meja.send_keys '1'
        sleep 1
        @pusathalaman.pawoonorderpage.btn_PilihMetodePembayaran.click
    when 'isi nomor telepon'
        @pusathalaman.pawoonorderpage.txtField_Nama.send_keys 'Aldo'
        @pusathalaman.pawoonorderpage.txtField_Meja.send_keys '1'
        sleep 1
        @pusathalaman.pawoonorderpage.btn_PilihMetodePembayaran.click
    when 'isi meja'
        @pusathalaman.pawoonorderpage.txtField_Nama.send_keys 'Aldo'
        @pusathalaman.pawoonorderpage.txtField_noTlp.send_keys '081211336018'
        sleep 1
        @pusathalaman.pawoonorderpage.btn_PilihMetodePembayaran.click
    end

end
    
Then(/^Validasi muncul "(.*)"$/) do | mydata |
    sleep 1

    p mydata
    case mydata
    when 'namapel'
        expect(@pusathalaman.pawoonorderpage.has_errorMessage_nama?).to be true
        sleep 1
    when 'notlp'
        expect(@pusathalaman.pawoonorderpage.has_errorMessage_noTlp?).to be true
        sleep 1
    when 'nomeja'
        expect(@pusathalaman.pawoonorderpage.has_errorMessage_noMeja?).to be true
        sleep 1
    end
    p 'Scenario Berhasil'
    expect(@pusathalaman.pawoonorderpage.has_btn_PilihMetodePembayaran?).to be true
    sleep 1
end