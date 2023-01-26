class InitializeScreens
    def loginpage
        @loginpage ||= LoginPage.new
    end
    def welcomepage
        @Welcomepage ||= WelcomePage.new
    end
    def afterloginpage
        @afterloginpage ||= AfterLoginPage.new
    end
    def logoutpage 
        @logoutpage ||= LogoutPage.new
    end
    def transaksi 
        @transaksi ||= TransaksiPage.new
    end
    def pembayaran 
        @pembayaran ||= PembayaranPage.new
    end
    def drawer 
        @drawer ||= DrawerPage.new
    end
    def meja 
        @meja ||= MejaPage.new
    end
    def pelanggan 
        @pelanggan ||= PelangganPage.new
    end
    def poinvoucherpromo 
        @poinvoucherpromo ||= PoinVoucherPromoPage.new
    end
    def split
        @split ||= SplitPage.new
    end
    def cicilan
        @cicilan ||= CicilanPage.new
    end
    def promo
        @promo ||= PromoPage.new
    end
    def rekapkas
        @rekapkas ||= RekapKasPage.new
    end
    def customammount
        @customammount ||= CustomAmmountPage.new
    end
    def poin
        @poin ||= PoinPage.new
    end
  end