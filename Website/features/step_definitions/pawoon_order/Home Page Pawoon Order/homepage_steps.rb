Given(/^User berada di halaman Pawoon Order #homepage$/) do
    expect(@pusathalaman.pawoonorderpage.has_txt_produkZ?).to be true
end
    
When(/^User lakukan pengecekan element #homepage$/) do 
    @pusathalaman.pawoonorderpage.txt_produkZ.click
    @pusathalaman.pawoonorderpage.btn_tambahPesanan.click
end
    
Then(/^Element di homepage Pawoon Order tampil #homepage$/) do
    # header
    expect(@pusathalaman.pawoonorderpage.has_header?).to be true
    expect(@pusathalaman.pawoonorderpage.has_banner?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_home_namaOutlet?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_home_alamatOutlet?).to be true

    # produk
    expect(@pusathalaman.pawoonorderpage.has_txt_home_fotoProduk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_home_namaProduk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_home_descProduk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_home_hargaProduk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_home_qtyProduk?).to be true

    # category
    expect(@pusathalaman.pawoonorderpage.has_txt_home_dropDownCategory?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_home_titleCategory?).to be true

    # case scroll banner hide
    $driver.execute_script("window.scrollBy(0,250)", "")
    # expect(@pusathalaman.pawoonorderpage.has_no_banner?).to be true
    p 'Scenario Berhasil'
    sleep 1
end