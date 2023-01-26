Given(/^user berada di homepage #meja$/) do
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true

end 

And(/^user pilih meja #meja$/) do
    @app.transaksi.btn_meja.click
    @app.meja.btn_meja1class.click
    @app.meja.btn_pilihmeja.click

end

And(/^user pilih produk normal #meja$/) do
    @app.transaksi.text_produkN1.click
    begin
        if waitFor {@app.transaksi.has_btn_saya_mengerti_trx}
            @app.transaksi.btn_saya_mengerti_trx.click
        end
    rescue
        p 'element saya mengerti trx not found'
    end
    # p 'pass'
    @app.transaksi.text_produkZ.click
    @app.transaksi.btn_simpan.click
    @app.transaksi.btn_transaksi_tersimpanNew1.click
    @app.transaksi.btn_lanjutkan_transaksi.click
end

And(/^user "(.*)" meja #meja$/) do | action |
    
    p action
    case action
    when 'pindah'
        @app.transaksi.btn_meja.click
        @app.meja.btn_meja1class.click
        @app.meja.btn_pindahpisahgabungmeja.click
        @app.meja.btn_meja2class_nd.click
        @app.meja.btn_pindahmeja.click
        @app.meja.btn_selectmeja.click
        @app.meja.btn_lihattransaksi.click
    when 'pisah'
        @app.transaksi.btn_meja.click
        @app.meja.btn_meja1class.click
        @app.meja.btn_pindahpisahgabungmeja.click
        @app.meja.btn_meja2class_nd.click
        @app.meja.btn_pisahmeja.click
        @app.meja.btn_selectmeja.click
        @app.meja.btn_pidahproductclass.click
        @app.meja.btn_simpanpindah.click
        @app.meja.btn_simpanpindahconfirmNew.click
        sleep(5)
        @app.meja.btn_back_Meja.click
    end

end 

When(/^user bayar dengan uang tunai pas "(.*)" #meja$/) do | actions |

    p actions
    case actions
    when 'move'
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

    when 'seperate'
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
end

Then(/^user sukses bayar #meja$/) do
    expect(@app.transaksi.text_produkN1.displayed?).to be true
    p 'Transaksi Berhasil'

end
