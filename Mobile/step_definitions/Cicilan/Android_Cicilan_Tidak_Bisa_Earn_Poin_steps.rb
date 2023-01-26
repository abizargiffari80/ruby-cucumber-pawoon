Given(/^user berada di homepage #cicilanearnpoin$/) do 
    expect(@app.transaksi.text_produkN1.displayed?).to be true
end

And(/^pilih produk #cicilanearnpoin$/) do 
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

And(/^user pilih pelanggan #cicilanearnpoin$/) do 
    @app.pelanggan.btn_pelanggan.click
    @app.pelanggan.btn_pelangganAutomation.click
    $txt_total_poin_pel_cicilan = @app.cicilan.txt_total_poin_pel_cicilan.text
    p $txt_total_poin_pel_cicilan
    sleep 1
    @app.pelanggan.btn_pilihpelanggan.click
end


And(/^user bayar #cicilanearnpoin$/) do 
    @app.transaksi.btn_bayar.click
end

And(/^user earn poin #cicilanearnpoin$/) do 
    begin
        if waitFor {@app.pembayaran.btn_saya_mengerti_metod}
            @app.pembayaran.btn_saya_mengerti_metod.click
        end
    rescue
        p 'element saya mengerti metode pembayaran not found'
    end
    expect(@app.cicilan.txt_poin_transaksi.displayed?).to be true
    poin = @app.cicilan.txt_poin_transaksi.text
    p poin
end


When(/^user pilih cicilan #cicilanearnpoin$/) do 
    @app.pembayaran.btn_cicilan.click
    sleep 2
end

Then(/^system membatalkan earn poin pelanggan #cicilanearnpoin$/) do 
    @app.cicilan.btn_simpan_cicilan.click
    sleep 1

    @app.pembayaran.btn_tunai.click
    @app.pembayaran.btn_uangpas.click
    @app.pembayaran.btn_selesai.click
    sleep 1
    begin
        if waitFor {@app.pembayaran.btn_lihatnanti}
            @app.pembayaran.btn_lihatnanti.click
        end
    rescue
        p 'element lihat nanti laporan not found'
    end

    @app.transaksi.btn_drawer.click
    @app.drawer.btn_riwayattransaksi.click
    sleep(2)

    @app.cicilan.btn_detail_cicilan.click
    sleep(2)

    swipe()  
    @app.cicilan.checkbox_cicilan1.click
    @app.cicilan.btn_bayar_cicilan.click
    @app.pembayaran.btn_tunai.click
    @app.pembayaran.btn_uangpas.click
    @app.pembayaran.btn_selesai.click
    sleep(2)
    begin
        if waitFor {@app.pembayaran.btn_lihatnanti}
            @app.pembayaran.btn_lihatnanti.click
        end
    rescue
        p 'element lihat nanti laporan not found'
    end
    sleep(2)
    @app.transaksi.btn_drawer.click
    @app.transaksi.btn_updatedata.click
    sleep(15)
    @app.transaksi.text_produkN1.click

    @app.pelanggan.btn_pelanggan.click
    @app.pelanggan.btn_pelangganAutomation.click
    $txt_total_poin_pel_cicilan2 = @app.cicilan.txt_total_poin_pel_cicilan.text
    p $txt_total_poin_pel_cicilan2
    sleep 1


    begin
        if $txt_total_poin_pel_cicilan == $txt_total_poin_pel_cicilan2
            p 'Scenario Berhasil'
        end
    rescue
        p 'Scenario Gagal'
        close_app
    end
    
end