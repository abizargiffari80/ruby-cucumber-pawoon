class DashboardPage < SitePrism::Page
    #element :txt_toko_ikan, '#user-menu-dropdown span', text: "Hi, Toko Ikan"
    element :txt_nama_toko, '#user-menu-dropdown span'
    element :txt_sales_total, '.text-md.sales-total'
    element :btn_profile_span, '#user-menu-dropdown'
    element :btn_profile, '#notification > li > span:nth-child(2) > ul > li:nth-child(1) > a'
    element :btn_logout, 'li a.logout'
    element :txt_nama_akun, '#account-content ul li:nth-child(2) span'
end