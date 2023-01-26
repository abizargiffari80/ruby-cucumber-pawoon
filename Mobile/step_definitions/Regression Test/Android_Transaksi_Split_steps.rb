Given(/^user berada di homepage #split$/) do 
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true

end

And(/^user pilih produk normal #split$/) do
    @app.transaksi.text_produkN1.click
    begin
        if waitFor {@app.transaksi.has_btn_saya_mengerti_trx}
            @app.transaksi.btn_saya_mengerti_trx.click
        end
       
    rescue
        p 'element saya mengerti trx not found'
    end
    @app.transaksi.text_produkZ.click
    sleep 1
    @app.transaksi.btn_simpan.click
    @app.transaksi.btn_transaksi_tersimpanNew1.click
    @app.transaksi.btn_lanjutkan_transaksi.click
    @app.transaksi.btn_bayar.click

end

And(/^user split "(.*)" #split$/) do | metode |
    begin
        if waitFor {@app.pembayaran.btn_saya_mengerti_metod}
            @app.pembayaran.btn_saya_mengerti_metod.click
        end
    rescue
        p 'element saya mengerti metode pembayaran not found'
    end

    p metode
    case metode
    when 'tagihan'
        @app.pembayaran.btn_split.click
        @app.split.btn_split_bill.click
        @app.split.btn_select_split.click
        @app.split.btn_plus_split_bill.click
        @app.split.btn_bayar_split_bill.click
    when 'pembayaran'
        @app.pembayaran.btn_split.click
        @app.split.btn_split_payment.click
        @app.split.btn_select_split.click
    end

end

When(/^user bayar transaksi "(.*)" #split$/) do | method |

    p method
    case method
    when 'bill'
        @app.pembayaran.btn_tunai.click
        @app.pembayaran.btn_uangpas.click
        @app.pembayaran.btn_selesai.click
        sleep(2)
        @app.split.btn_plus_split_bill.click
        @app.split.btn_bayar_split_bill.click
        @app.pembayaran.btn_tunai.click
        @app.pembayaran.btn_uangpas.click
    when 'payment'
        @app.split.btn_pm1.click
        @app.split.btn_tunai.click
        @app.split.btn_bayar1.click
        @app.pembayaran.btn_uangpas.click
        sleep 2
        @app.split.btn_lanjutkan_pembayaran.click
        @app.split.btn_pm2.click
        @app.split.btn_kartu.click
        @app.split.btn_bayar2.click
        @app.pembayaran.btn_uangpas.click
    end

   
    sleep 2
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

Then(/^user sukses bayar #split$/) do 
    expect(@app.transaksi.text_produkN1.displayed?).to be true
    p 'Transaksi Berhasil'

end
