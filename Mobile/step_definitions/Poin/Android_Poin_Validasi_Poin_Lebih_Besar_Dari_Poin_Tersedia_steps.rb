Given(/^user berada di homepage #validasipoinlebihbesar$/) do
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true
end

And(/^user pilih produk #validasipoinlebihbesar$/) do
    @app.transaksi.text_produkN1.click
    begin
        if waitFor {@app.transaksi.has_btn_saya_mengerti_trx}
            @app.transaksi.btn_saya_mengerti_trx.click
        end
        
    rescue
        p 'element saya mengerti trx not found'
    end
    # p 'pass'
    
end

And(/^user pilih pelanggan #validasipoinlebihbesar$/) do
    @app.pelanggan.btn_pelanggan.click
    @app.pelanggan.btn_pelangganAutomation.click
    @app.pelanggan.btn_pilihpelanggan.click

    @app.transaksi.btn_bayar.click

    begin
        if waitFor {@app.pembayaran.btn_saya_mengerti_metod}
            @app.pembayaran.btn_saya_mengerti_metod.click
        end
    rescue
        p 'element saya mengerti metode pembayaran not found'
    end
    
end

And(/^user pilih poin #validasipoinlebihbesar$/) do
    @app.poin.btn_poin.click
end

When(/^user input poin lebih dari jumlah poin maksimal #validasipoinlebihbesar$/) do
    @app.poin.txtfield_reddempoin.send_keys '2000'
    @app.poin.btn_redeempoin.click
end

Then(/^system menampilkan validasi jumlah poin yang ditikar lebih besar #validasipoinlebihbesar$/) do
    expect(@app.poin.txt_validasiPoinMelebihiMaksPoin.displayed?).to be true
    p 'Scenario Berhasil'

    sleep(5)

    $driver.press_keycode 4
    sleep(1)
    $driver.press_keycode 4
    sleep(1)
    $driver.press_keycode 4
end
