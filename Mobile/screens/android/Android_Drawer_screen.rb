class DrawerPage < Appom::Page

    element :btn_drawer, :accessibility_id, 'Buka panel navigasi'
    element :btn_updatedata, :id, 'com.pawoon.pos.staging:id/btn_sync'
    element :btn_transaksibaru, :id, 'com.pawoon.pos.staging:id/fragment_transaction_home'
    element :btn_riwayattransaksi, :id, 'com.pawoon.pos.staging:id/action_transaction_history'
    element :btn_rekapkas, :id, 'com.pawoon.pos.staging:id/action_cash_management_old'
    element :btn_tambahproduk, :id, 'com.pawoon.pos.staging:id/action_manage_product'
    element :btn_laporan, :id, 'com.pawoon.pos.staging:id/action_report'
    element :btn_operator, :id, 'com.pawoon.pos.staging:id/action_operator'
    element :btn_absensi, :id, 'com.pawoon.pos.staging:id/action_absences'
    element :btn_setting, :id, 'com.pawoon.pos.staging:id/action_setting'

    element :btn_back_RT, :accessibility_id, 'Kembali ke atas'
    element :btn_cetak, :id, 'com.pawoon.pos.staging:id/tvButtonPrint'
    element :btn_batalkan_trx, :id, 'com.pawoon.pos.staging:id/tvButtonVoid'
    element :btn_batalkan_trx_confirm, :id, 'com.pawoon.pos.staging:id/cancel_order'
    element :text_batal_trx, :id, 'com.pawoon.pos.staging:id/tvVoided'
    

end