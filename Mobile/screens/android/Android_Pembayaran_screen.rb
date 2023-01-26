class PembayaranPage < Appom::Page 
    element :btn_saya_mengerti_metod, :id, 'com.pawoon.pos.staging:id/tv_dismiss'
    element :btn_kembali, :id, 'Kembali ke atas'
    element :btn_poin, :id, 'com.pawoon.pos.staging:id/action_point'
    element :btn_cicilan, :id, 'com.pawoon.pos.staging:id/action_installment'
    element :btn_split, :id, 'com.pawoon.pos.staging:id/action_split'
    element :btn_catatan, :id, 'com.pawoon.pos.staging:id/action_note'

    element :btn_tunai, :id, 'com.pawoon.pos.staging:id/btn_payment'
    element :btn_kartu, :id, 'com.pawoon.pos.staging:id/btn_payment'
    element :btn_onlinepayment, :id, 'com.pawoon.pos.staging:id/btn_payment'
    element :btn_custompayment, :id, 'com.pawoon.pos.staging:id/btn_payment'
    element :btn_edc, :id, 'com.pawoon.pos.staging:id/btn_payment'
    element :btn_tunaiclass, :uiautomator, 'new UiSelector().className("android.widget.Button").instance(0)'
    element :btn_kartuclass, :uiautomator, 'new UiSelector().className("android.widget.Button").instance(1)'
    element :btn_onlinepaymentclass, :uiautomator, 'new UiSelector().className("android.widget.Button").instance(2)'
    element :btn_custompaymentclass, :uiautomator, 'new UiSelector().className("android.widget.Button").instance(3)'
    element :btn_edcclass, :uiautomator, 'new UiSelector().className("android.widget.Button").instance(4)'

    element :btn_uangpas, :id, 'com.pawoon.pos.staging:id/btn_suggest_exact_money'
    element :btn_uangsuggest1, :id, 'com.pawoon.pos.staging:id/btn_suggest_1'
    element :btn_uangsuggest2, :id, 'com.pawoon.pos.staging:id/btn_suggest_2'
    element :btn_uangsuggest3, :id, 'com.pawoon.pos.staging:id/btn_suggest_3'
    element :btn_uanglainnya, :id, 'com.pawoon.pos.staging:id/btn_suggest_others'

    element :btn_gopay, :uiautomator, 'new UiSelector().className("android.widget.LinearLayout").instance(1)'
    element :btn_ovo, :uiautomator, 'new UiSelector().className("android.widget.LinearLayout").instance(2)'
    element :btn_dana, :uiautomator, 'new UiSelector().className("android.widget.LinearLayout").instance(3)'

    # element :btn_debitbankX, :uiautomator, 'new UiSelector().className("android.widget.TextView").instance(8)'
    element :btn_debitbankX, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_payment_name").instance(0)'
    element :btn_creditbankX, :uiautomator, 'new UiSelector().resourceId("com.pawoon.pos.staging:id/tv_payment_name").instance(1)'
    # element :btn_creditbankX, :uiautomator, 'new UiSelector().className("android.widget.TextView").instance(9)'

    element :btn_kembali, :id, 'Kembali ke atas'
    element :btn_selesai, :id, 'com.pawoon.pos.staging:id/tvDone'

    element :btn_lihatnanti, :id, 'com.pawoon.pos.staging:id/see_later'
    

end