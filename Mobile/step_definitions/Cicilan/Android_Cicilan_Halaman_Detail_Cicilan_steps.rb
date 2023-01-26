Given(/^user berada di homepage dan memiliki transaksi cicilan #detailcicilan$/) do 
    expect(@app.transaksi.text_produkN1.displayed?).to be true
end

And(/^user klik riwayat transaksi #detailcicilan$/) do 
    @app.transaksi.btn_drawer.click
    @app.drawer.btn_riwayattransaksi.click
    sleep(2)
end

When(/^user klik detail cicilan #detailcicilan$/) do 
    @app.cicilan.btn_detail_cicilan.click
    sleep(2)
end


Then(/^system menampilkan halaman detail cicilan #detailcicilan$/) do 

    expect(@app.cicilan.txt_nama_pelanggan.displayed?).to be true
    expect(@app.cicilan.txt_receipt_code.displayed?).to be true
    expect(@app.cicilan.txt_jumlah_tagihan.displayed?).to be true
    expect(@app.cicilan.txt_jumlah_sudah_dibayar.displayed?).to be true
    expect(@app.cicilan.txt_jumlah_sisa_pembayaran.displayed?).to be true
    expect(@app.cicilan.txt_Uang_Muka_DP.displayed?).to be true
    expect(@app.cicilan.txt_jatuh_tempo_rp.displayed?).to be true
    expect(@app.cicilan.txt_tanggal_dibayar.displayed?).to be true
    expect(@app.cicilan.txt_jumlah_nominal.displayed?).to be true
    expect(@app.cicilan.txt_tipe_metode_pembayaran.displayed?).to be true
    expect(@app.cicilan.txt_nama_kasir.displayed?).to be true
    swipe()
    sleep 2
    expect(@app.cicilan.checkbox_cicilanKe1.displayed?).to be true
    expect(@app.cicilan.txt_jatuh_tempo_sp.displayed?).to be true
    expect(@app.cicilan.txt_jumlah_sp.displayed?).to be true
    expect(@app.cicilan.btn_bayar.displayed?).to be true
end