Given(/^user berada di homepage #validasi$/) do
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true

end

And(/^user tambah pelanggan #validasi$/) do
    @app.pelanggan.btn_pelanggan.click
    @app.pelanggan.btn_tambahpelanggan.click

end

When(/^user klik simpan "(.*)" #validasi$/) do | trigger |
    p trigger
    case trigger
    when 'nohp'
        @app.pelanggan.txtField_nama_pelanggan.send_keys "A"
        p 'nohp'
    when 'nama nohp'
        p 'nama nohp'
    end

    @app.pelanggan.btn_simpan.click
end

Then(/^system menampilkan validasi "(.*)" #validasi$/) do | validasi |

    p validasi
    case validasi
    when 'nohp'
        expect(@app.pelanggan.errorMessage_NoTlpNew.displayed?).to be true
        p 'Scenario Berhasil'
    when 'nama nohp'
        expect(@app.pelanggan.errorMessage_Nama.displayed?).to be true
        expect(@app.pelanggan.errorMessage_NoTlp.displayed?).to be true
        p 'Scenario Berhasil'
    end
    
    @app.pelanggan.btn_close.click
    sleep(1)
    $driver.press_keycode 4
end