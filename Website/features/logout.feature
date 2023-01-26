Feature: Logout
	Scenario: Logout success
		Given User berada di halaman login Pawoon
		Given User login with valid credential
        Given User sudah Login
		When User Logout
        Then User logout sukses