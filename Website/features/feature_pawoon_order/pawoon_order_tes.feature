Feature: Pawoon Order Regress
    
    Scenario Outline: Pawoon Order Transaksi Seusai Yaang Dipesan
      Given User berada di halaman Pawoon Order #trxsesuai
      When User buat transaksi baru #trxsesuai
      Then Transaksi sesuai dengan item yang dipesan di struk #trxsesuai