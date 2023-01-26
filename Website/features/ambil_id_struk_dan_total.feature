Feature: Login
	Scenario: Ambil id struk dan total harga
		Given User berada di halaman login Pawoon
		Given User login with valid credential
		Given User verify login success
		Given User berada di halaman laporan penjualan dtp
		When User set filter hari ini dan terapkan
        Then User dapat id struk beserta total amount order terbaru