Given(/^User berada di halaman Pawoon Order #tambahproduk$/) do
    expect(@pusathalaman.pawoonorderpage.has_txt_produkZ?).to be true
end
    
When(/^User tambah "(.*)"$/) do | productname |
    $driver.execute_script("window.scrollBy(0,250)", "")

    p productname
    case productname
    when 'produk normal'
        @pusathalaman.pawoonorderpage.txt_produkZ.click
    when 'produk normal opsi'
        @pusathalaman.pawoonorderpage.txt_produkNO.click
        sleep 3
        @pusathalaman.pawoonorderpage.txt_produkNO_Opsi1.click
    when 'produk variant'
        @pusathalaman.pawoonorderpage.txt_produkV.click
        sleep 4
        @pusathalaman.pawoonorderpage.txt_produkV_Var1.click
        @pusathalaman.pawoonorderpage.txt_produkV_Var2.click
        @pusathalaman.pawoonorderpage.txt_produkV_Var3.click
    when 'produk variant opsi'
        @pusathalaman.pawoonorderpage.txt_produkVO.click
        sleep 5
        @pusathalaman.pawoonorderpage.txt_produkVO_Var1.click
        @pusathalaman.pawoonorderpage.txt_produkVO_Var2.click
        @pusathalaman.pawoonorderpage.txt_produkVO_Var3.click
        @pusathalaman.pawoonorderpage.txt_produkVO_Opsi1.click
    end

    sleep 1
    @pusathalaman.pawoonorderpage.btn_tambahPesanan.click
end
    
Then(/^Berhasil tambah produk "(.*)"$/) do | namaproduk |
    sleep 1

    # has_no_selector?
    p namaproduk
    case namaproduk
    when 'normal'
        expect(@pusathalaman.pawoonorderpage.has_txt_x1_produkZ?).to be true
    when 'normal opsi'
        expect(@pusathalaman.pawoonorderpage.has_txt_x1_produkNO?).to be true
    when 'variant'
        expect(@pusathalaman.pawoonorderpage.has_txt_x1_produkV?).to be true
    when 'variant opsi'
        expect(@pusathalaman.pawoonorderpage.has_txt_x1_produkVO?).to be true
    end
    p 'Scenario Berhasil'
    sleep 1
end