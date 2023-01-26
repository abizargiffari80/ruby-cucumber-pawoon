class ProductPage < SitePrism::Page
    element :btn_produk, 'ul.nav li:nth-child(4) a:nth-child(1) span'
    element :txt_produk_paling_atas, 'tbody.tbody-striped tr:nth-child(1) td:nth-child(1)'
end