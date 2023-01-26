Before do |scenario|
    # Capybara.app_host = 'https://my-v2-staging.pawoon.com/'
    # Capybara.javascript_driver = :chrome
    # @pusathalaman = PawoonPages.new
    # #page.driver.browser.manage.window.resize_to(1920,1080)
    # page.driver.browser.manage.window.maximize

    # #Do Login
    # visit '/login'
    # expect(@pusathalaman.loginpage.has_txt_selamat_datang_kembali?).to be true
    # # expect(@pusathalaman.loginpage.has_txt_selamat_datang_kembali?).to be true
    # sleep 1
    # @inputemail = "qa+prostg@pawoon.com"
    # @inputpassword = "123456"
    # @pusathalaman.loginpage.input_email.click
    # @pusathalaman.loginpage.input_email.set @inputemail
    # @pusathalaman.loginpage.input_password.set @inputpassword
    # @pusathalaman.loginpage.btn_login.click

    #######################################################################
    # Hook buat Pawoon Order #
    Capybara.app_host = 'https://my-v2-stg-ic.pawoon.com/'
    Capybara.javascript_driver = :chrome
    @pusathalaman = PawoonPages.new
    #page.driver.browser.manage.window.resize_to(1920,1080)
    page.driver.browser.manage.window.maximize

    visit '/automation'


  end
  
  After do |scenario|
    ## logic that will run after each scenario
  
    if(scenario.failed?)
    # TODO: take screenshots
    end
  
  end
  
  AfterStep do |scenario|
    # logic that will run after each step in a scenario
  end
