Given(/^user berada di homepage #poinbertambahtrx$/) do
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true
end

And(/^user pilih produk#poinbertambahtrx$/) do
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

And(/^user pilih pelanggan #poinbertambahtrx$/) do
    @app.pelanggan.btn_pelanggan.click
    @app.pelanggan.btn_pelangganAutomation.click
    @app.pelanggan.btn_pilihpelanggan.click
    @app.transaksi.btn_bayar.click

    begin
        if waitFor {@app.pembayaran.btn_saya_mengerti_metod}
            @app.pembayaran.btn_saya_mengerti_metod.click
        end
    rescue
        p 'element saya mengerti metode pembayaran not found'
    end
    
end

And(/^user pilih poin #poinbertambahtrx$/) do
    @app.poin.btn_poin.click
    @app.poin.txtfield_reddempoin.send_keys '500'
    @app.poin.btn_redeempoin.click
end

When(/^user bayar #poinbertambahtrx$/) do
    
    @app.pembayaran.btn_uangpas.click
    sleep(1)
    
    
end

Then(/^poin user bertambah dari transaksi #poinbertambahtrx$/) do
    #get text & clean
    el_poin = @app.poin.txt_poinTrx.text
    poinTrx = '+100 Poin'
    p el_poin
    if el_poin == poinTrx
        p 'Jumlah Poin Transaksi Sesuai'
    else
        p 'Jumlah Poin Transaksi Tidak Sesuai'
        close_app
    end

    p 'Scenario Berhasil'
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
