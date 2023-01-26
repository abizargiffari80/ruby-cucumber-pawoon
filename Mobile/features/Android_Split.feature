Feature: Android Split

    Scenario: Halaman Split
        Given user berada di homepage #halsplit
        And user pilih produk #halsplit
        When user pilih "<split>" #halsplit
        Then system menampilkan halaman "<halsplit>" #halsplit
        Examples:
            | split | halsplit | 
            | metode | halmetode | 
            | bill | halbill | 
            | payment| halpayment | 

    Scenario: Maksimal Metode Pembayaran 5 Row
        Given user berada di homepage #5row
        And user pilih produk #5row
        And user pilih split pembayaran #5row
        When user tambah metode pembayaran #5row
        Then system menampilkan maksimal metode pembayaran 5 row #5row
        
    Scenario: Metode Pembayaran
        Given user berada di homepage #metodepembayaran
        And user pilih produk #metodepembayaran
        And user pilih split pembayaran #metodepembayaran
        When user pilih opsi metode pembayaran #metodepembayaran
        Then system menampilkan semua custom payment termasuk tunai dan kartu #metodepembayaran

    Scenario: Menghapus Row Yang Baru ditambahkan
        Given user berada di homepage #hapusrow
        And user pilih produk #hapusrow
        And user pilih split pembayaran #hapusrow
        And user tambah metode pembayaran sampai 5 row #hapusrow
        When user pilih hapus #hapusrow
        Then system menghapus semua row yang baru ditambahkan #hapusrow

    
    Scenario: Generate Otomatis Total Pembayaran 
        Given user berada di homepage #generate
        And user pilih produk #generate
        And user pilih split pembayaran #generate
        And user tambah metode pembayaran sampai 5 row #generate
        When user hapus 1 angka di row pertama #generate
        Then system generate otomatis untuk total pembayarannya per metode pembayaran #generate

    Scenario: Generate Otomatis Total Pembayaran Row 4
        Given user berada di homepage #generate4row
        And user pilih produk #generate4row
        And user pilih split pembayaran #generate4row
        And user tambah metode pembayaran sampai 5 row #generate4row
        And user bayar 3 metode pembayaran #generate4row
        When user pilih hapus #generate4row
        Then system generate otomatis untuk sisa pembayarannya di row 4 #generate4row
    
    Scenario: Berhasil Bayar Transaksi
        Given user berada di homepage #berhasilbayar
        And user pilih produk #berhasilbayar
        And user pilih split pembayaran #berhasilbayar
        And user tambah metode pembayaran sampai 5 row #berhasilbayar
        When user bayar semua metode pembayaran #berhasilbayar
        Then transaksi berhasil di bayar #berhasilbayar

    Scenario: Halaman Split Bill Lewat Operator Tanpa Akses Diskon
        Given user berada di homepage #halsplitbilloperatortanpaakses
        And user pilih produk #halsplitbilloperatortanpaakses
        When user pilih split bill #halsplitbilloperatortanpaakses
        Then system menampilkan halaman split bill dan terdapat icon diskon #halsplitbilloperatortanpaakses

    Scenario: Simpan Split Bill
        Given user berada di homepage #simpansplitbill
        And user pilih produk #simpansplitbill
        And user pilih split bill #simpansplitbill
        When user simpan #simpansplitbill
        Then transaksi berhasil disimpan #simpansplitbill

    Scenario: Simpan Split Bill Dengan Produk Yang Belum Dibayarkan
        Given user berada di homepage #simpansplitbillbelumbayar
        And user pilih produk #simpansplitbillbelumbayar
        And user pilih split bill #simpansplitbillbelumbayar
        And user pindahkan beberapa item dan bayar #simpansplitbillbelumbayar
        When user simpan #simpansplitbillbelumbayar
        Then transaksi berhasil disimpan dengan produk yang belum dibayarkan #simpansplitbillbelumbayar

    Scenario: Simpan Split Bill Dengan Diskon Dan Produk Yang Belum Dibayarkan
        Given user berada di homepage #simpansplitbilldiskonbelumbayar
        And user pilih produk #simpansplitbilldiskonbelumbayar
        And user pilih split bill #simpansplitbilldiskonbelumbayar
        When user masukan diskon manual transaksi atau diskon khusus #simpansplitbilldiskonbelumbayar
        And user pindahkan beberapa item dan bayar #simpansplitbilldiskonbelumbayar
        And user simpan #simpansplitbilldiskonbelumbayar
        Then transaksi berhasil disimpan dengan diskon dan produk yang belum dibayarkan #simpansplitbilldiskonbelumbayar