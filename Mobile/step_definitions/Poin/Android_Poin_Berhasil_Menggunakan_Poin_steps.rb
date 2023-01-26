Given(/^user berada di homepage #berhasilgunakanpoin$/) do
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true
end

And(/^user pilih produk #berhasilgunakanpoin$/) do
    @app.transaksi.text_produkN1.click
    begin
        if waitFor {@app.transaksi.has_btn_saya_mengerti_trx}
            @app.transaksi.btn_saya_mengerti_trx.click
        end
        @app.transaksi.text_produkZ.click
    rescue
        p 'element saya mengerti trx not found'
    end
    # p 'pass'
    
end

And(/^user pilih pelanggan #berhasilgunakanpoin$/) do
    @app.pelanggan.btn_pelanggan.click
    @app.pelanggan.btn_pelangganAutomation.click
    @app.pelanggan.btn_pilihpelanggan.click

    @app.transaksi.btn_simpan.click
    @app.transaksi.btn_transaksi_tersimpanNew1.click
    @app.transaksi.btn_lanjutkan_transaksi.click
    @app.transaksi.btn_bayar.click

    begin
        if waitFor {@app.pembayaran.btn_saya_mengerti_metod}
            @app.pembayaran.btn_saya_mengerti_metod.click
        end
    rescue
        p 'element saya mengerti metode pembayaran not found'
    end
    
end

And(/^user pilih poin #berhasilgunakanpoin$/) do
    @app.poin.btn_poin.click
end

When(/^user input poin #berhasilgunakanpoin$/) do
    @app.poin.txtfield_reddempoin.send_keys '500'
    @app.poin.btn_redeempoin.click
end

Then(/^user berhasil menggunakan poin #berhasilgunakanpoin$/) do
    expect(@app.pembayaran.btn_uangpas.displayed?).to be true
    p 'Scenario Berhasil'

    sleep(2)

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
end
