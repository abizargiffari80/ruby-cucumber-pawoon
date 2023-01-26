require 'date'

Given(/^user berada di homepage #produkpelanggan$/) do 
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true

end

And(/^user pilih pelanggan #produkpelanggan$/) do
    current_time = DateTime.now
    time = current_time.strftime "%d-%m-%Y %H:%M"
    num = rand.to_s[2..11]
    @app.pelanggan.btn_pelanggan.click
    @app.pelanggan.btn_tambahpelanggan.click
    @app.pelanggan.txtField_nama_pelanggan.click
    @app.pelanggan.txtField_nama_pelanggan.send_keys "Automation "+time
    @app.pelanggan.txtField_nohp_pelanggan.click
    @app.pelanggan.txtField_nohp_pelanggan.send_keys "08"+num
    @app.pelanggan.btn_simpan.click
    sleep(2)
    @app.pelanggan.btn_pilihpelanggan.click

end

And(/^user pilih produk normal #produkpelanggan$/) do
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
    @app.transaksi.btn_simpan.click
    @app.transaksi.btn_transaksi_tersimpanNew1.click
    @app.transaksi.btn_lanjutkan_transaksi.click
    @app.transaksi.btn_bayar.click

end

When(/^user bayar dengan uang tunai pas #produkpelanggan$/) do
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

Then(/^user sukses bayar #produkpelanggan$/) do
    expect(@app.transaksi.text_produkN1.displayed?).to be true
    p 'Transaksi Berhasil'

end
