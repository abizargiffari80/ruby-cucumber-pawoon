Given(/^user berada di homepage dan memiliki transaksi cicilan #bayarcicilan$/) do 
    expect(@app.transaksi.text_produkN1.displayed?).to be true
end

And(/^user klik riwayat transaksi #bayarcicilan$/) do 
    @app.transaksi.btn_drawer.click
    @app.drawer.btn_riwayattransaksi.click
    sleep(2)
end

And(/^user klik detail cicilan #bayarcicilan$/) do 
    @app.cicilan.btn_detail_cicilan.click
    sleep(2)
end

When(/^user bayar cicilan #bayarcicilan$/) do 
    swipe()  
    @app.cicilan.checkbox_cicilan1.click
    @app.cicilan.btn_bayar_cicilan.click
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

Then(/^user berhasil bayar cicilan #bayarcicilan$/) do 
    expect(@app.transaksi.text_produkN1.displayed?).to be true
end