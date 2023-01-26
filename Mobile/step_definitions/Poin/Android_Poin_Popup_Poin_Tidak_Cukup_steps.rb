require 'date'

Given(/^user berada di homepage #popuppoin$/) do
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true
end

And(/^user pilih produk #popuppoin$/) do
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

And(/^user pilih pelanggan baru #popuppoin$/) do
    @app.pelanggan.btn_pelanggan.click
    @app.pelanggan.btn_tambahpelanggan.click
    current_time = DateTime.now
    time = current_time.strftime "%d-%m-%Y %H:%M"
    num = rand.to_s[2..11]
    @app.pelanggan.txtField_nama_pelanggan.click
    @app.pelanggan.txtField_nama_pelanggan.send_keys "Automation "+time
    @app.pelanggan.txtField_nohp_pelanggan.click
    @app.pelanggan.txtField_nohp_pelanggan.send_keys "08"+num
    @app.pelanggan.btn_simpan.click
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

When(/^user pilih poin #popuppoin$/) do
    @app.poin.btn_poin.click
end

Then(/^system menampilkan popup poin tidak cukup #popuppoin$/) do
    expect(@app.poin.txt_PoinTIdakCukup.displayed?).to be true
    p 'Scenario Berhasil'

    sleep(2)
    $driver.press_keycode 4
    sleep(1)
    $driver.press_keycode 4
end
