Given(/^user berada di homepage #customammount$/) do
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true
end

And(/^user pilih produk normal #customammount$/) do
    @app.transaksi.text_produkN1.click
    begin
        if waitFor {@app.transaksi.has_btn_saya_mengerti_trx}
            @app.transaksi.btn_saya_mengerti_trx.click
        end
    rescue
        p 'element saya mengerti trx not found'
    end
    # p 'pass'
end

And(/^user input custom ammount dan catatan #customammount$/) do
    @app.customammount.btn_custom_amount.click
    sleep(2)
    @app.customammount.btn_ca1.click
    @app.customammount.btn_ca5.click
    @app.customammount.btn_ca0.click
    @app.customammount.btn_ca0.click
    @app.customammount.btn_ca0.click
    @app.customammount.btn_ca0.click
    @app.customammount.btn_caSimpan.click

    @app.customammount.btn_diskonOK.click

    @app.customammount.btn_ca_catatan.click
    @app.customammount.txtField_catatan.send_keys "Test Automation"
    @app.customammount.btn_simpan_catatan.click

    @app.transaksi.btn_simpanNew.click
    @app.transaksi.btn_transaksi_tersimpanNew1.click
    # @app.transaksi.btn_transaksi_tersimpan.click
    @app.transaksi.btn_lanjutkan_transaksi.click
end

When(/^user bayar dengan uang tunai pas #customammount$/) do
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

Then(/^user sukses bayar #customammount$/) do
    expect(@app.transaksi.text_produkN1.displayed?).to be true
    p 'Transaksi Berhasil'
end
