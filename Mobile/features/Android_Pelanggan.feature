Feature: Android Pelanggan

    Scenario: Halaman Pelanggan
        Given user berada di homepage #halpelanggan
        When user ke menu "<halpelanggan>" #halpelanggan
        Then system menampilkan "<haltampilkan>" #halpelanggan
        Examples:
            | halpelanggan | haltampilkan |
            | pelanggan | halpelanggan |
            | tambah pelanggan | haltambahpelanggan |

    Scenario: Validasi Nama dan Nomor Telepon
        Given user berada di homepage #validasi
        And user tambah pelanggan #validasi
        When user klik simpan "<trigger>" #validasi
        Then system menampilkan validasi "<validasi>" #validasi
        Examples:
            | trigger | validasi | 
            | nohp | nohp | 
            | nama nohp| nama nohp | 

    Scenario: Berhasil Tambah dan Edit Pelanggan
        Given user berada di homepage #tambahedit
        When user "<action>" pelanggan #tambahedit
        Then data pelanggan berhasil disimpan #tambahedit
        Examples:
            | action |
            | tambah |
            | edit |

    Scenario: Operator Tanpa Akses Tambah dan Edit Pelanggan
        Given user berada di homepage #akses
        And user ganti operator ke kasir atau staff yang tidak memiliki akses pelanggan #akses
        When user "<trigger>" pelanggan #akses
        Then "<validasi>" muncul  #akses
        Examples:
            | trigger | validasi | 
            | tambah | tidak ada button tambah | 
            | edit | validasi tidak punya akses | 