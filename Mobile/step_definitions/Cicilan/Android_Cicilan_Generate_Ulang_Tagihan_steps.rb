Given(/^user berada di homepage #generateulang$/) do 
    expect(@app.transaksi.text_produkN1.displayed?).to be true
end

And(/^pilih produk #generateulang$/) do 
    @app.transaksi.text_produkN1.click
    begin
        if waitFor {@app.transaksi.has_btn_saya_mengerti_trx}
            @app.transaksi.btn_saya_mengerti_trx.click
        end
    rescue
        p 'element saya mengerti trx not found'
    end
end

And(/^user pilih pelanggan #generateulang$/) do 
    @app.pelanggan.btn_pelanggan.click
    @app.pelanggan.btn_pelangganAutomation.click
    @app.pelanggan.btn_pilihpelanggan.click
end


And(/^user bayar #generateulang$/) do 
    @app.transaksi.btn_bayar.click
end


And(/^user pilih cicilan #generateulang$/) do 
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

When(/^user input uang muka cicilan #generateulang$/) do 

    $txt_jumlah = @app.cicilan.txt_jumlah_cicilan1.text
    p $txt_jumlah
    sleep 1
    @app.cicilan.textfield_uangmuka_cicilan.send_keys "500"
    $txt_jumlah2 = @app.cicilan.txt_jumlah_cicilan1.text
    p $txt_jumlah2
    sleep 1
end


Then(/^system generate ulang tagihan #generateulang$/) do 
    if $txt_jumlah == $txt_jumlah2
        p 'Scenario Gagal'
        close_app
    else
        p 'Scenario Berhasil'
    end
    sleep 2
    $driver.press_keycode 4
    sleep(1)
    $driver.press_keycode 4
end