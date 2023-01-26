Feature: Pawoon Order

    Scenario: Validasi Jika Toggle Terima Order Online Off
		Given User berada di halaman Pawoon Order #toggleoff
		When User order produk dan toggle terima order online off #toggleoff
        Then Validasi toggle terima order online off muncul #toggleoff

    Scenario Outline: Order Produk
		Given User berada di halaman Pawoon Order
		When User order "<productname>"
        Then Order berhasil dibuat dan dibayar
        Examples:
            | productname |
            | produk normal |
            | produk normal opsi |
            | produk variant |
            | produk variant opsi |
            | produk kombinasi |
    
    Scenario Outline: Validasi Data Diri
		Given User berada di halaman validasi data diri
		When User order produk tanpa "<datadiri>"
        Then Validasi muncul "<mydata>"
        Examples:
            | datadiri | mydata |
            | isi nama pelanggan | namapel |
            | isi nomor telepon | notlp |
            | isi meja | nomeja |

    Scenario: Order Produk Kombinasi With Note Item
		Given User berada di halaman Pawoon Order #noteitem
		When User order produk kombinasi with note item #noteitem
        Then Order berhasil dibuat #noteitem

    Scenario: Bayar Di Kasir
		Given User berada di halaman Pawoon Order #bayardikasir
		When User order produk dan bayar di kasir #bayardikasir
        Then Berhasil Bayar Di Kasir #bayardikasir