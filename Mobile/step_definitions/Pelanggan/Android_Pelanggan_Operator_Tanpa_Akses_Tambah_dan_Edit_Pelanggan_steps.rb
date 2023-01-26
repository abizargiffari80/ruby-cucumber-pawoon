Given(/^user berada di homepage #akses$/) do 
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true

end

And(/^user ganti operator ke kasir atau staff yang tidak memiliki akses pelanggan #akses$/) do
    @app.transaksi.btn_drawer.click
    @app.drawer.btn_operator.click
    @app.pelanggan.btn_operator_EkoGreen.click
    sleep 3
    # Loop btn 1
    $i = 0
    $num = 4
    while $i < $num  do
      @app.afterloginpage.text_btn_1.click
        $i +=1
    end
    sleep(3)
    expect(@app.afterloginpage.img_produk.displayed?).to be true

end

When(/^user "(.*)" pelanggan #akses$/) do | trigger |
    p trigger
    case trigger
    when 'tambah'
        @app.pelanggan.btn_pelanggan.click
        sleep 2
    when 'edit'
        @app.pelanggan.btn_pelanggan.click
        @app.pelanggan.btn_pelangganAutomation.click
        @app.pelanggan.btn_ubahpelanggan.click
        sleep(5)
    end

end

Then(/^"(.*)" muncul  #akses$/) do | validasi |

    p validasi
    case validasi
    when 'tidak ada button tambah'
        #cek element is not present
        begin
            if @app.pelanggan.btn_tambahpelanggan.displayed?
                p 'Scenario Gagal'
            end
        rescue
            p 'Scenario Berhasil'

        end
        @app.pelanggan.btn_back.click
    when 'validasi tidak punya akses'
        expect(@app.pelanggan.btn_ubahpelanggan.displayed?).to be true
        @app.pelanggan.btn_close.click
        @app.pelanggan.btn_back.click
        p 'Scenario Berhasil'
    end


    

end
