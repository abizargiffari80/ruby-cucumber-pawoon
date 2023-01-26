def masuk_laporan_dtp()
    find('ul.nav li:nth-child(2) a:nth-child(1) span').click
    find('ul.nav li:nth-child(2) ul li:nth-child(1)').click
    find('div.col-md-12.col-xs-12.page-wrapper div:nth-child(2)').click
    expect(page).to have_content 'Data Transaksi Penjualan'
end