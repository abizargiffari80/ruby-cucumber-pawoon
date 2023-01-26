Given(/^user berada di homepage dan memiliki transaksi cicilan #statuscicilan$/) do 
    expect(@app.transaksi.text_produkN1.displayed?).to be true
end

When(/^user klik riwayat transaksi #statuscicilan$/) do 
    @app.transaksi.btn_drawer.click
    @app.drawer.btn_riwayattransaksi.click
    sleep(2)
end

Then(/^system menampilkan status cicilan lunas #statuscicilan$/) do 
    expect(@app.cicilan.txt_LUNAS_cicilan.displayed?).to be true
end