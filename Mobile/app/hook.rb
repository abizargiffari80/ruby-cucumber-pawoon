require 'selenium-webdriver'
Before do |scenario|
  @app = InitializeScreens.new
  begin 
    if @app.welcomepage.button_masuk_disini.displayed?
      p 'Do Login'
      @app.welcomepage.button_masuk_disini.click
      @app.loginpage.input_email_login.send_keys  "automation@pawoon.com" #"abizar.giffari+tokoikan@pawoon.com"
      @app.loginpage.input_password_login.send_keys "llllll" #"123456"
      @app.loginpage.button_masuk_login.click
      sleep(7)
      
      # Pilih Outlet
      @app.afterloginpage.text_outlet_Automation.click
      begin
        if @app.afterloginpage.text_ganti_outlet.displayed?
          @app.afterloginpage.btn_ganti_outlet.click
          @app.afterloginpage.btn_ganti_outlet_YaLanjut.click
          sleep(2)
          # Pilih Device
          @app.afterloginpage.text_auto_device.click
        end
      rescue
        p 'gagal ganti outlet'

        # Pilih Device
        @app.afterloginpage.text_auto_device.click
        # Data Sebelumnya
        begin 
          if @app.afterloginpage.text_data_sebelumnya.displayed?
              @app.afterloginpage.text_data_sebelumnya_ya.click
          end
        # Ganti Perangkat
        rescue 
            @app.afterloginpage.text_ganti_perangkat.displayed?
            @app.afterloginpage.text_ganti_perangkat_ganti.click
            @app.afterloginpage.text_ganti_perangkat_yakin_YaLanjut.click
        
        end

      end

      
      sleep(35)
      # Pilih Operator
      @app.afterloginpage.text_automation.click
      sleep(2)
      # Loop btn 1
      $i = 0
      $num = 4
      while $i < $num  do
        @app.afterloginpage.text_btn_1.click
          $i +=1
      end
      # 4.times(@app.afterloginpage.text_btn_1.click) 
      sleep(5)
      expect(@app.afterloginpage.img_produk.displayed?).to be true

    end
  
  
  rescue
    p 'first rescue'
    sleep 5
    begin
      if @app.afterloginpage.text_automation.displayed?
    
        @app.afterloginpage.text_automation.click
        sleep(2)
        # Loop btn 1
        $i = 0
        $num = 4
        while $i < $num  do
        @app.afterloginpage.text_btn_1.click
            $i +=1
        end 
        sleep(5)
      else
        p 'sudah login'

      end
    rescue
      p 'second rescue'
      sleep 15
      @app.afterloginpage.text_automation.click
      sleep(2)
      # Loop btn 1
      $i = 0
      $num = 4
      while $i < $num  do
      @app.afterloginpage.text_btn_1.click
          $i +=1
      end 
      sleep(5)
    end
    #case produk ilang
    # @app.transaksi.btn_drawer.click
    # @app.transaksi.btn_updatedata.click
    # sleep(15)
  end
  
  
end
AfterStep do
end
After do |scenario|
  if scenario.failed?
    p "Scenario gagal dijalankan #{scenario.name}"
    screenshot = take_screenshot_and_resize(scenario)
    base64_img = Base64.encode64(File.open(screenshot, 'r:UTF-8', &:read))
    embed(base64_img, 'image/png;base64')
  else
    p 'scenario sukses'
  end
  # p 'log out'
  # @app.logoutpage.btn_burger.click
  # sleep(1)
  # @app.logoutpage.btn_pengaturan.click
  # sleep(1)
  # @app.logoutpage.btn_informasi.click
  # sleep(1)
  # @app.logoutpage.btn_logout.click
  # sleep(1)
  # @app.logoutpage.btn_ya.click
  # sleep(2)
  # expect(@app.loginpage.input_email_login.displayed?).to be true
  # sleep(2)
end