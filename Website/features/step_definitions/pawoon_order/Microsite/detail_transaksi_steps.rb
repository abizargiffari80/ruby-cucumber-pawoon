Given(/^User berada di halaman Pawoon Order #detailtrx$/) do
    expect(@pusathalaman.pawoonorderpage.has_txt_produkZ?).to be true
    
end
    
And(/^User pilih produk #detailtrx$/) do 
    @pusathalaman.pawoonorderpage.txt_produkZ.click
    @pusathalaman.pawoonorderpage.btn_tambahPesanan.click
    
end

When(/^User klik selanjutnya #detailtrx$/) do
    @pusathalaman.pawoonorderpage.btn_selanjutnya.click

end
    
Then(/^User bisa lihat detail transaksi #detailtrx$/) do
    @pusathalaman.pawoonorderpage.btn_lihatDetailTrx.click
    expect(@pusathalaman.pawoonorderpage.has_txt_detailTrx_Subtotal?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_detailTrx_Service?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_detailTrx_Ppn?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_detailTrx_Total?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_detailTrx_jumlahSubtotal?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_detailTrx_jumlahService?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_detailTrx_jumlahPpn?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_detailTrx_jumlahTotal?).to be true
    expect(@pusathalaman.pawoonorderpage.has_btn_PilihMetodePembayaran?).to be true
    p 'Scenario Berhasil'
    sleep 2
    
end