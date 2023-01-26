Given('User berada di halaman login Pawoon') do
  visit '/login'
  sleep 3
  expect(@pusathalaman.loginpage.has_txt_selamat_datang_kembali?).to be true
  end
  
  When('User login with valid credential') do
    sleep 1
    @inputemail = "abizar.giffari+staging@pawoon.com"
    @inputpassword = "123456"
    @pusathalaman.loginpage.input_email.click
    @pusathalaman.loginpage.input_email.set @inputemail
    @pusathalaman.loginpage.input_password.set @inputpassword
    @pusathalaman.loginpage.btn_login.click

    #kalo find bisa pake css dan xpath
    #kalo masih ga ketemu pake selector
    #find(:css, 'input.form-control.email-type').click        -> ini kalau css ambil manual
    #find(:css, 'loginForm > div:nth-child(3) > input').click -> ini kalau css ambil dari selector
    #find(:xpath, '//*[@id="loginForm"]/div[2]/input')        -> ini xpath
    
    #find('input.form-control.email-type').set('abizar.giffari+tokoikan@pawoon.com')
    #find('#loginForm > div:nth-child(4) > input').set('123456')
    
    #kalo fill in pake id
    #fill_in 'input.form-control.email-type', with: 'abizar.giffari+tokoikan@pawoon.com'
    #fill_in 'Password', with: '123456'
  end
  
  Then('User verify login success') do
    @pusathalaman.dashboard.btn_profile_span.click
    sleep 3
    @pusathalaman.dashboard.btn_profile.click
    #expect(page).to have_content 'Hi, Toko Ikan'
    #expect(@pusathalaman.dashboard.has_txt_toko_ikan?).to be true
    namatoko = @pusathalaman.dashboard.txt_nama_akun.text
    #namaToko = find('#account-content ul li:nth-child(2) span').text
    p "Login sebagai = #{namatoko}"
    p "Email yang dimasukkan = #{@inputemail}"
  end