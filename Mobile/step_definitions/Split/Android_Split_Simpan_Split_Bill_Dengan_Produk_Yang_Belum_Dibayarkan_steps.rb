Given(/^user berada di homepage #simpansplitbillbelumbayar$/) do
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true
end

And(/^user pilih produk #simpansplitbillbelumbayar$/) do
    @app.transaksi.text_produkN1.click
    begin
        if waitFor {@app.transaksi.has_btn_saya_mengerti_trx}
            @app.transaksi.btn_saya_mengerti_trx.click
        end
        
    rescue
        p 'element saya mengerti trx not found'
    end
    @app.transaksi.text_produkZ.click
    @app.transaksi.btn_bayar.click
end

And(/^user pilih split bill #simpansplitbillbelumbayar$/) do 
    begin
        if waitFor {@app.pembayaran.btn_saya_mengerti_metod}
            @app.pembayaran.btn_saya_mengerti_metod.click
        end
    rescue
        p 'element saya mengerti metode pembayaran not found'
    end
    @app.pembayaran.btn_split.click    
    @app.split.btn_split_bill.click
    @app.split.btn_select_split.click
end

And(/^user pindahkan beberapa item dan bayar #simpansplitbillbelumbayar$/) do 
    @app.split.btn_plus_split_bill.click
    @app.split.btn_bayar_split_bill.click
    @app.pembayaran.btn_tunai.click
    @app.pembayaran.btn_uangpas.click
    @app.pembayaran.btn_selesai.click
    sleep(3)
end

When(/^user simpan #simpansplitbillbelumbayar$/) do
    @app.split.btn_simpan_split_bill.click
    @app.split.btn_OK_simpan_split_bill.click

end

Then(/^transaksi berhasil disimpan dengan produk yang belum dibayarkan #simpansplitbillbelumbayar$/) do
    sleep(3)
    p 'Bayar Transaksi Tersimpan Split Bill'
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
    p 'Scenario Berhasil'
end