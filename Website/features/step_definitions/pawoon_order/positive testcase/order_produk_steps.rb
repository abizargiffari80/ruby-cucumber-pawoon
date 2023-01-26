Given(/^User berada di halaman Pawoon Order$/) do
    expect(@pusathalaman.pawoonorderpage.has_txt_produkZ?).to be true
end
    
When(/^User order "(.*)"$/) do | productname |
    $driver.execute_script("window.scrollBy(0,250)", "")

    p productname
    case productname
    when 'produk normal'
        @pusathalaman.pawoonorderpage.txt_produkZ.click
    when 'produk normal opsi'
        @pusathalaman.pawoonorderpage.txt_produkNO.click
        sleep 4
        @pusathalaman.pawoonorderpage.txt_produkNO_Opsi1.click
    when 'produk variant'
        @pusathalaman.pawoonorderpage.txt_produkV.click
        sleep 5
        @pusathalaman.pawoonorderpage.txt_produkV_Var1.click
        sleep 1
        @pusathalaman.pawoonorderpage.txt_produkV_Var2.click
        sleep 1
        @pusathalaman.pawoonorderpage.txt_produkV_Var3.click
    when 'produk variant opsi'
        @pusathalaman.pawoonorderpage.txt_produkVO.click
        sleep 5
        @pusathalaman.pawoonorderpage.txt_produkVO_Var1.click
        sleep 1
        @pusathalaman.pawoonorderpage.txt_produkVO_Var2.click
        sleep 1
        @pusathalaman.pawoonorderpage.txt_produkVO_Var3.click
        @pusathalaman.pawoonorderpage.txt_produkVO_Opsi1.click
    when 'produk kombinasi'
        # Produk Normal
        @pusathalaman.pawoonorderpage.txt_produkZ.click
        @pusathalaman.pawoonorderpage.btn_tambahPesanan.click
        sleep 1
        # Produk Normal Opsi
        @pusathalaman.pawoonorderpage.txt_produkNO.click
        sleep 4
        @pusathalaman.pawoonorderpage.txt_produkNO_Opsi1.click
        @pusathalaman.pawoonorderpage.btn_tambahPesanan.click
        sleep 1
        # Produk Variant
        $driver.execute_script("window.scrollBy(0,900)", "")
        sleep 1
        @pusathalaman.pawoonorderpage.txt_produkV.click
        sleep 5
        @pusathalaman.pawoonorderpage.txt_produkV_Var1.click
        sleep 1
        @pusathalaman.pawoonorderpage.txt_produkV_Var2.click
        sleep 1
        @pusathalaman.pawoonorderpage.txt_produkV_Var3.click
        @pusathalaman.pawoonorderpage.btn_tambahPesanan.click
        sleep 1
        # Produk Variant Opsi
        $driver.execute_script("window.scrollBy(0,900)", "")
        sleep 1
        @pusathalaman.pawoonorderpage.txt_produkVO.click
        sleep 5
        @pusathalaman.pawoonorderpage.txt_produkVO_Var1.click
        sleep 1
        @pusathalaman.pawoonorderpage.txt_produkVO_Var2.click
        sleep 1
        @pusathalaman.pawoonorderpage.txt_produkVO_Var3.click
        @pusathalaman.pawoonorderpage.txt_produkVO_Opsi1.click
    end

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
    
Then(/^Order berhasil dibuat dan dibayar$/) do
    sleep 1
    @pusathalaman.pawoonorderpage.btn_buatPesanan_baru.click
    @pusathalaman.pawoonorderpage.btn_kembaliKeHalamanUtama.click

    expect(@pusathalaman.pawoonorderpage.has_txt_produkZ?).to be true
    p 'Order Berhasil'
    sleep 1
end