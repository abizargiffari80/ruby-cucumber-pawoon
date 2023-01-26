Given(/^user berada di homepage #mejapelangganpoin$/) do 
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true

end

And(/^user pilih pelanggan #mejapelangganpoin$/) do
    @app.pelanggan.btn_pelanggan.click
    @app.pelanggan.btn_pelangganAutomation.click
    @app.pelanggan.btn_pilihpelanggan.click

end

And(/^user pilih meja #mejapelangganpoin$/) do
    @app.transaksi.btn_meja.click
    @app.meja.btn_meja1class.click
    @app.meja.btn_pilihmeja.click

end

And(/^user pilih produk normal #mejapelangganpoin$/) do
    @app.transaksi.text_produkN1.click
    begin
        if waitFor {@app.transaksi.has_btn_saya_mengerti_trx}
            @app.transaksi.btn_saya_mengerti_trx.click
        end
    rescue
        p 'element saya mengerti trx not found'
    end
    @app.transaksi.text_produkZ.click
    @app.transaksi.btn_simpan.click
    @app.transaksi.btn_transaksi_tersimpanNew1.click
    @app.transaksi.btn_lanjutkan_transaksi.click
    @app.transaksi.btn_bayar.click

end

And(/^user pilih poin #mejapelangganpoin$/) do
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

end


When(/^user bayar dengan uang tunai pas #mejapelangganpoin$/) do
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

Then(/^user sukses bayar #mejapelangganpoin$/) do
    expect(@app.transaksi.text_produkN1.displayed?).to be true
    p 'Transaksi Berhasil'

end
