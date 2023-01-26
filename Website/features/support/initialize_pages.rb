class PawoonPages
    def loginpage
        @loginpage = LoginPage.new
    end

    def dashboard
        @dashboard = DashboardPage.new
    end

    def productpage
        @productpage = ProductPage.new
    end

    def outletpage
        @outletpage = OutletPage.new
    end

    def pawoonorderpage
        @pawoonorderpage = PawoonOrderPage.new
    end
end