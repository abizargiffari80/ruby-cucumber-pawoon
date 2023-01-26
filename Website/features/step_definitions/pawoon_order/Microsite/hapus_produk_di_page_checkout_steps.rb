Given(/^User berada di halaman Pawoon Order #checkouthapus$/) do
    expect(@pusathalaman.pawoonorderpage.has_txt_produkZ?).to be true
end
    
When(/^User pilih "(.*)"$/) do | productname |
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
    end

    @pusathalaman.pawoonorderpage.btn_tambahPesanan.click
    @pusathalaman.pawoonorderpage.btn_selanjutnya.click
    sleep 1
end

And(/^User hapus produk$/) do
    @pusathalaman.pawoonorderpage.btn_hapusPesanan.click

end
    
Then(/^Berhasil hapus produk di page checkout$/) do
    expect(@pusathalaman.pawoonorderpage.has_txt_produkZ?).to be true
    p 'Scenario Berhasil'
    sleep 1
end