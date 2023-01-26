Feature: Android Transaksi

    Scenario: Transaksi Produk Normal Uang Pas
        Given user access homepage transaksi normal Uang Pas
        When user tap produk Uang Pas
        And user klik simpan dan bayar Uang Pas
        And user pilih metode pembayaran tunai Uang Pas
        And user klik selesai Uang Pas
        And user klik update data Uang Pas
        Then user berhasil melakukan transaksi Uang Pas

    Scenario: Transaksi Produk Normal Nops Variant Varops
        Given user access homepage transaksi NNVV
        When user tap produk NNVV
        And user klik simpan dan bayar NNVV
        And user pilih metode pembayaran tunai NNVV
        And user klik selesai NNVV
        And user klik update data NNVV
        Then user berhasil melakukan transaksi NNVV
        
    Scenario: Transaksi Produk Normal Kartu
        Given user access homepage transaksi normal Kartu
        When user tap produk Kartu
        And user klik simpan dan bayar Kartu
        And user pilih metode pembayaran kartu Kartu
        And user klik selesai Kartu
        And user klik update data Kartu
        Then user berhasil melakukan transaksi Kartu

    Scenario: Transaksi Produk Normal Custom Payment Credit
        Given user access homepage transaksi normal CPCredit
        When user tap produk CPCredit
        And user klik simpan dan bayar CPCredit
        And user pilih metode pembayaran custom payment credit CPCredit
        And user klik selesai CPCredit
        And user klik update data CPCredit
        Then user berhasil melakukan transaksi CPCredit
    
    Scenario: Transaksi Produk Normal Custom Payment Debit
        Given user access homepage transaksi normal CPDebit
        When user tap produk CPDebit
        And user klik simpan dan bayar CPDebit
        And user pilih metode pembayaran custom payment debit CPDebit
        And user klik selesai CPDebit
        And user klik update data CPDebit
        Then user berhasil melakukan transaksi CPDebit
    
    Scenario: Transaksi Produk Normal Uang Pas Void
        Given user access homepage transaksi normal Uang Pas Void
        When user tap produk Uang Pas Void
        And user klik simpan dan bayar Uang Pas Void
        And user pilih metode pembayaran tunai Uang Pas Void
        And user klik selesai Uang Pas Void
        And user klik update data Uang Pas Void
        And user klik void transaksi Uang Pas Void
        And user klik update data lagi Uang Pas Void
        Then user berhasil melakukan transaksi Uang Pas Void

    Scenario: Transaksi Produk Normal Kartu Void
        Given user access homepage transaksi normal Kartu Void
        When user tap produk Kartu Void
        And user klik simpan dan bayar Kartu Void
        And user pilih metode pembayaran kartu Kartu Void
        And user klik selesai Kartu Void
        And user klik update data Kartu Void
        And user klik void transaksi Kartu Void
        And user klik update data lagi Kartu Void
        Then user berhasil melakukan transaksi Kartu Void

    Scenario: Transaksi Produk Normal Custom Payment Credit Void
        Given user access homepage transaksi normal CPCredit Void
        When user tap produk CPCredit Void
        And user klik simpan dan bayar CPCredit Void
        And user pilih metode pembayaran custom payment credit CPCredit Void
        And user klik selesai CPCredit Void
        And user klik update data CPCredit Void
        Then user berhasil melakukan transaksi CPCredit Void
    
    Scenario: Transaksi Produk Normal Custom Payment Debit Void
        Given user access homepage transaksi normal CPDebit Void
        When user tap produk CPDebit Void
        And user klik simpan dan bayar CPDebit Void
        And user pilih metode pembayaran custom payment debit CPDebit Void
        And user klik selesai CPDebit Void
        And user klik update data CPDebit Void
        Then user berhasil melakukan transaksi CPDebit Void

    Scenario: Transaksi Pindah Meja
        Given user access homepage transaksi Pindah Meja
        When user pilih meja Pindah Meja
        And user tap produk Pindah Meja
        And user klik simpan dan lanjutkan transaksi Pindah Meja
        And user Pindah Meja
        And user klik bayar Pindah Meja
        And user pilih metode pembayaran tunai Pindah Meja
        And user klik selesai Pindah Meja
        And user klik update data Pindah Meja
        Then user berhasil melakukan transaksi Pindah Meja

    Scenario: Transaksi Pisah Meja
        Given user access homepage transaksi Pisah Meja
        When user pilih meja Pisah Meja
        And user tap dua produk Pisah Meja
        And user klik simpan dan lanjutkan transaksi Pisah Meja
        And user Pisah Meja
        And user lanjutkan transaksi pertama
        And user klik bayar transaksi pertama Pindah Meja
        And user pilih metode pembayaran tunai transaksi pertama Pisah Meja
        And user klik selesai transaksi pertama Pisah Meja
        And user lanjutkan transaksi kedua
        And user klik bayar transaksi kedua Pindah Meja
        And user pilih metode transaksi kedua pembayaran tunai Pisah Meja
        And user klik selesai transaksi kedua Pisah Meja
        And user klik update data Pisah Meja
        Then user berhasil melakukan transaksi Pisah Meja

    Scenario: Transaksi Pilih Meja Dan Pelanggan
        Given user access homepage transaksi PMDP
        When user pilih pelanggan transaksi PMDP
        And user pilih meja transaksi PMDP
        And user tap produk transaksi PMDP
        And user klik simpan dan bayar transaksi PMDP
        And User Pilih Metode Pembayaran transaksi PMDP
        And user klik selesai transaksi PMDP
        And user klik update data transaksi PMDP
        Then user berhasil melakukan transaksi PMDP

    Scenario: Transaksi Pilih Meja Pelanggan Dan Poin
        Given user access homepage transaksi PMPDP
        When user pilih pelanggan transaksi PMPDP
        And user pilih meja transaksi PMPDP
        And user tap produk transaksi PMPDP
        And user klik simpan dan bayar transaksi PMPDP
        And user masukan poin transaksi PMPDP
        And User Pilih Metode Pembayaran transaksi PMPDP
        And user klik selesai transaksi PMPDP
        And user klik update data transaksi PMPDP
        Then user berhasil melakukan transaksi PMPDP

       
     Scenario: Transaksi Pilih Meja Pelanggan Dan Voucher
        Given user access homepage transaksi PMPDV
        When user pilih pelanggan transaksi PMPDV
        And user pilih meja transaksi PMPDV
        And user tap produk transaksi PMPDV
        And user masukan voucher transaksi PMPDV
        And user klik simpan dan bayar transaksi PMPDV
        And User Pilih Metode Pembayaran transaksi PMPDV
        And user klik selesai transaksi PMPDV
        And user klik update data transaksi PMPDV
        Then user berhasil melakukan transaksi PMPDV

    Scenario: Transaksi Produk Split Payment
        Given user access homepage transaksi normal Split Payment
        When user tap produk Split Payment
        And user klik simpan dan bayar Split Payment
        And user pilih Split Payment
        And user pilih metode pembayaran Split Payment
        And user klik lanjutkan pembayaran Split Payment
        And user pilih metode pembayaran Kedua Split Payment
        And user klik selesai Split Payment
        And user klik update data Split Payment
        Then user berhasil melakukan transaksi Split Payment

        
    Scenario: Transaksi Produk Split Bill
        Given user access homepage transaksi normal Split Bill
        When user tap produk Split Bill
        And user klik simpan dan bayar Split Bill
        And user pilih Split Bill
        And user pilih metode pembayaran tunai Split Bill
        And user klik selesai Split Bill
        And user lanjutkan Split Bill
        And user pilih metode pembayaran tunai Kedua Split Bill
        And user klik selesai Kedua Split Bill
        And user klik update data Split Bill
        Then user berhasil melakukan transaksi Split Bill

    Scenario: Transaksi Produk dan Pelanggan
        Given user access homepage transaksi PDP
        When user pilih pelanggan baru transaksi PDP
        And user tap produk PDP
        And user klik simpan dan lanjutkan transaksi PDP
        And user pilih metode pembayaran transaksi PDP
        And user klik selesai transaksi PDP
        And user klik update data PDP
        Then user berhasil melakukan transaksi PDP

    Scenario: Transaksi Cicilan
        Given user access homepage transaksi Cicilan
        When user tap produk Cicilan
        And user pilih pelanggan transaksi Cicilan
        And user klik simpan dan lanjutkan transaksi Cicilan
        And user pilih Cicilan
        And user pilih simpan Cicilan
        And user pilih metode pembayaran transaksi pertama Cicilan
        And user klik selesai transaksi pertama Cicilan
        And user lanjutkan transaksi Cicilan
        And user pilih metode pembayaran transaksi kedua Cicilan
        And user klik selesai transaksi kedua Cicilan
        And user klik update data Cicilan
        Then user berhasil melakukan transaksi Cicilan

    Scenario: Transaksi Promo Otomatis
        Given user access homepage transaksi Promo Otomatis
        When user berhasil transaksi Promo Minimal Qty Persen
        And user berhasil transaksi Promo Minimal Qty RP
        And user berhasil transaksi Promo Minimal Ammount Rp
        And user berhasil transaksi Promo Minimal Ammount Persen
        And user berhasil transaksi Promo A Get B
        And user berhasil transaksi Promo AB Get C
        And user berhasil transaksi Promo A Get B Berlaku Kelipatan
        And user berhasil transaksi Promo A Get B Berdasarkan Kategori
        And user berhasil transaksi Promo Bundling
        Then user berhasil melakukan transaksi Promo Otomatis

    Scenario: Transaksi Promo Khusus
        Given user access homepage transaksi PK
        When user tap produk POCERRP PK
        And user pilih diskon POCERRP PK
        And user klik simpan dan lanjutkan transaksi POCERRP PK
        And user pilih metode pembayaran transaksi POCERRP PK
        And user klik selesai transaksi POCERRP PK
        When user tap produk POCERPERSEN PK
        And user pilih diskon POCERPERSEN PK
        And user klik simpan dan lanjutkan transaksi POCERPERSEN PK
        And user pilih metode pembayaran transaksi POCERPERSEN PK
        And user klik selesai transaksi POCERPERSEN PK
        When user tap produk RP PK
        And user pilih diskon RP PK
        And user klik simpan dan lanjutkan transaksi RP PK
        And user pilih metode pembayaran transaksi RP PK
        And user klik selesai transaksi RP PK
        When user tap produk PERSEN PK
        And user pilih diskon PERSEN PK
        And user klik simpan dan lanjutkan transaksi PERSEN PK
        And user pilih metode pembayaran transaksi PERSEN PK
        And user klik selesai transaksi PERSEN PK
        And user klik update data PK
        Then user berhasil melakukan transaksi PK

    Scenario: Transaksi Rekap Kas
        Given user access homepage transaksi normal Rekap Kas
        When user tap produk Rekap Kas
        And user klik simpan dan bayar Rekap Kas
        And user pilih metode pembayaran tunai Rekap Kas
        And user klik selesai Rekap Kas
        And user klik update data Rekap Kas
        And user aktivasi Rekap Kas
        And user Rekap Kas
        Then user berhasil melakukan transaksi Rekap Kas   

