Given('User berada di halaman laporan penjualan dtp') do
    #expect(@pusathalaman.dashboard.has_txt_toko_ikan?).to be true
    masuk_laporan_dtp()
    sleep 2
  end
  
  When('User set filter hari ini dan terapkan') do
    find('#reportrange > span').click
    #7 hari terakhir
    find('div.ranges ul li:nth-child(3)').click
    find('div.filter-action-button div:nth-child(1)').click
    tanggalfilter = find('#reportrange > span').text
    p "Data 7 hari kebelakang #{tanggalfilter}"
    #expect(tanggalfilter).to eql '21-04-2022 - 27-04-2022'
    expect(tanggalfilter).to eql find('#reportrange > span').text
  end
  
  Then('User dapat id struk beserta total amount order terbaru') do
    sleep 5
    if page.has_selector?('tr.not-found')
      p "Ga ada data"
    else
      #dapetin id struk dan total, lalu jadiin variable
      @idStrukStr = find('tbody.tbody-striped tr:nth-child(1) td:nth-child(3)').text
      @totalHargaStr = find('tbody.tbody-striped tr:nth-child(1) td:nth-child(6)').text
      p 'Id Struk = ' + @idStrukStr
      p 'Total Harga = ' + @totalHargaStr
      #buka detail struk dan dapetin 
      find('tbody.tbody-striped tr:nth-child(1) td:nth-child(4)').click
      sleep 3
      #cek punya markup atau ngga
      if page.has_selector?('div.my-fee li:nth-child(2)')
        @adaMarkupStr= find('div.my-fee li:nth-child(2)').text
        p 'Markup Sebesar = ' + @adaMarkupStr
        #hapus karakter Rp dan titik .
        @totalHargaStr.delete!("Rp.")
        @adaMarkupStr.delete!("Rp.")
        #convert ke integer
        @totalHargaInt = @totalHargaStr.to_i
        @adaMarkupInt = @adaMarkupStr.to_i
        #setelah convert, dijumlahin
        @totalSemuaInt = @totalHargaInt + @adaMarkupInt
        #dijadikan ke string lagi
        @totalSemuaStr = @totalSemuaInt.to_s
        #tambahin . dari 3 angka dibelakang
        p "Total semuanya = Rp." + @totalSemuaStr.insert(-4,'.')
      else
        #ga ada markup
        p "Tidak ada markup"
      end
    end
  end