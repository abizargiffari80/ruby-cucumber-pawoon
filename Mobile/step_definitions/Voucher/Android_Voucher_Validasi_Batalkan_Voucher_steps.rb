Given(/^user berada di homepage dan sudah memilih produk pelanggan dan voucher #validasibatalkanvoucher$/) do 
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

When(/^user "(.*)" #validasibatalkanvoucher$/) do | action |
    p action
    case action
    when 'bataltrx'
        @app.poinvoucherpromo.btn_titiktiga1.click
        @app.transaksi.btn_batalkanTransaksi.click
        sleep(1)
    when 'hapusproduk'
        @app.transaksi.btn_detail_Produk.click
        @app.transaksi.btn_detail_Produk_Hapus.click
        sleep(1)
    when 'gantipelanggan'
        @app.pelanggan.btn_pelanggan.click
        sleep(1)
    end

end

Then(/^validasi muncul "(.*)" #validasibatalkanvoucher$/) do | klik |
    p 'Scenario Sukses'
    sleep(2)
    @app.poinvoucherpromo.btn_OK_batalVoucher.click

    p klik
    case klik
    when 'klikproduk'
        @app.transaksi.text_produkN1.click
        sleep(1)
    when 'klikkembali'
        @app.transaksi.btn_detail_Produk_Kembali.click
        sleep(1)
    when 'klikback'
        sleep(1)
    end

    
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