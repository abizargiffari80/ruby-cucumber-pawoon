Given(/^user berada di homepage #jumlahpoinpel$/) do
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true
end

And(/^user pilih produk #jumlahpoinpel$/) do
    @app.transaksi.text_produkN1.click
    begin
        if waitFor {@app.transaksi.has_btn_saya_mengerti_trx}
            @app.transaksi.btn_saya_mengerti_trx.click
        end
        @app.transaksi.text_produkZ.click
    rescue
        p 'element saya mengerti trx not found'
    end
    # p 'pass'
    
end

And(/^user pilih pelanggan #jumlahpoinpel$/) do
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

When(/^user pilih poin #jumlahpoinpel$/) do
    @app.poin.btn_poin.click
end

Then(/^system menampilkan popup jumlah poin pelanggan #jumlahpoinpel$/) do
    expect(@app.poin.txt_JumlahPoinPelanggan.displayed?).to be true
    p 'Scenario Berhasil'

    $driver.press_keycode 4
    sleep(1)
    $driver.press_keycode 4
end
