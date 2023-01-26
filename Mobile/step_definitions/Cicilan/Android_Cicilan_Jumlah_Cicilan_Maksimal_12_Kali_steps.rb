Given(/^user berada di homepage #maksjumlahcicilan$/) do 
    expect(@app.transaksi.text_produkN1.displayed?).to be true
end

And(/^pilih produk #maksjumlahcicilan$/) do 
    @app.transaksi.text_produkN1.click
    begin
        if waitFor {@app.transaksi.has_btn_saya_mengerti_trx}
            @app.transaksi.btn_saya_mengerti_trx.click
        end
    rescue
        p 'element saya mengerti trx not found'
    end
    @app.transaksi.text_produkZ.click
end

And(/^user pilih pelanggan #maksjumlahcicilan$/) do 
    @app.pelanggan.btn_pelanggan.click
    @app.pelanggan.btn_pelangganAutomation.click
    @app.pelanggan.btn_pilihpelanggan.click
end


And(/^user bayar #maksjumlahcicilan$/) do 
    @app.transaksi.btn_bayar.click
end


And(/^user pilih cicilan #maksjumlahcicilan$/) do 
    begin
        if waitFor {@app.pembayaran.btn_saya_mengerti_metod}
            @app.pembayaran.btn_saya_mengerti_metod.click
        end
    rescue
        p 'element saya mengerti metode pembayaran not found'
    end
    @app.pembayaran.btn_cicilan.click
    sleep 2
end

When(/^user klik jumlah cicilan #maksjumlahcicilan$/) do 
    @app.cicilan.dropdown_jumlah_cicilan.click
    sleep 1
    $i = 0
    $num = 12
    while $i < $num  do
        $driver.press_keycode 20
        $i +=1
    end    
    sleep 2
    $driver.press_keycode 66
    sleep 1
    swipeCicilan()
    sleep 1
    swipeCicilan()
    sleep 2
end

Then(/^system menampilkan maksimal cicilan sebanyak 12 kali #maksjumlahcicilan$/) do 
    expect(@app.cicilan.txt_cicilanke12.displayed?).to be true
    $txt_cicilan = @app.cicilan.txt_cicilanke12.text
    p $txt_cicilan
    text_cicilan = 'Cicilan 12'

    begin
        if $txt_cicilan == text_cicilan
            p 'Scenario Berhasil'
        end
    rescue
        p 'Scenario Gagal'
        close_app
    end

    sleep 2
    $driver.press_keycode 4
    sleep(1)
    $driver.press_keycode 4
    p 'Scenario Berhasil'
end