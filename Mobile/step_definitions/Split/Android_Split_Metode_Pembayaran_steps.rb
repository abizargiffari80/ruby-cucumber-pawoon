Given(/^user berada di homepage #metodepembayaran$/) do
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true
end

And(/^user pilih produk #metodepembayaran$/) do
    @app.transaksi.text_produkN1.click
    begin
        if waitFor {@app.transaksi.has_btn_saya_mengerti_trx}
            @app.transaksi.btn_saya_mengerti_trx.click
        end
        @app.transaksi.text_produkZ.click
    rescue
        p 'element saya mengerti trx not found'
    end
    @app.transaksi.btn_bayar.click
end

And(/^user pilih split pembayaran #metodepembayaran$/) do
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

When(/^user pilih opsi metode pembayaran #metodepembayaran$/) do 
    @app.split.btn_pm1.click

end

Then(/^system menampilkan semua custom payment termasuk tunai dan kartu #metodepembayaran$/) do
    expect(@app.split.btn_mpTunai.displayed?).to be true
    expect(@app.split.btn_mpKartu.displayed?).to be true
    expect(@app.split.btn_mpDebit.displayed?).to be true
    expect(@app.split.btn_mpCredit.displayed?).to be true
    sleep(2)
    p 'Scenario Berhasil'

    $driver.press_keycode 4
    sleep(1)
    $driver.press_keycode 4
    sleep(1)
    $driver.press_keycode 4
    sleep(1)
    $driver.press_keycode 4

end