Feature: Android Poin

    Scenario: Validasi Pilih Pelanggan
        Given user berada di homepage #validasipilihpelanggan
        And user pilih produk #validasipilihpelanggan
        When user pilih poin #validasipilihpelanggan
        Then system menampilkan popup validasi pilih pelanggan dahulu #validasipilihpelanggan

    Scenario: Berhasil Memilih Pelanggan
        Given user berada di homepage #pilihpelanggan
        And user pilih produk #pilihpelanggan
        And user pilih poin #pilihpelanggan
        When user pilih pelanggan #pilihpelanggan
        Then user berhasil memilih pelanggan #pilihpelanggan

    Scenario: Jumlah Poin Pelanggan
        Given user berada di homepage #jumlahpoinpel
        And user pilih produk #jumlahpoinpel
        And user pilih pelanggan #jumlahpoinpel
        When user pilih poin #jumlahpoinpel
        Then system menampilkan popup jumlah poin pelanggan #jumlahpoinpel

    Scenario: Berhasil Menggunakan Poin
        Given user berada di homepage #berhasilgunakanpoin
        And user pilih produk #berhasilgunakanpoin
        And user pilih pelanggan #berhasilgunakanpoin
        And user pilih poin #berhasilgunakanpoin
        When user input poin #berhasilgunakanpoin
        Then user berhasil menggunakan poin #berhasilgunakanpoin

    Scenario: Popup Poin Tidak Cukup
        Given user berada di homepage #popuppoin
        And user pilih produk #popuppoin
        And user pilih pelanggan baru #popuppoin
        When user pilih poin #popuppoin
        Then system menampilkan popup poin tidak cukup #popuppoin

    Scenario: Poin Registrasi
        Given user berada di homepage #registrasi
        And user pilih produk #registrasi
        And user pilih pelanggan baru #registrasi
        When user bayar #registrasi
        Then pelanggan mendapatkan poin registrasi #registrasi

    Scenario: Poin User Bertambah Dari Transaksi
        Given user berada di homepage #poinbertambahtrx
        And user pilih produk#poinbertambahtrx
        And user pilih pelanggan #poinbertambahtrx
        And user pilih poin #poinbertambahtrx
        When user bayar #poinbertambahtrx
        Then poin user bertambah dari transaksi #poinbertambahtrx

    Scenario: Poin User Bertambah Dari Transaksi Dan Registrasi
        Given user berada di homepage #poinbertambahtrxregis
        And user pilih produk #poinbertambahtrxregis
        And user pilih pelanggan baru #poinbertambahtrxregis
        When user bayar #poinbertambahtrxregis
        Then poin user bertambah dari transaksi dan registrasi #poinbertambahtrxregis

    Scenario: Validasi Poin Lebih Besar Dari Poin Tersedia
        Given user berada di homepage #validasipoinlebihbesar
        And user pilih produk #validasipoinlebihbesar
        And user pilih pelanggan #validasipoinlebihbesar
        And user pilih poin #validasipoinlebihbesar
        When user input poin lebih dari jumlah poin maksimal #validasipoinlebihbesar
        Then system menampilkan validasi jumlah poin yang ditikar lebih besar #validasipoinlebihbesar

    Scenario: Poin Pelanggan Kembali Bertambah Saat Transaksi Dibatalkan
        Given user berada di homepage #trxredeempoinvoid
        And batalkan transaksi yang ada redeem poin #trxredeempoinvoid
        When user pilih pelanggan yang transaksinya dibatalkan #trxredeempoinvoid
        Then poin pelanggan kembali bertambah #trxredeempoinvoid

    Scenario: Poin Pelanggan Kembali Berkurang Saat Transaksi Dibatalkan
        Given user berada di homepage #trxearnpoinvoid
        And batalkan transaksi yang ada earn poin #trxearnpoinvoid
        When user pilih pelanggan yang transaksinya dibatalkan #trxearnpoinvoid
        Then poin pelanggan kembali berkurang #trxearnpoinvoid