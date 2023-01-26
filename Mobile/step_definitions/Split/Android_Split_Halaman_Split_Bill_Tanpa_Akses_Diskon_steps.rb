Given(/^user berada di homepage #halsplitbilloperatortanpaakses$/) do
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true
    @app.transaksi.btn_drawer.click
    @app.drawer.btn_operator.click
    @app.pelanggan.btn_operator_EkoGreen.click
    # Loop btn 1
    $i = 0
    $num = 4
    while $i < $num  do
      @app.afterloginpage.text_btn_1.click
        $i +=1
    end
    sleep(3)
    expect(@app.transaksi.text_produkN1.displayed?).to be true
end

And(/^user pilih produk #halsplitbilloperatortanpaakses$/) do
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

When(/^user pilih split bill #halsplitbilloperatortanpaakses$/) do 
    begin
        if waitFor {@app.pembayaran.btn_saya_mengerti_metod}
            @app.pembayaran.btn_saya_mengerti_metod.click
        end
    rescue
        p 'element saya mengerti metode pembayaran not found'
    end
    @app.pembayaran.btn_split.click    
    @app.split.btn_split_bill.click
    @app.split.btn_select_split.click
end

Then(/^system menampilkan halaman split bill dan terdapat icon diskon #halsplitbilloperatortanpaakses$/) do
    expect(@app.split.btn_plus_split_bill.displayed?).to be true
    expect(@app.split.btn_bayar_split_bill.displayed?).to be true
    #cek element is not present
    begin
        if @app.split.btn_diskon_split_bill.displayed?
            p 'Scenario Gagal'
        end
    rescue
        p 'Scenario Berhasil'

    end
    sleep(3)

    $driver.press_keycode 4
    sleep(1)
    $driver.press_keycode 4
    sleep(1)
    $driver.press_keycode 4

end