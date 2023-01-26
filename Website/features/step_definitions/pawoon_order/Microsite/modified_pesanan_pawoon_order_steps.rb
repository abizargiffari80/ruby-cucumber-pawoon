Given(/^User berada di halaman Pawoon Order #ubahtambahpesanan$/) do
    expect(@pusathalaman.pawoonorderpage.has_txt_produkZ?).to be true
end
    
When(/^User "(.*)" pesanan$/) do | modified |
    @pusathalaman.pawoonorderpage.txt_produkZ.click
    @pusathalaman.pawoonorderpage.btn_tambahPesanan.click
    @pusathalaman.pawoonorderpage.btn_selanjutnya.click
    sleep 1

    p modified
    case modified
    when 'ubah pesanan'
        @pusathalaman.pawoonorderpage.btn_ubahPesanan.click
    when 'tambah pesanan'
        @pusathalaman.pawoonorderpage.btn_tambahPesananLain.click
    when 'kurangi pesanan'
        @pusathalaman.pawoonorderpage.btn_tambahQtyPesanan.click
        @pusathalaman.pawoonorderpage.btn_kurangiQtyPesanan.click
    end

end
    
Then(/^Berhasil "(.*)" pesanan$/) do | expected |
    sleep 1

    p expected
    case expected
    when 'ubah'
        expect(@pusathalaman.pawoonorderpage.has_btn_updatePesanan?).to be true
    when 'tambah'
        expect(@pusathalaman.pawoonorderpage.has_txt_x1_produkZ?).to be true
        expect(@pusathalaman.pawoonorderpage.has_txt_produkZ?).to be true
    when 'kurangi'
        expect(@pusathalaman.pawoonorderpage.has_txt_qtyPesanan?).to be true
        qty = @pusathalaman.pawoonorderpage.txt_qtyPesanan.text
        p qty
        if qty == '1'
            p 'Quantity Sesuai'
        else
            p 'Quantity Tidak Sesuai'
            $driver.quit
        end
    end
    p 'Scenario Berhasil'
    sleep 1
end