Given(/^user berada di homepage #periodecicilan$/) do 
    expect(@app.transaksi.text_produkN1.displayed?).to be true
end

And(/^pilih produk #periodecicilan$/) do 
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

And(/^user pilih pelanggan #periodecicilan$/) do 
    @app.pelanggan.btn_pelanggan.click
    @app.pelanggan.btn_pelangganAutomation.click
    @app.pelanggan.btn_pilihpelanggan.click
end


And(/^user bayar #periodecicilan$/) do 
    @app.transaksi.btn_bayar.click
end


And(/^user pilih cicilan #periodecicilan$/) do 
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

When(/^user klik periode cicilan #periodecicilan$/) do 
    @app.cicilan.txt_periode_cicilan.click
    sleep 1
end

Then(/^system menampilkan periode cicilan mingguan bulanan custom #periodecicilan$/) do 
    expect(@app.cicilan.txt_periode_mingguan.displayed?).to be true
    expect(@app.cicilan.txt_periode_bulanan.displayed?).to be true
    expect(@app.cicilan.txt_periode_custom.displayed?).to be true
    sleep 2
    $driver.press_keycode 4
    sleep(1)
    $driver.press_keycode 4
    p 'Scenario Berhasil'
end