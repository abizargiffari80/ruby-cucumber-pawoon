Given(/^user berada di homepage #produkopsivar$/) do
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true

end

And(/^user pilih produk #produkopsivar$/) do
    @app.transaksi.text_produkN1.click
    begin
        if waitFor {@app.transaksi.has_btn_saya_mengerti_trx}
            @app.transaksi.btn_saya_mengerti_trx.click
        end
    rescue
        p 'element saya mengerti trx not found'
    end
    @app.transaksi.text_produkNO.click
    @app.transaksi.text_produkNOplus.click
    @app.transaksi.text_produkNOsave.click
    @app.transaksi.text_produkV1.click
    @app.transaksi.text_produkV1variant1.click
    sleep(1)
    @app.transaksi.text_produkV1variant1.click
    sleep(1)
    @app.transaksi.text_produkV1variant1.click
    sleep(1)
    @app.transaksi.text_produkV1variant1save.click
    @app.transaksi.text_produkVO.click
    @app.transaksi.text_produkV1variant1.click
    sleep(1)
    @app.transaksi.text_produkV1variant1.click
    sleep(1)
    @app.transaksi.text_produkV1variant1.click
    sleep(1)
    @app.transaksi.text_produkV1variant1save.click
    @app.transaksi.text_produkNOplus.click
    @app.transaksi.text_produkNOsave.click

    @app.transaksi.btn_simpan.click
    @app.transaksi.btn_transaksi_tersimpanNew1.click
    # @app.transaksi.btn_transaksi_tersimpan.click
    @app.transaksi.btn_lanjutkan_transaksi.click
    
end

When(/^user bayar dengan tunai #produkopsivar$/) do
    @app.transaksi.btn_bayar.click
    begin
        if waitFor {@app.pembayaran.btn_saya_mengerti_metod}
            @app.pembayaran.btn_saya_mengerti_metod.click
        end
    rescue
        p 'element saya mengerti metode pembayaran not found'
    end
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

end

Then(/^user sukses bayar #produkopsivar$/) do
    expect(@app.transaksi.text_produkN1.displayed?).to be true
    p 'Transaksi Berhasil'

end