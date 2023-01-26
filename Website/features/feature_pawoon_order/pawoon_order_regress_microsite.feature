Feature: Pawoon Order

    Scenario Outline: Kategori Home Pawoon Order
      Given User berada di halaman Pawoon Order #kategori
      When User "<kategori>"
      Then Kategori muncul "<category>"
      Examples:
            | kategori | category |
            | pilih kategori | choose category |
            | ganti kategori | change category |
            | menampilkan kategori | show category |
            | tutup kategori | close category |

    Scenario Outline: Tambah Produk Pawoon Order
      Given User berada di halaman Pawoon Order #tambahproduk
      When User tambah "<productname>"
      Then Berhasil tambah produk "<namaproduk>"
      Examples:
            | productname | namaproduk |
            | produk normal | normal |
            | produk normal opsi | normal opsi |
            | produk variant | variant |
            | produk variant opsi | variant opsi |

    Scenario Outline: Kurangi Produk Pawoon Order
      Given User berada di halaman Pawoon Order #kurangiproduk
      When User kurangi "<productname>"
      Then Berhasil kurangi produk "<namaproduk>"
      Examples:
            | productname | namaproduk |
            | produk normal | normal |
            | produk normal opsi | normal opsi |
            | produk variant | variant |
            | produk variant opsi | variant opsi |

    Scenario Outline: Modified Pesanan Pawoon Order
      Given User berada di halaman Pawoon Order #ubahtambahpesanan
      When User "<modified>" pesanan
      Then Berhasil "<expected>" pesanan
      Examples:
            | modified | expected |
            | ubah pesanan | ubah |
            | tambah pesanan | tambah |

    Scenario Outline: Pawoon Order Hapus Produk Di Page Checkout
      Given User berada di halaman Pawoon Order #checkouthapus
      When User pilih "<productname>"
      And User hapus produk
      Then Berhasil hapus produk di page checkout
      Examples:
            | productname |
            | produk normal |
            | produk normal opsi |
            | produk variant |

    Scenario Outline: Pawoon Order Lihat Detail Transaksi
      Given User berada di halaman Pawoon Order #detailtrx
      And User pilih produk #detailtrx
      When User klik selanjutnya #detailtrx
      Then User bisa lihat detail transaksi #detailtrx

    Scenario Outline: Validasi Data Diri
      Given User berada di halaman validasi data diri
      When User order produk tanpa "<datadiri>"
      Then Validasi muncul "<mydata>"
      Examples:
          | datadiri | mydata |
          | isi nama pelanggan | namapel |
          | isi nomor telepon | notlp |
          | isi meja | nomeja |

    Scenario Outline: Pawoon Order Pop Up Konfirmasi Ke Kasir
      Given User berada di halaman Pawoon Order #popupkasir
      And User pilih produk  #popupkasir
      When User bayar di kasir  #popupkasir
      Then Poup up konfirmasi ke kasir muncul  #popupkasir

    Scenario Outline: Pawoon Order Menampilkan Element Di Struk
      Given User berada di halaman Pawoon Order #elementstruk
      And User pilih produk  #elementstruk
      When User bayar #elementstruk
      Then Menampilkan struk yang berisi semua elementnya  #elementstruk

    Scenario Outline: Modified Pesanan Pawoon Order
      Given User berada di halaman Pawoon Order #ubahtambahpesanan
      When User "<modified>" pesanan
      Then Berhasil "<expected>" pesanan
      Examples:
            | modified | expected |
            | ubah pesanan | ubah |
            | tambah pesanan | tambah |
            | kurangi pesanan | kurangi |

    Scenario Outline: Pawoon Order Receipt Code Berbeda Pada Order Baru
      Given User sudah menyelesaikan transaksi dan dapat receipt code #receiptcodebaru
      When User buat transaksi baru #receiptcodebaru
      Then User mendapat receipt code baru #receiptcodebaru

    Scenario Outline: Pawoon Order Transaksi Seusai Yaang Dipesan
      Given User berada di halaman Pawoon Order #trxsesuai
      When User buat transaksi baru #trxsesuai
      Then Transaksi sesuai dengan item yang dipesan di struk #trxsesuai

    Scenario Outline: Homepage Pawoon Order
      Given User berada di halaman Pawoon Order #homepage
      When User lakukan pengecekan element #homepage
      Then Element di homepage Pawoon Order tampil #homepage

    Scenario Outline: Detail Produk Pawoon Order
      Given User berada di halaman Pawoon Order #detailproduk
      When User pilih produk #detailproduk
      Then Element detail produk tampil #detailproduk
    
    Scenario Outline: Checkout Page Pawoon Order
      Given User berada di halaman Pawoon Order #checkoutpage
      And User pilih produk #checkoutpage
      When User klik selanjutnya #checkoutpage
      Then Element detail produk tampil #checkoutpage