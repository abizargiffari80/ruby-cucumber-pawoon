Given(/^user berada di homepage #cicilanredeempoin$/) do 
    expect(@app.transaksi.text_produkN1.displayed?).to be true
end

And(/^pilih produk #cicilanredeempoin$/) do 
    @app.transaksi.text_produkN1.click
    begin
        if waitFor {@app.transaksi.has_btn_saya_mengerti_trx}
            @app.transaksi.btn_saya_mengerti_trx.click
        end
    rescue
        p 'element saya mengerti trx not found'
    end
    @app.transaksi.text_produkZ.click
end

And(/^user pilih pelanggan #cicilanredeempoin$/) do 
    @app.pelanggan.btn_pelanggan.click
    @app.pelanggan.btn_pelangganAutomation.click
    @app.pelanggan.btn_pilihpelanggan.click
end


And(/^user bayar #cicilanredeempoin$/) do 
    @app.transaksi.btn_bayar.click
end

And(/^user redeem poin #cicilanredeempoin$/) do 
    begin
        if waitFor {@app.pembayaran.btn_saya_mengerti_metod}
            @app.pembayaran.btn_saya_mengerti_metod.click
        end
    rescue
        p 'element saya mengerti metode pembayaran not found'
    end
    @app.poinvoucherpromo.btn_poin.click
    @app.poinvoucherpromo.txtfield_reddempoin.send_keys "500"
    @app.poinvoucherpromo.btn_redeempoin.click
    sleep(3)

    $txt_total_pembayaran = @app.cicilan.txt_total_pembayaran.text
    p $txt_total_pembayaran
    sleep 1
end


When(/^user pilih cicilan #cicilanredeempoin$/) do 
    begin
        if waitFor {@app.pembayaran.btn_saya_mengerti_metod}
            @app.pembayaran.btn_saya_mengerti_metod.click
        end
    rescue
        p 'element saya mengerti metode pembayaran not found'
    end
    @app.pembayaran.btn_cicilan.click
    sleep 2
    $txt_total_pembayaran_cicilan = @app.cicilan.txt_total_pembayaran_cicilan.text
    p $txt_total_pembayaran_cicilan
    sleep 1
end

Then(/^system menampilkan total transaksi kembali ke jumlah awal #cicilanredeempoin$/) do 
    begin
        if $txt_total_pembayaran == $txt_total_pembayaran_cicilan
            p 'Scenario Gagal'
            close_app
        end
    rescue
        p 'Scenario Berhasil'
    end
    
end