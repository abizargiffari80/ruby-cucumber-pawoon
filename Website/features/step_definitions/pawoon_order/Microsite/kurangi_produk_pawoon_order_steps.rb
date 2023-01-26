Given(/^User berada di halaman Pawoon Order #kurangiproduk$/) do
    expect(@pusathalaman.pawoonorderpage.has_txt_produkZ?).to be true
end
    
When(/^User kurangi "(.*)"$/) do | productname |
    $driver.execute_script("window.scrollBy(0,250)", "")

    p productname
    case productname
    when 'produk normal'
        @pusathalaman.pawoonorderpage.txt_produkZ.click
        @pusathalaman.pawoonorderpage.btn_tambahPesanan.click
        sleep 1
        expect(@pusathalaman.pawoonorderpage.has_txt_x1_produkZ?).to be true
    when 'produk normal opsi'
        @pusathalaman.pawoonorderpage.txt_produkNO.click
        sleep 3
        @pusathalaman.pawoonorderpage.txt_produkNO_Opsi1.click
        @pusathalaman.pawoonorderpage.btn_tambahPesanan.click
        sleep 1
        expect(@pusathalaman.pawoonorderpage.has_txt_x1_produkNO?).to be true
    when 'produk variant'
        @pusathalaman.pawoonorderpage.txt_produkV.click
        sleep 4
        @pusathalaman.pawoonorderpage.txt_produkV_Var1.click
        @pusathalaman.pawoonorderpage.txt_produkV_Var2.click
        @pusathalaman.pawoonorderpage.txt_produkV_Var3.click
        @pusathalaman.pawoonorderpage.btn_tambahPesanan.click
        sleep 1
        expect(@pusathalaman.pawoonorderpage.has_txt_x1_produkV?).to be true
    when 'produk variant opsi'
        @pusathalaman.pawoonorderpage.txt_produkVO.click
        sleep 5
        @pusathalaman.pawoonorderpage.txt_produkVO_Var1.click
        @pusathalaman.pawoonorderpage.txt_produkVO_Var2.click
        @pusathalaman.pawoonorderpage.txt_produkVO_Var3.click
        @pusathalaman.pawoonorderpage.txt_produkVO_Opsi1.click
        @pusathalaman.pawoonorderpage.btn_tambahPesanan.click
        sleep 1
        expect(@pusathalaman.pawoonorderpage.has_txt_x1_produkVO?).to be true
    end
    
end
    
Then(/^Berhasil kurangi produk "(.*)"$/) do | namaproduk |
    sleep 1

    # has_no_selector?
    p namaproduk
    case namaproduk
    when 'normal'
        @pusathalaman.pawoonorderpage.txt_produkZ.click
        @pusathalaman.pawoonorderpage.btn_kurangiProduk.click
        expect(@pusathalaman.pawoonorderpage.has_no_txt_x1_produkZ?).to be true
        sleep 1
    when 'normal opsi'
        @pusathalaman.pawoonorderpage.txt_produkNO.click
        @pusathalaman.pawoonorderpage.btn_editProduk.click
        @pusathalaman.pawoonorderpage.btn_kurangiProduk.click
        expect(@pusathalaman.pawoonorderpage.has_no_txt_x1_produkNO?).to be true
        sleep 1
    when 'variant'
        @pusathalaman.pawoonorderpage.txt_produkV.click
        @pusathalaman.pawoonorderpage.btn_editProduk.click
        @pusathalaman.pawoonorderpage.btn_kurangiProduk.click
        expect(@pusathalaman.pawoonorderpage.has_no_txt_x1_produkV?).to be true
        sleep 1
    when 'variant opsi'
        @pusathalaman.pawoonorderpage.txt_produkVO.click
        @pusathalaman.pawoonorderpage.btn_editProduk.click
        @pusathalaman.pawoonorderpage.btn_kurangiProduk.click
        expect(@pusathalaman.pawoonorderpage.has_no_txt_x1_produkVO?).to be true
        sleep 1
    end

    p 'Scenario Berhasil'
    sleep 1
    expect(@pusathalaman.pawoonorderpage.has_dropdown_selectCategory?).to be true
    
end