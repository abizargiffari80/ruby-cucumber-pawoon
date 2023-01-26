Given('User berada di halaman produk') do
  sleep 3
    expect(@pusathalaman.dashboard.has_txt_toko_ikan?).to be true
    @pusathalaman.productpage.btn_produk.click
    sleep 5
  end
  
  When('Nama dan harga diambil') do
    #@namaproduk = @pusathalaman.productpage.txt_produk_paling_atas.text
    #dipakein @ agar variable bisa dipanggil di blok lain
    @namaProduk = find('tbody.tbody-striped tr:nth-child(1) td:nth-child(1)').text
    p @namaProduk 
    @hargaProduk = find('tbody.tbody-striped tr:nth-child(1) td:nth-child(3)').text
    p @hargaProduk
  end
  
  Then('Nama dan harga success diambil') do
    expect(@namaProduk).to eql 'PPPocco phone'
    expect(@hargaProduk).to eql 'Rp10.000.000'
  end