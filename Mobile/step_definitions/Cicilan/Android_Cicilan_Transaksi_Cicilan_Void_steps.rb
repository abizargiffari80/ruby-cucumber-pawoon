Given(/^user berada di homepage dan memiliki transaksi cicilan yang sudah lunas #cicilanvoid$/) do 
    expect(@app.transaksi.text_produkN1.displayed?).to be true
end

And(/^user klik riwayat transaksi #cicilanvoid$/) do 
    @app.transaksi.btn_drawer.click
    @app.drawer.btn_riwayattransaksi.click
    sleep(2)
end

When(/^user batalkan cicilan #cicilanvoid$/) do 
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

Then(/^transaksi cicilan berhasil dibatalkan #cicilanvoid$/) do 
    expect(@app.transaksi.text_produkN1.displayed?).to be true
end