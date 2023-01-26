Given(/^User berada di halaman Pawoon Order #trxsesuai$/) do
    expect(@pusathalaman.pawoonorderpage.has_txt_produkZ?).to be true
end
    
When(/^User buat transaksi baru #trxsesuai$/) do
    @pusathalaman.pawoonorderpage.txt_produkZ.click
    @pusathalaman.pawoonorderpage.btn_tambahPesanan.click
    sleep 1
    @pusathalaman.pawoonorderpage.btn_selanjutnya.click
    sleep 1
    #----------
    $nama_produk = @pusathalaman.pawoonorderpage.txt_namaProduk.text
    $harga_produk = @pusathalaman.pawoonorderpage.txt_hargaProduk.text
    #$qty_produk = @pusathalaman.pawoonorderpage.txt_qtyPesanan.text
    @pusathalaman.pawoonorderpage.btn_lihatDetailTrx.click
    
    $subtotal_produk = @pusathalaman.pawoonorderpage.txt_detailTrx_jumlahSubtotal.text
    $service_produk = @pusathalaman.pawoonorderpage.txt_detailTrx_jumlahService.text
    $ppn_produk = @pusathalaman.pawoonorderpage.txt_detailTrx_jumlahPpn.text
    $total_produk = @pusathalaman.pawoonorderpage.txt_detailTrx_jumlahTotal.text

    p $nama_produk
    #p $qty_produk
    p $harga_produk
    p $subtotal_produk
    p $service_produk
    p $ppn_produk
    p $total_produk

    sleep 1
    @pusathalaman.pawoonorderpage.txtField_Nama.send_keys 'Aldo'
    @pusathalaman.pawoonorderpage.txtField_noTlp.send_keys '081211336018'
    @pusathalaman.pawoonorderpage.txtField_Meja.send_keys '1'
    
    @pusathalaman.pawoonorderpage.btn_PilihMetodePembayaran.click
    @pusathalaman.pawoonorderpage.radioBtn_bayarDiKasir.click
    @pusathalaman.pawoonorderpage.btn_bayarSekarang.click
    @pusathalaman.pawoonorderpage.btn_lakukanPembayaranDiKasir.click
    

end
    
Then(/^Transaksi sesuai dengan item yang dipesan di struk #trxsesuai$/) do
    sleep 1
    #expect(@pusathalaman.pawoonorderpage.has_txt_qtyProdukZStruk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_hargaProdukZStruk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_jumlahSubtotalStruk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_jumlahServiceStruk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_jumlahPajakStruk?).to be true
    expect(@pusathalaman.pawoonorderpage.has_txt_jumlahTotalStruk?).to be true
    
    $nama_produkStruk = @pusathalaman.pawoonorderpage.txt_nameProdukStruk.text
    #$qty_produkStruk = @pusathalaman.pawoonorderpage.txt_qtyProdukZStruk.text
    $harga_produkStruk = @pusathalaman.pawoonorderpage.txt_hargaProdukZStruk.text
    $subtotal_produkStruk = @pusathalaman.pawoonorderpage.txt_jumlahSubtotalStruk.text
    $service_produkStruk = @pusathalaman.pawoonorderpage.txt_jumlahServiceStruk.text
    $ppn_produkStruk = @pusathalaman.pawoonorderpage.txt_jumlahPajakStruk.text
    $total_produkStruk = @pusathalaman.pawoonorderpage.txt_jumlahTotalStruk.text

    sleep 1
    p $nama_produkStruk
    #p $qty_produkStruk
    p $harga_produkStruk
    p $subtotal_produkStruk
    p $service_produkStruk
    p $ppn_produkStruk
    p $total_produkStruk
    
    sleep 1


    if $nama_produk == $nama_produkStruk && $harga_produk == $harga_produkStruk && $subtotal_produk == $subtotal_produkStruk && $service_produk == $service_produkStruk && $ppn_produk == $ppn_produkStruk && $total_produk == $total_produkStruk
        p 'Scenario Success'
    else
        p 'Scenario Failed'
        $driver.quit
    end
    sleep 1
end