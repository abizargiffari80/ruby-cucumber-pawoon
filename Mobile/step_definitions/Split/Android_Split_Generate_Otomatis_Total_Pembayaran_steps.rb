Given(/^user berada di homepage #generate$/) do
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true
end

And(/^user pilih produk #generate$/) do
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
    @app.transaksi.btn_bayar.click
end

And(/^user pilih split pembayaran #generate$/) do
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

And(/^user tambah metode pembayaran sampai 5 row #generate$/) do 
    @app.split.btn_tambah_mp.click
    swipeHome()
    @app.split.btn_tambah_mp.click
    swipeHome()
    @app.split.btn_tambah_mp.click
    swipeHome()

end

When(/^user hapus 1 angka di row pertama #generate$/) do
    @app.split.txtField_ammount1.click
    sleep(1)
    #press backspace   
    $driver.press_keycode 67
end

Then(/^system generate otomatis untuk total pembayarannya per metode pembayaran #generate$/) do
    el_amount1 = @app.split.txtField_ammount1.text
    el_amount2 = @app.split.txtField_ammount2.text
    el_amount3 = @app.split.txtField_ammount3.text
    el_amount4 = @app.split.txtField_ammount4.text
    el_amount5 = @app.split.txtField_ammount5.text
    p el_amount1
    p el_amount2
    p el_amount3
    p el_amount4
    p el_amount5
    p 'Scenario Berhasil'
    sleep(5)


    $driver.press_keycode 4
    sleep(1)
    $driver.press_keycode 4
    sleep(1)
    $driver.press_keycode 4
    sleep(1)
    $driver.press_keycode 4

end