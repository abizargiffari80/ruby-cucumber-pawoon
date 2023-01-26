Feature: Android Voucher

    Scenario: Transaksi Voucher Dengan Fitur Lain
        Given user berada di homepage dan sudah memilih produk pelanggan dan voucher #trxpoincameja
        And user pilih "<trxdengan>" #trxpoincameja
        When user bayar uang pas #trxpoincameja
        Then transaksi voucher berhasil #trxpoincameja
        Examples:
            | trxdengan | 
            | poin | 
            | customammount | 
            # | meja | 
            
    Scenario: Transaksi produk Voucher
        Given user berada di homepage #produk
        And user pilih pelanggan #produk
        And user pilih "<produk>" #produk
        And user redeem voucher #produk
        When user bayar uang pas #produk
        Then transaksi normal voucher berhasil #produk
        Examples:
            | produk |
            | normal | 
            | normalopsi | 
            | variant| 
            | variantopsi| 
            | semua| 

    Scenario: Transaksi Voucher Tidak Bisa Void
        Given user berada di homepage dan ada transaksi voucher sukses #tidakbisavoid
        When user ke riwayat transaksi #tidakbisavoid
        Then button void disabled #tidakbisavoid

    Scenario: Transaksi Produk Dan Voucher Lebih Dari Dan Kurang Dari Subtotal
        Given user berada di homepage #><subtotal
        And user pilih pelanggan #><subtotal
        And user pilih produk normal #><subtotal
        And user redeem voucher "<jumlah>" #><subtotal
        When user bayar uang pas #><subtotal
        Then transaksi normal voucher berhasil #><subtotal
        Examples:
            | jumlah |
            | 100rb | 
            | 100 | 

    Scenario: Transaksi Produk Dan Voucher Tidak Bisa Split Bill Dan Payment
        Given user berada di homepage #splitbillpayment
        And user pilih pelanggan #splitbillpayment
        And user pilih produk normal #splitbillpayment
        And user redeem voucher #splitbillpayment
        When user pilih "<split>" #splitbillpayment 
        Then transaksi voucher tidak bisa split bill #splitbillpayment
        Examples:
            | split |
            | bill | 
            | payment | 

    Scenario: Apply Voucher Outlet
        Given user berada di homepage #voucheroutlet
        And user pilih pelanggan #voucheroutlet
        And user pilih produk normal #voucheroutlet
        When user redeem voucher "<outlet>" #voucheroutlet
        Then result apply voucher dari outlet lain #voucheroutlet
        Examples:
            | outlet | 
            | lain | 
            | sendiri | 
            | all | 

    Scenario: Bisa Apply Voucher Dan Diskon Item Manual
        Given user berada di homepage #diskonmanualotomatis
        And user pilih pelanggan #diskonmanualotomatis
        And user pilih produk normal #diskonmanualotomatis
        And user tambah diskon "<tipe>" #diskonmanualotomatis
        When user apply voucher #diskonmanualotomatis
        Then bisa apply voucher dan diskon item manual #diskonmanualotomatis
        Examples:
            | tipe | 
            | manual | 
            | otomatis | 

    Scenario: Tidak Bisa Apply Voucher Jika Transaksi Cicilan
        Given user berada di homepage #vouchercicilan
        And user pilih pelanggan #vouchercicilan
        And user pilih produk normal #vouchercicilan
        And user apply voucher #vouchercicilan
        When user pilih cicilan #vouchercicilan
        Then tidak bisa apply voucher jika transaksi cicilan #vouchercicilan

    Scenario: Bisa Batalkan Voucher
        Given user berada di homepage dan sudah memilih produk dan voucher #vouchervoid
        When user batalkan voucher #vouchervoid
        Then bisa batalkan voucher #vouchervoid

    Scenario: Validasi Batalkan Voucher Muncul Jika Klik Batalkan Transaksi
        Given user berada di homepage dan sudah memilih produk pelanggan dan voucher #validasibatalkanvoucher
        When user "<action>" #validasibatalkanvoucher
        Then validasi muncul "<klik>" #validasibatalkanvoucher
        Examples:
            | action | klik |
            | bataltrx | klikproduk |
            | hapusproduk | klikkembali |
            | gantipelanggan | klikback |

    Scenario: Diskon Transaksi Disabled Ketika Apply Voucher
        Given user berada di homepage dan sudah memilih produk pelanggan dan voucher #diskondisabled
        When user klik titik 3 #diskondisabled
        Then button diskon disabled #diskondisabled

    Scenario: Transaksi Voucher Bisa Bayar Dengan Metode Pembayaran
        Given user berada di homepage dan sudah memilih produk pelanggan dan voucher #metodepembayaran
        When user bayar "<metode>" #metodepembayaran
        Then transaksi voucher berhasil #metodepembayaran
        Examples:
            | metode | 
            | tunai | 
            | kartu | 
            | cpdebit | 
            | cpcredit |

    Scenario: Voucher Bisa Digunakan Kembali
        Given user berada di homepage dan sudah memilih produk pelanggan dan voucher #reusedvoucher
        And user batalkan voucher #reusedvoucher
        When user gunakan voucher kembali #reusedvoucher
        Then voucher bisa digunakan kembali #reusedvoucher

    Scenario: Voucher Hilang Saat Batalkan Voucher
        Given user berada di homepage dan sudah memilih produk pelanggan dan voucher #batalkanvoucher
        When user batalkan voucher #batalkanvoucher
        Then voucher hilang di "<tempat>" #batalkanvoucher
        Examples:
            | tempat | 
            | cart | 
            | trxtersimpan |

    Scenario: Popup Voucher
        Given user berada di homepage #popupvoucher
        When user redeem voucher "<tipe>" #popupvoucher
        Then system tampilkan popup voucher "<popup>" #popupvoucher
        Examples:
            | tipe | popup |
            | qwerty | tidakvalid |
            | vouchabis | sudahhabis |
            | vouctidakaktif | tidakaktif |
            | voucinvalid | tidakberlaku |