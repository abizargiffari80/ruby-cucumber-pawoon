Given(/^user berada di homepage #5row$/) do
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true
end

And(/^user pilih produk #5row$/) do
    @app.transaksi.text_produkN1.click
    begin
        if waitFor {@app.transaksi.has_btn_saya_mengerti_trx}
            @app.transaksi.btn_saya_mengerti_trx.click
        end
        @app.transaksi.text_produkZ.click
    rescue
        p 'element saya mengerti trx not found'
    end
    # @app.transaksi.btn_simpan.click
    # @app.transaksi.btn_transaksi_tersimpanNew1.click
    # @app.transaksi.btn_lanjutkan_transaksi.click
    @app.transaksi.btn_bayar.click
end

And(/^user pilih split pembayaran #5row$/) do
    begin
        if waitFor {@app.pembayaran.btn_saya_mengerti_metod}
            @app.pembayaran.btn_saya_mengerti_metod.click
        end
    rescue
        p 'element saya mengerti metode pembayaran not found'
    end
    @app.pembayaran.btn_split.click
    @app.split.btn_split_payment.click
    @app.split.btn_select_split.click
end

When(/^user tambah metode pembayaran #5row$/) do 
    @app.split.btn_tambah_mp.click
    swipeHome()
    @app.split.btn_tambah_mp.click
    swipeHome()
    @app.split.btn_tambah_mp.click
    swipeHome()

end

Then(/^system menampilkan maksimal metode pembayaran 5 row #5row$/) do
    sleep(3)
    #cek element is not present
    begin
        if @app.split.btn_tambah_mp.displayed?
            p 'Scenario Gagal'
        end
    rescue
        p 'Scenario Berhasil'

    end

    $driver.press_keycode 4
    sleep(1)
    $driver.press_keycode 4
    sleep(1)
    $driver.press_keycode 4

end