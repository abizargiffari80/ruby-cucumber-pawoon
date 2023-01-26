Given(/^user berada di homepage #validasipilihpelanggancicilan$/) do 
    expect(@app.transaksi.text_produkN1.displayed?).to be true
end

And(/^user pilih produk #validasipilihpelanggancicilan$/) do 
    @app.transaksi.text_produkN1.click
    begin
        if waitFor {@app.transaksi.has_btn_saya_mengerti_trx}
            @app.transaksi.btn_saya_mengerti_trx.click
        end
    rescue
        p 'element saya mengerti trx not found'
    end
    @app.transaksi.text_produkZ.click
end


And(/^user bayar #validasipilihpelanggancicilan$/) do 
    @app.transaksi.btn_bayar.click
end


When(/^user pilih cicilan #validasipilihpelanggancicilan$/) do 
    begin
        if waitFor {@app.pembayaran.btn_saya_mengerti_metod}
            @app.pembayaran.btn_saya_mengerti_metod.click
        end
    rescue
        p 'element saya mengerti metode pembayaran not found'
    end
    @app.pembayaran.btn_cicilan.click
    sleep 2
end

Then(/^system menampilkan popup validasi pilih pelanggan #validasipilihpelanggancicilan$/) do 
    expect(@app.cicilan.btn_pilihPelanggan_cicilan.displayed?).to be true
    sleep 1
    $driver.press_keycode 4
    sleep(1)
    $driver.press_keycode 4
    p 'Scenario Berhasil'
end