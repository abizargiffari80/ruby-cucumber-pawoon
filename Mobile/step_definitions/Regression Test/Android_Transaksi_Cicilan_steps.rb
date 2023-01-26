require 'appium_lib'
require 'touch_action'

Given(/^user berada di homepage #cicilan$/) do
    expect(@app.transaksi.text_produkN1.displayed?).to be true

end

And(/^user pilih pelanggan #cicilan$/) do
    @app.pelanggan.btn_pelanggan.click
    @app.pelanggan.btn_pelangganAutomation.click
    @app.pelanggan.btn_pilihpelanggan.click

end

And(/^user pilih produk normal #cicilan$/) do
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

And(/^user pilih cicilan #cicilan$/) do
    begin
        if waitFor {@app.pembayaran.btn_saya_mengerti_metod}
            @app.pembayaran.btn_saya_mengerti_metod.click
        end
    rescue
        p 'element saya mengerti metode pembayaran not found'
    end
    @app.pembayaran.btn_cicilan.click
    @app.cicilan.btn_simpan_cicilan.click
    
end

When(/^user bayar transaksi #cicilan$/) do 
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
    sleep(2)
    @app.transaksi.btn_drawer.click
    @app.transaksi.btn_updatedata.click
    sleep(15)

end

Then(/^user sukses bayar #cicilan$/) do 
    expect(@app.transaksi.text_produkN1.displayed?).to be true
    p 'Transaksi Berhasil'

end

