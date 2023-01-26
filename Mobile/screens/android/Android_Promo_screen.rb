class PromoPage < Appom::Page

    element :btn_simpan, :id, 'com.pawoon.pos.staging:id/ctvSave'
    element :btn_persen, :id, 'com.pawoon.pos.staging:id/ctvPercent'
    element :btn_rupiah, :id, 'com.pawoon.pos.staging:id/ctvRupiah'
    element :txtField_diskonvalue, :id, 'com.pawoon.pos.staging:id/cetDiscountValue'
    element :btn_POCERRP, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/item_name").instance(0)'
    element :btn_POCERPERSEN, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/item_name").instance(1)'

    element :btn_OK, :id, 'android:id/button1'
    element :btn_diskon, :id, 'com.pawoon.pos.staging:id/btn_tambah_diskon'
   

end
