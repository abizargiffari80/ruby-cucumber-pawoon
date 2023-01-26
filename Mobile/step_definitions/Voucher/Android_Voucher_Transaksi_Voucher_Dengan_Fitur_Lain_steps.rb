Given(/^user berada di homepage dan sudah memilih produk pelanggan dan voucher #trxpoincameja$/) do 
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true

    @app.pelanggan.btn_pelanggan.click
    @app.pelanggan.btn_pelangganAutomation.click
    @app.pelanggan.btn_pilihpelanggan.click

    @app.transaksi.text_produkN1.click
    begin
        if waitFor {@app.transaksi.has_btn_saya_mengerti_trx}
            @app.transaksi.btn_saya_mengerti_trx.click
        end
    rescue
        p 'element saya mengerti trx not found'
    end

    @app.poinvoucherpromo.btn_titiktiga.click
    @app.poinvoucherpromo.btn_voucher.click
    @app.poinvoucherpromo.txtfield_addvoucher.send_keys "VOUCHER"
    @app.transaksi.btn_gunakanVoucher.click
    sleep(3)
end

And(/^user pilih "(.*)" #trxpoincameja$/) do | trxdengan |
    

    p trxdengan
    case trxdengan
    when 'poin'
        @app.transaksi.btn_bayar.click
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
    when 'customammount'
        @app.customammount.btn_custom_amount.click
        @app.customammount.btn_ca1.click
        @app.customammount.btn_ca0.click
        @app.customammount.btn_ca0.click
        @app.customammount.btn_ca0.click
        @app.customammount.btn_caSimpan.click

        @app.transaksi.btn_bayar.click
        begin
            if waitFor {@app.pembayaran.btn_saya_mengerti_metod}
                @app.pembayaran.btn_saya_mengerti_metod.click
            end
        rescue
            p 'element saya mengerti metode pembayaran not found'
        end
    # when 'meja'
    #     @app.transaksi.btn_meja.click
    #     @app.meja.btn_meja1class.click
    #     @app.meja.btn_pilihmeja.click

    #     @app.transaksi.btn_bayar.click
    #     begin
    #         if waitFor {@app.pembayaran.btn_saya_mengerti_metod}
    #             @app.pembayaran.btn_saya_mengerti_metod.click
    #         end
    #     rescue
    #         p 'element saya mengerti metode pembayaran not found'
    #     end
    end

    
end

When(/^user bayar uang pas #trxpoincameja$/) do
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

Then(/^transaksi voucher berhasil #trxpoincameja$/) do
    expect(@app.transaksi.text_produkN1.displayed?).to be true
    p 'Scenario Berhasil'
end