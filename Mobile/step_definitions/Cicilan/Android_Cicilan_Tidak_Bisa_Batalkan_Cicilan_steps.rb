Given(/^user berada di homepage dan memiliki transaksi cicilan #tidakbisabatalkancicilan$/) do 
    expect(@app.transaksi.text_produkN1.displayed?).to be true

    @app.transaksi.text_produkN1.click
    begin
        if waitFor {@app.transaksi.has_btn_saya_mengerti_trx}
            @app.transaksi.btn_saya_mengerti_trx.click
        end
    rescue
        p 'element saya mengerti trx not found'
    end

    @app.pelanggan.btn_pelanggan.click
    @app.pelanggan.btn_pelangganAutomation.click
    @app.pelanggan.btn_pilihpelanggan.click

    @app.transaksi.btn_bayar.click
    begin
        if waitFor {@app.pembayaran.btn_saya_mengerti_metod}
            @app.pembayaran.btn_saya_mengerti_metod.click
        end
    rescue
        p 'element saya mengerti metode pembayaran not found'
    end
    @app.pembayaran.btn_cicilan.click
    sleep 1
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
    sleep 1
end

When(/^user klik riwayat transaksi #tidakbisabatalkancicilan$/) do 
    @app.transaksi.btn_drawer.click
    @app.drawer.btn_riwayattransaksi.click
    sleep(2)
end


Then(/^button batalkan transaksi disabled #tidakbisabatalkancicilan$/) do 
    @app.drawer.btn_batalkan_trx.click
    begin
        if @app.drawer.btn_batalkan_trx_confirm == true
            p 'Scenario Gagal'
            close_app
        end
    rescue
        p 'Scenario Berhasil'
    end
    
end