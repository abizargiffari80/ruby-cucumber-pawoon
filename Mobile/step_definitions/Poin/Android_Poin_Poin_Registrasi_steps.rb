require 'date'

Given(/^user berada di homepage #registrasi$/) do
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true
end

And(/^user pilih produk #registrasi$/) do
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

And(/^user pilih pelanggan baru #registrasi$/) do
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
    
end

When(/^user bayar #registrasi$/) do
    @app.transaksi.btn_bayar.click
    begin
        if waitFor {@app.pembayaran.btn_saya_mengerti_metod}
            @app.pembayaran.btn_saya_mengerti_metod.click
        end
    rescue
        p 'element saya mengerti metode pembayaran not found'
    end
    @app.pembayaran.btn_uangpas.click
    sleep(1)
    
    
end

Then(/^pelanggan mendapatkan poin registrasi #registrasi$/) do
    #get text & clean
    el_poin = @app.poin.txt_poinRegistrasi.text
    poinRegis = '+1100 Poin'
    p el_poin
    if el_poin == poinRegis
        p 'Jumlah Poin Registrasi Sesuai'
    else
        p 'Jumlah Poin Registrasi Tidak Sesuai'
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
