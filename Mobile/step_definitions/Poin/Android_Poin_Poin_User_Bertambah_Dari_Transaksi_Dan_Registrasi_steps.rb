require 'date'

Given(/^user berada di homepage #poinbertambahtrxregis$/) do
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true
end

And(/^user pilih produk #poinbertambahtrxregis$/) do
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

And(/^user pilih pelanggan baru #poinbertambahtrxregis$/) do
    @app.pelanggan.btn_pelanggan.click
    @app.pelanggan.btn_tambahpelanggan.click
    current_time = DateTime.now
    time = current_time.strftime "%d-%m-%Y %H:%M"
    num = rand.to_s[2..11]
    @app.pelanggan.txtField_nama_pelanggan.click
    @app.pelanggan.txtField_nama_pelanggan.send_keys "Automation "+time
    @app.pelanggan.txtField_nohp_pelanggan.click
    @app.pelanggan.txtField_nohp_pelanggan.send_keys "08"+num
    @app.pelanggan.btn_simpan.click
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


When(/^user bayar #poinbertambahtrxregis$/) do
    
    @app.pembayaran.btn_uangpas.click
    sleep(1)
    
    
end

Then(/^poin user bertambah dari transaksi dan registrasi #poinbertambahtrxregis$/) do
    #get text & clean
    el_poin = @app.poin.txt_poinRegistrasi.text
    poinRegis = '+1100 Poin'
    p el_poin
    if el_poin == poinRegis
        p 'Jumlah Poin Transaksi dan Registrasi Sesuai'
    else
        p 'Jumlah Poin Transaksi dan Registrasi Tidak Sesuai'
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
