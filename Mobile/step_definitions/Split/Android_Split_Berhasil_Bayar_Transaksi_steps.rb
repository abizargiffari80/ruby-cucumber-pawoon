Given(/^user berada di homepage #berhasilbayar$/) do
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true
end

And(/^user pilih produk #berhasilbayar$/) do
    @app.transaksi.text_produkN1.click
    begin
        if waitFor {@app.transaksi.has_btn_saya_mengerti_trx}
            @app.transaksi.btn_saya_mengerti_trx.click
        end 
    rescue
        p 'element saya mengerti trx not found'
    end
    # @app.transaksi.btn_simpan.click
    # @app.transaksi.btn_transaksi_tersimpanNew1.click
    # @app.transaksi.btn_lanjutkan_transaksi.click
    @app.transaksi.btn_bayar.click
end

And(/^user pilih split pembayaran #berhasilbayar$/) do
    begin
        if waitFor {@app.pembayaran.btn_saya_mengerti_metod}
            @app.pembayaran.btn_saya_mengerti_metod.click
        end
    rescue
        p 'element saya mengerti metode pembayaran not found'
    end
    @app.pembayaran.btn_split.click
    @app.split.btn_split_payment.click
    @app.split.btn_select_split.click
end

And(/^user tambah metode pembayaran sampai 5 row #berhasilbayar$/) do 
    @app.split.btn_tambah_mp.click
    swipeHome()
    @app.split.btn_tambah_mp.click
    swipeHome()
    @app.split.btn_tambah_mp.click
    swipeHome()

end

When(/^user bayar semua metode pembayaran #berhasilbayar$/) do
    @app.split.btn_bayar1.click
    @app.pembayaran.btn_uangpas.click
    @app.split.btn_lanjutkan_pembayaran.click

    @app.split.btn_bayar2.click
    @app.pembayaran.btn_uangpas.click
    @app.split.btn_lanjutkan_pembayaran.click

    @app.split.btn_bayar3.click
    @app.pembayaran.btn_uangpas.click
    @app.split.btn_lanjutkan_pembayaran.click

    sleep(2)
    swipeHome()

    @app.split.btn_bayar4.click
    @app.pembayaran.btn_uangpas.click
    @app.split.btn_lanjutkan_pembayaran.click

    sleep(2)
    swipeHome()

    @app.split.btn_bayar5.click
    @app.pembayaran.btn_uangpas.click
    @app.pembayaran.btn_selesai.click

end

Then(/^transaksi berhasil di bayar #berhasilbayar$/) do
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
    expect(@app.transaksi.text_produkN1.displayed?).to be true
    p 'Transaksi Berhasil'
end