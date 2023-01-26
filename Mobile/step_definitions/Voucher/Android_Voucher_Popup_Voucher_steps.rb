Given(/^user berada di homepage #popupvoucher$/) do 
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true

    @app.pelanggan.btn_pelanggan.click
    @app.pelanggan.btn_pelangganAutomation.click
    @app.pelanggan.btn_pilihpelanggan.click

    @app.transaksi.text_produkN1.click
    begin
        if waitFor {@app.transaksi.has_btn_saya_mengerti_trx}
            @app.transaksi.btn_saya_mengerti_trx.click
        end
    rescue
        p 'element saya mengerti trx not found'
    end

end

When(/^user redeem voucher "(.*)" #popupvoucher$/) do | tipe |
    @app.poinvoucherpromo.btn_titiktiga.click
    @app.poinvoucherpromo.btn_voucher.click
    p tipe
    case tipe
    when 'qwerty'
        @app.poinvoucherpromo.txtfield_addvoucher.send_keys "qwerty"
    when 'vouchabis'
        @app.poinvoucherpromo.txtfield_addvoucher.send_keys "vouchabis"
    when 'vouctidakaktif'
        @app.poinvoucherpromo.txtfield_addvoucher.send_keys "vouctidakaktif"
    when 'voucinvalid'
        @app.poinvoucherpromo.txtfield_addvoucher.send_keys "voucinvalid"
    end
    
    sleep 1
    @app.transaksi.btn_gunakanVoucher.click
    sleep(1)
end

Then(/^system tampilkan popup voucher "(.*)" #popupvoucher$/) do | popup |

    p popup
    case popup
    when 'tidakvalid'
        txt_popup = @app.poinvoucherpromo.txt_popupVoucher
        textPopup = txt_popup.text
        p textPopup
        begin
            if textPopup == 'Kode voucher tidak valid.'
                p 'scenario berhasil'
            end
        rescue
            p 'scenario gagal'
        end
    when 'sudahhabis'
        txt_popup = @app.poinvoucherpromo.txt_popupVoucher
        textPopup = txt_popup.text
        p textPopup
        begin
            if textPopup == 'Kuota Voucher Sudah Habis'
                p 'scenario berhasil'
            end
        rescue
            p 'scenario gagal'
        end
    when 'tidakaktif'
        txt_popup = @app.poinvoucherpromo.txt_popupVoucher
        textPopup = txt_popup.text
        p textPopup
        begin
            if textPopup == 'Voucher tidak aktif.'
                p 'scenario berhasil'
            end
        rescue
            p 'scenario gagal'
        end
    when 'tidakberlaku'
        txt_popup = @app.poinvoucherpromo.txt_popupVoucher
        textPopup = txt_popup.text
        p textPopup
        begin
            if textPopup == 'Kode Voucher Tidak Berlaku'
                p 'scenario berhasil'
            end
        rescue
            p 'scenario gagal'
        end
    end

    sleep(2)
    @app.poinvoucherpromo.btn_OK_popupVoucher.click

    sleep(1)
    $driver.press_keycode 4
    
end