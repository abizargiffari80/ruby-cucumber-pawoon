Given(/^user berada di homepage #halamancicilan$/) do 
    expect(@app.transaksi.text_produkN1.displayed?).to be true
end

And(/^pilih produk #halamancicilan$/) do 
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

And(/^user pilih pelanggan #halamancicilan$/) do 
    @app.pelanggan.btn_pelanggan.click
    @app.pelanggan.btn_pelangganAutomation.click
    @app.pelanggan.btn_pilihpelanggan.click
end


And(/^user bayar #halamancicilan$/) do 
    @app.transaksi.btn_bayar.click
end


When(/^user pilih cicilan #halamancicilan$/) do 
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

Then(/^system menampilkan halaman cicilan #halamancicilan$/) do 
    expect(@app.cicilan.txt_nama_pelanggan.displayed?).to be true
    expect(@app.cicilan.txt_total_tagihan.displayed?).to be true
    expect(@app.cicilan.jumlah_cicilan.displayed?).to be true
    expect(@app.cicilan.periode_cicilan.displayed?).to be true
    expect(@app.cicilan.uang_muka.displayed?).to be true
    expect(@app.cicilan.txt_cicilanke1.displayed?).to be true
    expect(@app.cicilan.txt_tanggal_jatuhtempo.displayed?).to be true
    expect(@app.cicilan.txt_jumlah_harga_cicilan.displayed?).to be true
    expect(@app.cicilan.txt_jumlah_hargaTotal_cicilan.displayed?).to be true
    expect(@app.cicilan.btn_simpan.displayed?).to be true
    sleep 2
    $driver.press_keycode 4
    sleep(1)
    $driver.press_keycode 4
    p 'Scenario Berhasil'
end