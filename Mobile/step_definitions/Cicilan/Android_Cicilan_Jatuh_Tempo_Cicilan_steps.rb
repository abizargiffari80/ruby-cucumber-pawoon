Given(/^user berada di homepage #jatuhtempocicilan$/) do 
    expect(@app.transaksi.text_produkN1.displayed?).to be true
end

And(/^pilih produk #jatuhtempocicilan$/) do 
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

And(/^user pilih pelanggan #jatuhtempocicilan$/) do 
    @app.pelanggan.btn_pelanggan.click
    @app.pelanggan.btn_pelangganAutomation.click
    @app.pelanggan.btn_pilihpelanggan.click
end


And(/^user bayar #jatuhtempocicilan$/) do 
    @app.transaksi.btn_bayar.click
end


And(/^user pilih cicilan #jatuhtempocicilan$/) do 
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

When(/^user klik "(.*)" cicilan #jatuhtempocicilan$/) do | periode |
    @app.cicilan.txt_jumlah_cicilan.click
    @app.cicilan.txt_periode_cicilan2.click
    sleep 1
    p periode
    case periode
    when 'mingguan'
        @app.cicilan.dropdown_periode_cicilan.click
        @app.cicilan.txt_periode_mingguan.click
        el_p_minggu =  @app.cicilan.txt_tipe_periode_cicilan
        el_p_minggu_text = el_p_minggu.text
        p el_p_minggu_text
    when 'bulanan'
        @app.cicilan.dropdown_periode_cicilan.click
        @app.cicilan.txt_periode_bulanan.click
        el_p_bulan =  @app.cicilan.txt_tipe_periode_cicilan
        el_p_bulan_text = el_p_bulan.text
        p el_p_bulan_text
    when 'custom'
        @app.cicilan.dropdown_periode_cicilan.click
        @app.cicilan.txt_periode_custom.click
        el_p_custom =  @app.cicilan.txt_tipe_periode_cicilan
        el_p_custom_text = el_p_custom.text
        p el_p_custom_text
    end
    sleep 2
    
end

Then(/^system generate otomatis "(.*)" cicilan #jatuhtempocicilan$/) do | periods |
    p periods
    case periods
    when 'weekly'
        el_jt_cicilan1 =  @app.cicilan.txt_jatuhtempo_cicilan1
        el_jt_cicilan1_text = el_jt_cicilan1.text
        p el_jt_cicilan1_text
        el_jt_cicilan2 =  @app.cicilan.txt_jatuhtempo_cicilan2
        el_jt_cicilan2_text = el_jt_cicilan2.text
        p el_jt_cicilan2_text
    when 'monthly'
        el_jt_cicilan1 =  @app.cicilan.txt_jatuhtempo_cicilan1
        el_jt_cicilan1_text = el_jt_cicilan1.text
        p el_jt_cicilan1_text
        el_jt_cicilan2 =  @app.cicilan.txt_jatuhtempo_cicilan2
        el_jt_cicilan2_text = el_jt_cicilan2.text
        p el_jt_cicilan2_text
    when 'customs'
        @app.cicilan.txt_jatuhtempo_cicilan1.click
        expect(@app.cicilan.txt_kalender_custom_cicilan.displayed?).to be true
    end

    sleep 2
    $driver.press_keycode 4
    sleep(1)
    $driver.press_keycode 4
    p 'Scenario Berhasil'
end