Given 'user access homepage' do
    # sleep(5)
    # @app.welcomepage.button_masuk_disini.click
    # @app.loginpage.input_email_login.send_keys  "automation@pawoon.com" #"abizar.giffari+tokoikan@pawoon.com"
    # @app.loginpage.input_password_login.send_keys "llllll" #"123456"
    # @app.loginpage.button_masuk_login.click
    # sleep(7)
    # expect(@app.afterloginpage.text_auto_device.displayed?).to be true
    # # Pilih Device
    # @app.afterloginpage.text_auto_device.click
    # sleep(25)
    # # Pilih Operator
    # @app.afterloginpage.text_automation.click
    # sleep(2)
    # # Loop btn 1
    # $i = 0
    # $num = 4
    # while $i < $num  do
    #    @app.afterloginpage.text_btn_1.click
    #     $i +=1
    # end 

    # Pilih Operator
    # sleep(2)
    # if @app.afterloginpage.text_automation.displayed?
    #     @app.afterloginpage.text_automation.click
    #     sleep(2)
    #     # Loop btn 1
    #     $i = 0
    #     $num = 4
    #     while $i < $num  do
    #     @app.afterloginpage.text_btn_1.click
    #         $i +=1
    #     end 
    #     sleep(5)
    # end

    expect(@app.afterloginpage.img_produk.displayed?).to be true
end

When 'user try to logout' do
    @app.logoutpage.btn_burger.click
    sleep(1)
    @app.logoutpage.btn_pengaturan.click
    sleep(1)
    @app.logoutpage.btn_informasi.click
    sleep(1)
    @app.logoutpage.btn_logout.click
    sleep(1)
    @app.logoutpage.btn_ya.click
    sleep(2)
    
end

Then 'user successfuly logout' do
    expect(@app.loginpage.input_email_login.displayed?).to be true
    sleep(2)
end