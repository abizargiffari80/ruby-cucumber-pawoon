require "rubygems"
require "selenium-webdriver"

Given('User berada di halaman outlet') do
    sleep 1
    @pusathalaman.outletpage.btn_outlet.click
    
end
    
When('User tambah outlet') do
    # Loop btn 1
    $i = 0
    $num = 5
    while $i < $num  do
        def generate_code(number)
            charset = Array('A'..'Z') + Array('a'..'z')
            Array.new(number) { charset.sample }.join
        end
    
        namaOutletPertama = @pusathalaman.outletpage.txt_namaOutletPertama.text
        p namaOutletPertama
    
        @pusathalaman.outletpage.btn_tambah_outlet.click
        sleep 1
        @pusathalaman.outletpage.txtField_noTlp.send_keys '08'+rand.to_s[2..11]  
        sleep 1
        @pusathalaman.outletpage.txtField_pajakServices.click
        @pusathalaman.outletpage.txt_selectAllPajak.click
        @pusathalaman.outletpage.txtField_pajakServices.click
        sleep 1
        # @pusathalaman.outletpage.txtField_importProduk.click
        # @pusathalaman.outletpage.txtField_importProduk.send_keys :enter
        # sleep 1
        @pusathalaman.outletpage.txtField_tipePenjualan.click
        @pusathalaman.outletpage.txt_selectAllTP.click
        @pusathalaman.outletpage.txtField_tipePenjualan.click
        sleep 1
        @pusathalaman.outletpage.txtField_Nama_Outlet.set  "Outlet Automation "+generate_code(5)
        sleep 1
        @pusathalaman.outletpage.txtField_KotaKab.click
        sleep 1
        @pusathalaman.outletpage.txtField_searchKota.send_keys 'Manado', :enter
        sleep 1
    
        @pusathalaman.outletpage.btn_Simpan.click
        sleep 5
    
        @pusathalaman.outletpage.btn_Ok.click
    
        sleep 1
    
        namaOutletKedua = @pusathalaman.outletpage.txt_namaOutletPertama.text
        p namaOutletKedua
    
        $i +=1
    end

    
    
    
end
    
Then('Outlet berhasil ditambah') do
    sleep 5
    # expect(@pusathalaman.outletpage.btn_tambah_outlet.displayed?).to be true
    # expect(@app.transaksi.text_produkN1.displayed?).to be true

    begin 
        if namaOutletPertama == namaOutletKedua 
            p 'Outlet Belum Tampil'    
        end
    rescue
        p 'Outlet Berhasil Dibuat'
    end
    sleep 3
    
end