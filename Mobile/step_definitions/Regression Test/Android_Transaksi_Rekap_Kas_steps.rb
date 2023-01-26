Given(/^user berada di homepage #rekapkas$/) do
    waitFor {@app.transaksi.text_produkN1}
    expect(@app.transaksi.text_produkN1.displayed?).to be true

end

And(/^user pilih produk normal #rekapkas$/) do
    @app.transaksi.text_produkN1.click
    begin
        if waitFor {@app.transaksi.has_btn_saya_mengerti_trx}
            @app.transaksi.btn_saya_mengerti_trx.click
        end
    rescue
        p 'element saya mengerti trx not found'
    end
    # p 'pass'
    @app.transaksi.btn_simpan.click
    @app.transaksi.btn_transaksi_tersimpanNew1.click
    # @app.transaksi.btn_transaksi_tersimpan.click
    @app.transaksi.btn_lanjutkan_transaksi.click
    @app.transaksi.btn_bayar.click
end

And(/^user bayar transaksi #rekapkas$/) do
    begin
        if waitFor {@app.pembayaran.btn_saya_mengerti_metod}
            @app.pembayaran.btn_saya_mengerti_metod.click
        end
    rescue
        p 'element saya mengerti metode pembayaran not found'
    end
    @app.pembayaran.btn_tunai.click
    @app.pembayaran.btn_uangpas.click

    @app.pembayaran.btn_selesai.click
    sleep(2)
    begin
        if waitFor {@app.pembayaran.btn_lihatnanti}
            @app.pembayaran.btn_lihatnanti.click
        end
    rescue
        p 'element lihat nanti laporan not found'
    end
    sleep(2)
    @app.transaksi.btn_drawer.click
    @app.transaksi.btn_updatedata.click
    sleep(15)

end

When(/^user rekap kas #rekapkas$/) do
    @app.transaksi.btn_drawer.click
    @app.transaksi.btn_setting.click
    @app.rekapkas.btn_lainnya.click
    @app.rekapkas.btn_toggle_rekapkas.click
    sleep(5)
    @app.rekapkas.btn_back.click

    sleep(2)
    @app.transaksi.btn_drawer.click
    @app.transaksi.btn_rekapkas.click
    @app.rekapkas.btn_Rekap_Kas.click
    sleep(7)
    
    #get text & clean
    el_tunai = @app.rekapkas.txt_jumlahTunai
    jmlh_tunai = el_tunai.text
    jmlh_tunai = jmlh_tunai[2..-1]
    jmlh_tunai = jmlh_tunai.delete! '.'
    p jmlh_tunai

    el_kartu = @app.rekapkas.txt_jumlahKartu
    jmlh_kartu = el_kartu.text
    jmlh_kartu = jmlh_kartu[2..-1]
    jmlh_kartu = jmlh_kartu.delete! '.'
    p jmlh_kartu

    begin
        if waitFor {@app.rekapkas.txt_jumlahDebitX}
            el_debit = @app.rekapkas.txt_jumlahDebitX
            jmlh_debit = el_debit.text
            jmlh_debit = jmlh_debit[2..-1]
            jmlh_debit = jmlh_debit.delete! '.'
            p jmlh_debit
        
            el_credit = @app.rekapkas.txt_jumlahCreditX
            jmlh_credit = el_credit.text
            jmlh_credit = jmlh_credit[2..-1]
            jmlh_credit = jmlh_credit.delete! '.'
            p jmlh_credit
        end
    rescue
        p 'element DebitX & CreditX not found'
    end



    #input without set
    @app.rekapkas.txtField_tunai.click
    fill_number_text(jmlh_tunai)

    @app.rekapkas.txtField_kartu.click
    fill_number_text(jmlh_kartu)

    begin
        if waitFor {@app.rekapkas.txtField_debitX}
            @app.rekapkas.txtField_debitX.click
            fill_number_text(jmlh_debit)
        
            @app.rekapkas.txtField_creditX.click
            fill_number_text(jmlh_credit)
        end
    rescue
        p 'element DebitX & CreditX not found'
    end


     # assert
    el_total = @app.rekapkas.txt_jumlahTotal
    jmlh_total = el_total.text
    el_harusnya = @app.rekapkas.txt_totalHarusnya
    jmlh_harusnya = el_harusnya.text
    p jmlh_total
    p jmlh_harusnya

    if jmlh_total == jmlh_harusnya
        p 'Total Rekap Kas Sesuai'
    else
        p 'Total Rekap Kas Tidak Sesuai'
        close_app
    end
    sleep(2)
    @app.rekapkas.btn_Simpan.click
    sleep(5)
    @app.rekapkas.btn_SayaMengerti.click
    @app.rekapkas.btn_Tidak.click
    @app.rekapkas.btn_back.click

end

Then(/^user sukses #rekapkas$/) do
    expect(@app.transaksi.text_produkN1.displayed?).to be true
    p 'Transaksi Berhasil'

end