class OutletPage < SitePrism::Page
    element :btn_outlet, 'ul.nav li:nth-child(9) a:nth-child(1) span'
    element :btn_tambah_outlet, '#create-outlet'
    element :txtField_Nama_Outlet, '#modal-form-outlet > div > div > div.modal-scroll-panel > div.modal-body > form > div:nth-child(2) > div > input'
    element :txtField_KotaKab, '#modal-form-outlet > div > div > div.modal-scroll-panel > div.modal-body > form > div:nth-child(3) > div > span > span.selection > span'
    element :txtField_searchKota, 'body > span > span > span.select2-search.select2-search--dropdown > input'
    element :txt_Kota, 'li.select2-results__option select2-results__option--highlighted'
    element :list_Kota, 'select2-city-0k-results'

    element :txtField_noTlp, '#modal-form-outlet > div > div > div.modal-scroll-panel > div.modal-body > form > div:nth-child(5) > div > input'
    element :txtField_pajakServices, '#modal-form-outlet > div > div > div.modal-scroll-panel > div.modal-body > form > div:nth-child(6) > div > span > span > div > button'
    element :txt_selectAllPajak, '#modal-form-outlet > div > div > div.modal-scroll-panel > div.modal-body > form > div:nth-child(6) > div > span > span > div > ul > li.multiselect-item.multiselect-all > a > label > input'
    element :txtField_importProduk, '#import_product_block > div > span > span.selection > span'
    element :txtField_tipePenjualan, '#select-sales-type > div > span > span > div > button'
    element :txt_selectAllTP, '#select-sales-type > div > span > span > div > ul > li.multiselect-item.multiselect-all > a > label > input'
    element :btn_Simpan, '#modal-form-outlet > div > div > div.row > div > div.action-button.col-sm-6.col-xs-6 > button.btn.btn-sm.btn-custom.fill-blue.action-submit'
    element :btn_Ok, '#modal-info-notification > div > div > div.modal-body.text-center > div > div > div > button'

    element :txt_namaOutletPertama, '#table-outlet > tbody > tr:nth-child(1) > td:nth-child(1)'

end