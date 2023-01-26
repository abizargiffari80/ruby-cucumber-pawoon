Given (/^user berada di homepage #transaksivoid$/) do
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true

end

And (/^user pilih produk normal #transaksivoid$/) do
    @app.transaksi.text_produkN1.click
    begin
        if waitFor {@app.transaksi.has_btn_saya_mengerti_trx}
            @app.transaksi.btn_saya_mengerti_trx.click
        end
    rescue
        p 'element saya mengerti trx not found'
    end
    # p 'pass'

    @app.transaksi.btn_simpan.click
    @app.transaksi.btn_transaksi_tersimpanNew1.click
    # @app.transaksi.btn_transaksi_tersimpan.click
    @app.transaksi.btn_lanjutkan_transaksi.click
    
end

And (/^user bayar dengan "(.*)" #transaksivoid$/) do | metodepembayaran |
    @app.transaksi.btn_bayar.click
    begin
        if waitFor {@app.pembayaran.btn_saya_mengerti_metod}
            @app.pembayaran.btn_saya_mengerti_metod.click
        end
    rescue
        p 'element saya mengerti metode pembayaran not found'
    end


    p metodepembayaran
    case metodepembayaran
    when 'tunai'
        @app.pembayaran.btn_tunai.click
        @app.pembayaran.btn_uangpas.click
    when 'kartu'
        @app.pembayaran.btn_kartuclass.click
        @app.pembayaran.btn_uangpas.click
    when 'CP debit'
        @app.pembayaran.btn_custompaymentclass.click
        sleep(2)
        @app.pembayaran.btn_debitbankX.click
        sleep 1
        @app.pembayaran.btn_uangpas.click
    when 'CP credit'
        @app.pembayaran.btn_custompaymentclass.click
        sleep 1
        @app.pembayaran.btn_creditbankX.click
        sleep 1
        @app.pembayaran.btn_uangpas.click
    end


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

When (/^user batalkan transaksi #transaksivoid$/) do
    sleep(2)
    @app.drawer.btn_riwayattransaksi.click
    @app.drawer.btn_batalkan_trx.click
    @app.drawer.btn_batalkan_trx_confirm.click
    expect(@app.drawer.text_batal_trx.displayed?).to be true
    sleep(2)
    @app.drawer.btn_back_RT.click
    sleep(2)
    @app.transaksi.btn_drawer.click
    @app.transaksi.btn_updatedata.click
    sleep(15)

end

Then (/^user sukses batalkan transaksi #transaksivoid$/) do
    expect(@app.transaksi.text_produkN1.displayed?).to be true
    p 'Transaksi Void Berhasil'

end