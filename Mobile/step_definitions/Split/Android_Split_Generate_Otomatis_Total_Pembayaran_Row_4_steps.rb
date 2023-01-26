Given(/^user berada di homepage #generate4row$/) do
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true
end

And(/^user pilih produk #generate4row$/) do
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

And(/^user pilih split pembayaran #generate4row$/) do
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

And(/^user tambah metode pembayaran sampai 5 row #generate4row$/) do 
    @app.split.btn_tambah_mp.click
    swipeHome()
    @app.split.btn_tambah_mp.click
    swipeHome()
    @app.split.btn_tambah_mp.click
    swipeHome()

end

And(/^user bayar 3 metode pembayaran #generate4row$/) do
    @app.split.txtField_ammount1.click
    sleep(1)
    #press backspace   
    $driver.press_keycode 67
    
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


    

end

When(/^user pilih hapus #generate4row$/) do
    @app.split.btn_hapus1.click    
end

Then(/^system generate otomatis untuk sisa pembayarannya di row 4 #generate4row$/) do
    sleep(5)
    @app.split.btn_bayar4.click
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
    expect(@app.transaksi.text_produkN1.displayed?).to be true
    p 'Transaksi Berhasil'
end