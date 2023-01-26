Feature: Android Cicilan

    Scenario: Validasi Pilih Pelanggan
        Given user berada di homepage #validasipilihpelanggancicilan
        And user pilih produk #validasipilihpelanggancicilan
        And user bayar #validasipilihpelanggancicilan
        When user pilih cicilan #validasipilihpelanggancicilan
        Then system menampilkan popup validasi pilih pelanggan #validasipilihpelanggancicilan

    Scenario: Halaman Cicilan
        Given user berada di homepage #halamancicilan
        And pilih produk #halamancicilan
        And user pilih pelanggan #halamancicilan
        And user bayar #halamancicilan
        When user pilih cicilan #halamancicilan
        Then system menampilkan halaman cicilan #halamancicilan

    Scenario: Jumlah Cicilan Maksimal 12 Kali
        Given user berada di homepage #maksjumlahcicilan
        And pilih produk #maksjumlahcicilan
        And user pilih pelanggan #maksjumlahcicilan
        And user bayar #maksjumlahcicilan
        And user pilih cicilan #maksjumlahcicilan
        When user klik jumlah cicilan #maksjumlahcicilan
        Then system menampilkan maksimal cicilan sebanyak 12 kali #maksjumlahcicilan

    Scenario: Periode Cicilan
        Given user berada di homepage #periodecicilan
        And pilih produk #periodecicilan
        And user pilih pelanggan #periodecicilan
        And user bayar #periodecicilan
        And user pilih cicilan #periodecicilan
        When user klik periode cicilan #periodecicilan
        Then system menampilkan periode cicilan mingguan bulanan custom #periodecicilan

    Scenario: Jatuh Tempo Cicilan
        Given user berada di homepage #jatuhtempocicilan
        And pilih produk #jatuhtempocicilan
        And user pilih pelanggan #jatuhtempocicilan
        And user bayar #jatuhtempocicilan
        And user pilih cicilan #jatuhtempocicilan
        When user klik "<periode>" cicilan #jatuhtempocicilan
        Then system generate otomatis "<periods>" cicilan #jatuhtempocicilan
        Examples:
            | periode | periods |
            | mingguan | weekly |
            | bulanan | monthly |
            | custom | customs |

    Scenario: Generate Ulang Tagihan
        Given user berada di homepage #generateulang
        And pilih produk #generateulang
        And user pilih pelanggan #generateulang
        And user bayar #generateulang
        And user pilih cicilan #generateulang
        When user input uang muka cicilan #generateulang
        Then system generate ulang tagihan #generateulang

    Scenario: Berhasil Buat Cicilan
        Given user berada di homepage #berhasilbuatcicilan
        And pilih produk #berhasilbuatcicilan
        And user pilih pelanggan #berhasilbuatcicilan
        And user bayar #berhasilbuatcicilan
        And user pilih cicilan #berhasilbuatcicilan
        When user simpan #berhasilbuatcicilan
        Then berhasil buat cicilan #berhasilbuatcicilan

    Scenario: Tidak Bisa Batalkan Cicilan
        Given user berada di homepage dan memiliki transaksi cicilan #tidakbisabatalkancicilan
        When user klik riwayat transaksi #tidakbisabatalkancicilan
        Then button batalkan transaksi disabled #tidakbisabatalkancicilan
    
    Scenario: Halaman Detail Cicilan
        Given user berada di homepage dan memiliki transaksi cicilan #detailcicilan
        And user klik riwayat transaksi #detailcicilan
        When user klik detail cicilan #detailcicilan
        Then system menampilkan halaman detail cicilan #detailcicilan

    Scenario: Berhasil Bayar Cicilan
        Given user berada di homepage dan memiliki transaksi cicilan #bayarcicilan
        And user klik riwayat transaksi #bayarcicilan
        And user klik detail cicilan #bayarcicilan
        When user bayar cicilan #bayarcicilan
        Then user berhasil bayar cicilan #bayarcicilan

    Scenario: Status Cicilan Lunas
        Given user berada di homepage dan memiliki transaksi cicilan #statuscicilan
        When user klik riwayat transaksi #statuscicilan
        Then system menampilkan status cicilan lunas #statuscicilan

    Scenario: Transaksi Cicilan Void
        Given user berada di homepage dan memiliki transaksi cicilan yang sudah lunas #cicilanvoid
        And user klik riwayat transaksi #cicilanvoid
        When user batalkan cicilan #cicilanvoid
        Then transaksi cicilan berhasil dibatalkan #cicilanvoid

    Scenario: Tidak Bisa Redeem Poin
        Given user berada di homepage #cicilanredeempoin
        And pilih produk #cicilanredeempoin
        And user pilih pelanggan #cicilanredeempoin
        And user bayar #cicilanredeempoin
        And user redeem poin #cicilanredeempoin
        When user pilih cicilan #cicilanredeempoin
        Then system menampilkan total transaksi kembali ke jumlah awal #cicilanredeempoin

    Scenario: Tidak Bisa Earn Poin
        Given user berada di homepage #cicilanearnpoin
        And pilih produk #cicilanearnpoin
        And user pilih pelanggan #cicilanearnpoin
        And user bayar #cicilanearnpoin
        And user earn poin #cicilanearnpoin
        When user pilih cicilan #cicilanearnpoin
        Then system membatalkan earn poin pelanggan #cicilanearnpoin