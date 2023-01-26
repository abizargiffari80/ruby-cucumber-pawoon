Given(/^user berada di homepage #diskonmanualotomatis$/) do 
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true
end

And(/^user pilih pelanggan #diskonmanualotomatis$/) do 
    @app.pelanggan.btn_pelanggan.click
    @app.pelanggan.btn_pelangganAutomation.click
    @app.pelanggan.btn_pilihpelanggan.click
end

And(/^user pilih produk normal #diskonmanualotomatis$/) do 
    @app.transaksi.text_produkN1.click
    begin
        if waitFor {@app.transaksi.has_btn_saya_mengerti_trx}
            @app.transaksi.btn_saya_mengerti_trx.click
        end
    rescue
        p 'element saya mengerti trx not found'
    end
end

And(/^user tambah diskon "(.*)" #diskonmanualotomatis$/) do | tipe |
    p tipe
    case tipe
    when 'manual'
        @app.transaksi.btn_detail_Produk.click
        @app.transaksi.btn_tambahDiskonManual.click
        @app.transaksi.btn_tambahDiskonManualPersen.click
        @app.transaksi.txtField_tambahDiskonManual.send_keys '20'
        @app.transaksi.btn_tambahDiskonManualSimpan.click
        @app.transaksi.btn_detail_Produk_Simpan.click
    when 'otomatis'
        $i = 0
        $num = 9
        while $i < $num  do
            @app.transaksi.text_produkN1.click
            $i +=1
        end
    end

    
end

When(/^user apply voucher #diskonmanualotomatis$/) do 
    sleep 3
    @app.poinvoucherpromo.btn_titiktiga.click
    @app.poinvoucherpromo.btn_voucher.click
    @app.poinvoucherpromo.txtfield_addvoucher.send_keys "VOUCHER"
    @app.poinvoucherpromo.btn_gunakanVoucher.click
    sleep(3)

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

Then(/^bisa apply voucher dan diskon item manual #diskonmanualotomatis$/) do
    expect(@app.transaksi.text_produkN1.displayed?).to be true
    p 'Scenario Berhasil'
end