Given(/^user berada di homepage #halsplit$/) do
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true
end

And(/user pilih produk #halsplit$/) do
    @app.transaksi.text_produkN1.click
    begin
        if waitFor {@app.transaksi.has_btn_saya_mengerti_trx}
            @app.transaksi.btn_saya_mengerti_trx.click
        end
    rescue
        p 'element saya mengerti trx not found'
    end
    # @app.transaksi.btn_simpan.click
    # @app.transaksi.btn_transaksi_tersimpanNew1.click
    # @app.transaksi.btn_lanjutkan_transaksi.click
    @app.transaksi.text_produkZ.click
    @app.transaksi.btn_bayar.click
end

When(/^user pilih "(.*)" #halsplit$/) do | split |
    begin
        if waitFor {@app.pembayaran.btn_saya_mengerti_metod}
            @app.pembayaran.btn_saya_mengerti_metod.click
        end
    rescue
        p 'element saya mengerti metode pembayaran not found'
    end

    p split
    case split
    when 'metode'
        @app.pembayaran.btn_split.click
    when 'bill'
        @app.pembayaran.btn_split.click
        @app.split.btn_split_bill.click
        @app.split.btn_select_split.click
    when 'payment'
        @app.pembayaran.btn_split.click    
        @app.split.btn_split_payment.click
        @app.split.btn_select_split.click
    end

    
end

Then(/^system menampilkan halaman "(.*)" #halsplit$/) do | halsplit |

    p halsplit
    case halsplit
    when 'halmetode'
        expect(@app.split.btn_split_payment.displayed?).to be true
        expect(@app.split.btn_split_bill.displayed?).to be true
        sleep(2)
        p 'Scenario Berhasil'

        $driver.press_keycode 4
        sleep(1)
        $driver.press_keycode 4
    when 'halbill'
        expect(@app.split.btn_plus_split_bill.displayed?).to be true
        expect(@app.split.btn_bayar_split_bill.displayed?).to be true
        sleep(3)
        p 'Scenario Berhasil'

        $driver.press_keycode 4
        sleep(1)
        $driver.press_keycode 4
        sleep(1)
        $driver.press_keycode 4
    when 'halpayment'
        expect(@app.split.text_split_pembayaran.displayed?).to be true
        sleep(3)
        p 'Scenario Berhasil'

        $driver.press_keycode 4
        sleep(1)
        $driver.press_keycode 4
        sleep(1)
        $driver.press_keycode 4
    end

end