Given(/^user berada di homepage #><subtotal$/) do 
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true
end

And(/^user pilih pelanggan #><subtotal$/) do 
    @app.pelanggan.btn_pelanggan.click
    @app.pelanggan.btn_pelangganAutomation.click
    @app.pelanggan.btn_pilihpelanggan.click
end

And(/^user pilih produk normal #><subtotal$/) do 
    @app.transaksi.text_produkN1.click
    begin
        if waitFor {@app.transaksi.has_btn_saya_mengerti_trx}
            @app.transaksi.btn_saya_mengerti_trx.click
        end
    rescue
        p 'element saya mengerti trx not found'
    end
end

And(/^user redeem voucher "(.*)" #><subtotal$/) do | jumlah |

    @app.poinvoucherpromo.btn_titiktiga.click
    @app.poinvoucherpromo.btn_voucher.click
    sleep 1

    p jumlah
    case jumlah
    when '100rb'
        @app.poinvoucherpromo.txtfield_addvoucher.send_keys "vouc100rb"
    when '100'
        @app.poinvoucherpromo.txtfield_addvoucher.send_keys "vouc100"
    end

    @app.poinvoucherpromo.btn_gunakanVoucher.click
    sleep(3)

    @app.transaksi.btn_simpan.click
    @app.transaksi.btn_transaksi_tersimpanNew1.click
    @app.transaksi.btn_lanjutkan_transaksi.click
    @app.transaksi.btn_bayar.click
end

When(/^user bayar uang pas #><subtotal$/) do
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

Then(/^transaksi normal voucher berhasil #><subtotal$/) do
    expect(@app.transaksi.text_produkN1.displayed?).to be true
    p 'Scenario Berhasil'
end