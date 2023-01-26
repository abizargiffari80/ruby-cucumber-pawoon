Given(/^User sudah menyelesaikan transaksi dan dapat receipt code #receiptcodebaru$/) do
    expect(@pusathalaman.pawoonorderpage.has_txt_produkZ?).to be true

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
    #--------------
    $receipt_code1 = @pusathalaman.pawoonorderpage.txt_kodeStruk.text
    p $receipt_code1
    @pusathalaman.pawoonorderpage.btn_buatPesanan_baru.click
    @pusathalaman.pawoonorderpage.btn_kembaliKeHalamanUtama.click

    expect(@pusathalaman.pawoonorderpage.has_txt_produkZ?).to be true
    
end
    
When(/^User buat transaksi baru #receiptcodebaru$/) do
    expect(@pusathalaman.pawoonorderpage.has_txt_produkZ?).to be true

    @pusathalaman.pawoonorderpage.txt_produkZ.click
    @pusathalaman.pawoonorderpage.btn_tambahPesanan.click
    sleep 1
    @pusathalaman.pawoonorderpage.btn_selanjutnya.click
    sleep 1
    @pusathalaman.pawoonorderpage.btn_PilihMetodePembayaran.click
    @pusathalaman.pawoonorderpage.radioBtn_bayarDiKasir.click
    @pusathalaman.pawoonorderpage.btn_bayarSekarang.click
    @pusathalaman.pawoonorderpage.btn_lakukanPembayaranDiKasir.click
    #--------------
    $receipt_code2 = @pusathalaman.pawoonorderpage.txt_kodeStruk.text
    p $receipt_code2
    p $receipt_code1
    sleep 1
    @pusathalaman.pawoonorderpage.btn_buatPesanan_baru.click
    @pusathalaman.pawoonorderpage.btn_kembaliKeHalamanUtama.click
end
    
Then(/^User mendapat receipt code baru #receiptcodebaru$/) do
    sleep 1
    if $receipt_code1 == $receipt_code2
        p 'Scenario Failed'
        $driver.quit
    else
        p 'Scenario Success'
        
    end
    sleep 1
end