Feature: Ambil nama dan harga produk
	Scenario: Ambil nama dan harga produk
		Given User berada di halaman login Pawoon
		Given User login with valid credential
		Given User berada di halaman produk
		When Nama dan harga diambil
        Then Nama dan harga success diambil