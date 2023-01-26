Given 'user berada di homepage "Poin-11"' do
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true
end

And 'user berhasil beli produk ppob "Poin-11"' do
    #pilih produk ppob
    @app.poin.text_CategoryProdukDigital.click
    @app.poin.text_PulsaIsiUlang.click
    sleep(1)
    @app.poin.btn_0_ppob.click
    @app.poin.btn_8_ppob.click
    @app.poin.btn_1_ppob.click
    @app.poin.btn_2_ppob.click
    @app.poin.btn_1_ppob.click
    @app.poin.btn_1_ppob.click
    @app.poin.btn_3_ppob.click
    @app.poin.btn_3_ppob.click
    @app.poin.btn_6_ppob.click
    @app.poin.btn_0_ppob.click
    @app.poin.btn_1_ppob.click
    @app.poin.btn_8_ppob.click
    @app.poin.btn_Pilih_Produk_ppob.click

    @app.poin.produk_ppob_pulsa5000.click
    @app.poin.btn_Konfirmasi_ppob.click

    @app.poin.btn_1_ppob.click
    @app.poin.btn_1_ppob.click
    @app.poin.btn_1_ppob.click
    @app.poin.btn_1_ppob.click

    sleep(3)

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

And 'user pilih pelanggan "Poin-11"' do
    @app.pelanggan.btn_pelanggan.click
    @app.pelanggan.btn_pelangganAutomation.click
    @app.pelanggan.btn_pilihpelanggan.click

    
    
end

When 'user bayar "Poin-11"' do
    @app.transaksi.btn_bayar.click

    begin
        if waitFor {@app.pembayaran.btn_saya_mengerti_metod}
            @app.pembayaran.btn_saya_mengerti_metod.click
        end
    rescue
        p 'element saya mengerti metode pembayaran not found'
    end
end

Then 'icon redeem poin tidak tampil dan user tidak dapat poi transaksi "Poin-11"' do
    if @app.poin.btn_poin.displayed?
        p 'Button Poin Tampil'
    else
        p 'Button Poin Tidak Tampil, Berhasil'
        close_app
    end

    el_poin = @app.poin.txt_poinTrx.text
    poinTrx = '0 Poin'
    p el_poin
    if el_poin == poinTrx
        p 'Jumlah Poin Transaksi Sesuai'
    else
        p 'Jumlah Poin Transaksi Tidak Sesuai'
        close_app
    end

    p 'Scenario Berhasil'

    sleep(1)
    $driver.press_keycode 4
    sleep(1)
end