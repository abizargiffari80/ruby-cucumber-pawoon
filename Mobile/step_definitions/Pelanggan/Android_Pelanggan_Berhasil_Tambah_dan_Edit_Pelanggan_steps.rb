Given(/^user berada di homepage #tambahedit$/) do
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true

end

When(/^user "(.*)" pelanggan #tambahedit$/) do |action |
    @app.pelanggan.btn_pelanggan.click
    p action
    case action
    when 'tambah'
        @app.pelanggan.btn_tambahpelanggan.click
        sleep 1
        current_time = DateTime.now
        time = current_time.strftime "%d-%m-%Y %H:%M"
        num = rand.to_s[2..11]
        @app.pelanggan.txtField_nama_pelanggan.click
        @app.pelanggan.txtField_nama_pelanggan.send_keys "Automation "+time
        @app.pelanggan.txtField_nohp_pelanggan.click
        @app.pelanggan.txtField_nohp_pelanggan.send_keys "08"+num
        @app.pelanggan.btn_simpan.click
        sleep 2
    when 'edit'
        @app.pelanggan.btn_pelangganAutomation.click
        @app.pelanggan.btn_ubahpelanggan.click
        el_nama = @app.pelanggan.txtField_ubah_NamaPelanggan
        nama_pel = el_nama.text
        p nama_pel
        pel = nama_pel[0..-8]
        @app.pelanggan.txtField_ubah_NamaPelanggan.send_keys pel+"A"
        @app.pelanggan.btn_simpan_ubahPelanggan.click
        sleep(2)
    end

end

Then(/^data pelanggan berhasil disimpan #tambahedit$/) do
    expect(@app.pelanggan.btn_pilihpelanggan.displayed?).to be true
    p 'Scenario Berhasil'
    @app.pelanggan.btn_close.click
    sleep(1)
    $driver.press_keycode 4

end
