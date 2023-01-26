Given(/^user berada di homepage #validasipilihpelanggan$/) do
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true
end

And(/^user pilih produk #validasipilihpelanggan$/) do
    @app.transaksi.text_produkN1.click
    begin
        if waitFor {@app.transaksi.has_btn_saya_mengerti_trx}
            @app.transaksi.btn_saya_mengerti_trx.click
        end
    rescue
        p 'element saya mengerti trx not found'
    end
    @app.transaksi.text_produkZ.click
    @app.transaksi.btn_bayar.click
end

When(/^user pilih poin #validasipilihpelanggan$/) do
    begin
        if waitFor {@app.pembayaran.btn_saya_mengerti_metod}
            @app.pembayaran.btn_saya_mengerti_metod.click
        end
    rescue
        p 'element saya mengerti metode pembayaran not found'
    end
    @app.poin.btn_poin.click
end

Then(/^system menampilkan popup validasi pilih pelanggan dahulu #validasipilihpelanggan$/) do
    expect(@app.poin.btn_pilihPelanggan.displayed?).to be true
    p 'Scenario Berhasil'

    $driver.press_keycode 4
    sleep(1)
    $driver.press_keycode 4
end
