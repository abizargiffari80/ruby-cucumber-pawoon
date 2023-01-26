class PoinVoucherPromoPage < Appom::Page

    element :btn_poin, :id, 'com.pawoon.pos.staging:id/action_point'
    element :txtfield_reddempoin, :id, 'com.pawoon.pos.staging:id/eRedeemPoinPawoon'
    element :btn_redeempoin, :id, 'com.pawoon.pos.staging:id/redeem'
    element :txt_jmlhredeemedPoin, :id, 'com.pawoon.pos.staging:id/issued_point'

    # element :btn_titiktiga, :xpath, '//android.widget.TextView[@content-desc="Selebihnya"]'
    element :btn_titiktiga, :uiautomator, 'new UiSelector().className("android.widget.TextView").instance(3)'
    element :btn_voucher, :id, 'com.pawoon.pos.staging:id/btn_tambah_voucher'
    element :txtfield_addvoucher, :id, 'com.pawoon.pos.staging:id/edit_text_voucher'
    element :btn_gunakanVoucher, :id, 'com.pawoon.pos.staging:id/use_voucher'
    element :btn_OK_batalVoucher, :id, 'android:id/button1'
    element :btn_OK_voucherTidakBerlaku, :id, 'android:id/button1'
    element :btn_closeVoucher, :id, 'com.pawoon.pos.staging:id/close'
    element :btn_titiktiga1, :uiautomator, 'new UiSelector().className("android.widget.TextView").instance(4)'

    element :txt_popupVoucher, :id, 'com.pawoon.pos.staging:id/alertTitle'
    element :btn_OK_popupVoucher, :id, 'android:id/button1'

end