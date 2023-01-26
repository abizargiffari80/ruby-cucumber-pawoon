Feature: Android Transaksi Regress

    # Scenario: Transaksi Produk
    #     Given user berada di homepage #transaksi
    #     And user pilih produk normal #transaksi
    #     When user bayar dengan "<metodepembayaran>" #transaksi
    #     Then user sukses bayar #transaksi
    #     Examples:
    #         | metodepembayaran |
    #         | tunai |
    #         | kartu |
    #         | CP debit |
    #         | CP credit |

    # Scenario: Transaksi Produk Void
    #     Given user berada di homepage #transaksivoid
    #     And user pilih produk normal #transaksivoid
    #     And user bayar dengan "<metodepembayaran>" #transaksivoid
    #     When user batalkan transaksi #transaksivoid
    #     Then user sukses batalkan transaksi #transaksivoid
    #     Examples:
    #         | metodepembayaran |
    #         | tunai |
    #         | kartu |
    #         | CP debit |
    #         | CP credit |

    # Scenario: Transaksi Meja
    #     Given user berada di homepage #meja
	#     And user pilih meja #meja
    #     And user pilih produk normal #meja
	#     And user "<action>" meja #meja
    #     When user bayar dengan uang tunai pas "<actions>" #meja
    #     Then user sukses bayar #meja
    #     Examples:
    #         | action | actions |
    #         | pindah | move |
    #         | pisah | seperate |

    Scenario: Transaksi Produk Normal Nops Variant Varops
        Given user berada di homepage #produkopsivar
        And user pilih produk #produkopsivar
        When user bayar dengan tunai #produkopsivar
        Then user sukses bayar #produkopsivar

    # Scenario: Transaksi Produk Split
    #     Given user berada di homepage #split
    #     And user pilih produk normal #split
	#     And user split "<metode>" #split
    #     When user bayar transaksi "<method>" #split
    #     Then user sukses bayar #split
    #     Examples:
    #         | metode | method |
    #         | tagihan | bill |
    #         | pembayaran | payment |

    Scenario: Transaksi Produk dan Pelanggan
        Given user berada di homepage #produkpelanggan
	    And user pilih pelanggan #produkpelanggan
        And user pilih produk normal #produkpelanggan
        When user bayar dengan uang tunai pas #produkpelanggan
        Then user sukses bayar #produkpelanggan

    # Scenario: Transaksi Pilih Meja Dan Pelanggan
    #     Given user berada di homepage #mejapelanggan
	#     And user pilih pelanggan #mejapelanggan
	#     And user pilih meja #mejapelanggan
    #     And user pilih produk normal #mejapelanggan
    #     When user bayar dengan uang tunai pas #mejapelanggan
    #     Then user sukses bayar #mejapelanggan

    # Scenario: Transaksi Pilih Meja Pelanggan Dan Poin
    #     Given user berada di homepage #mejapelangganpoin
	#     And user pilih pelanggan #mejapelangganpoin
	#     And user pilih meja #mejapelangganpoin
    #     And user pilih produk normal #mejapelangganpoin
	#     And user pilih poin #mejapelangganpoin
    #     When user bayar dengan uang tunai pas #mejapelangganpoin
    #     Then user sukses bayar #mejapelangganpoin

    # Scenario: Transaksi Pilih Meja Pelanggan Dan Voucher
    #     Given user berada di homepage #mejapelangganvoucher
	#     And user pilih pelanggan #mejapelangganvoucher
	#     And user pilih meja #mejapelangganvoucher
    #     And user pilih produk normal #mejapelangganvoucher
	#     And user apply voucher #mejapelangganvoucher
    #     When user bayar dengan uang tunai pas #mejapelangganvoucher
    #     Then user sukses bayar #mejapelangganvoucher


    # Scenario: Transaksi Cicilan
    #     Given user berada di homepage #cicilan
    #     And user pilih pelanggan #cicilan
    #     And user pilih produk normal #cicilan
	#     And user pilih cicilan #cicilan
    #     When user bayar transaksi #cicilan
    #     Then user sukses bayar #cicilan

    # Scenario: Transaksi Promo Otomatis
    #     Given user berada di homepage #promootomatis
    #     And user pilih produk normal #promootomatis
	#     And user apply promo otomatis #promootomatis
    #     When user bayar semua transaksi #promootomatis
    #     Then user sukses bayar #promootomatis

    # Scenario: Transaksi Promo Khusus
    #     Given user berada di homepage #promokhusus
    #     And user pilih produk normal #promokhusus
	#     And user apply promo khusus #promokhusus
    #     When user bayar semua transaksi #promokhusus
    #     Then user sukses bayar #promokhusus

    # Scenario: Transaksi Custom Ammount Void
    #     Given user berada di homepage #customammountvoid
    #     And user pilih produk normal #customammountvoid
    #     And user input custom ammount dan catatan #customammountvoid
    #     And user bayar dengan uang tunai pas #customammountvoid
    #     And user sukses bayar #customammountvoid
    #     When user batalkan transaksi #customammountvoid
    #     Then user sukses batalkan transaksi #customammountvoid

    # Scenario: Transaksi Custom Ammount
    #     Given user berada di homepage #customammount
    #     And user pilih produk normal #customammount
    #     And user input custom ammount dan catatan #customammount
    #     When user bayar dengan uang tunai pas #customammount
    #     Then user sukses bayar #customammount

    # Scenario: Transaksi Rekap Kas
    #     Given user berada di homepage #rekapkas
    #     And user pilih produk normal #rekapkas
    #     And user bayar transaksi #rekapkas
	#     When user rekap kas #rekapkas
	#     Then user sukses #rekapkas