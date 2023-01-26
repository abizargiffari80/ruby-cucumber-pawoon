Given(/^user berada di homepage #halpelanggan$/) do
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true

end

When(/^user ke menu "(.*)" #halpelanggan$/) do | halpelanggan |

    p halpelanggan
    case halpelanggan
    when 'pelanggan'
        @app.pelanggan.btn_pelanggan.click
    when 'tambah pelanggan'
        @app.pelanggan.btn_pelanggan.click
        @app.pelanggan.btn_tambahpelanggan.click
    end
    sleep 2

end

Then(/^system menampilkan "(.*)" #halpelanggan$/) do | haltampilkan |

    p haltampilkan
    case haltampilkan
    when 'halpelanggan'
        expect(@app.pelanggan.btn_pelangganAutomation.displayed?).to be true
        p 'Scenario Berhasil'
    when 'haltambahpelanggan'
        expect(@app.pelanggan.txtField_nama_pelanggan.displayed?).to be true
        p 'Scenario Berhasil'
        @app.pelanggan.btn_close.click
    end

    sleep(1)
    $driver.press_keycode 4
end
