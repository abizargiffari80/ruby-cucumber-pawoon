Given(/^user berada di homepage #berhasilbuatcicilan$/) do 
    expect(@app.transaksi.text_produkN1.displayed?).to be true
end

And(/^pilih produk #berhasilbuatcicilan$/) do 
    @app.transaksi.text_produkN1.click
    begin
        if waitFor {@app.transaksi.has_btn_saya_mengerti_trx}
            @app.transaksi.btn_saya_mengerti_trx.click
        end
    rescue
        p 'element saya mengerti trx not found'
    end
end

And(/^user pilih pelanggan #berhasilbuatcicilan$/) do 
    @app.pelanggan.btn_pelanggan.click
    @app.pelanggan.btn_pelangganAutomation.click
    @app.pelanggan.btn_pilihpelanggan.click
end


And(/^user bayar #berhasilbuatcicilan$/) do 
    @app.transaksi.btn_bayar.click
end


And(/^user pilih cicilan #berhasilbuatcicilan$/) do 
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

When(/^user simpan #berhasilbuatcicilan$/) do 
    @app.cicilan.btn_simpan_cicilan.click
    sleep 1
end


Then(/^berhasil buat cicilan #berhasilbuatcicilan$/) do 
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

    @app.transaksi.btn_drawer.click
    @app.drawer.btn_riwayattransaksi.click
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

    expect(@app.transaksi.text_produkN1.displayed?).to be true
    p 'Scenario Berhasil'
end