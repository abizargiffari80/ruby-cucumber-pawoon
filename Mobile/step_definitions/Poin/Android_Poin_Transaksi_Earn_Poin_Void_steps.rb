Given(/^user berada di homepage #trxearnpoinvoid$/) do
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true

    @app.transaksi.text_produkN1.click
    begin
        if waitFor {@app.transaksi.has_btn_saya_mengerti_trx}
            @app.transaksi.btn_saya_mengerti_trx.click
        end
        
    rescue
        p 'element saya mengerti trx not found'
    end

    @app.pelanggan.btn_pelanggan.click
    @app.pelanggan.btn_pelangganAutomation.click
    totalPoinPel_before = @app.poin.txt_totalPoinPelanggan.text
    p totalPoinPel_before
    @app.pelanggan.btn_pilihpelanggan.click

    @app.transaksi.btn_simpan.click
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

    expect(@app.pembayaran.btn_uangpas.displayed?).to be true
    sleep(2)
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

    @app.transaksi.text_produkN1.click
    @app.pelanggan.btn_pelanggan.click
    @app.pelanggan.btn_pelangganAutomation.click
    totalPoinPel = @app.poin.txt_totalPoinPelanggan.text
    p totalPoinPel 
    sleep(2)

    $driver.press_keycode 4
    sleep(1)
    $driver.press_keycode 4
    sleep(1)
end

And(/^batalkan transaksi yang ada earn poin #trxearnpoinvoid$/) do
    sleep(2)
    @app.transaksi.btn_drawer.click
    @app.drawer.btn_riwayattransaksi.click
    @app.drawer.btn_batalkan_trx.click
    @app.drawer.btn_batalkan_trx_confirm.click
    expect(@app.drawer.text_batal_trx.displayed?).to be true
    sleep(2)
    @app.drawer.btn_back_RT.click
    sleep(2)
    @app.transaksi.btn_drawer.click
    @app.transaksi.btn_updatedata.click
    sleep(15)

    
end

When(/^user pilih pelanggan yang transaksinya dibatalkan #trxearnpoinvoid$/) do
    @app.transaksi.text_produkN1.click
    @app.pelanggan.btn_pelanggan.click
    @app.pelanggan.btn_pelangganAutomation.click
    

end

Then(/^poin pelanggan kembali berkurang #trxearnpoinvoid$/) do
    totalPoinPel_after = @app.poin.txt_totalPoinPelanggan.text
    p totalPoinPel_after
    sleep(2)

    $driver.press_keycode 4
    sleep(1)
    $driver.press_keycode 4
    sleep(1)
end
