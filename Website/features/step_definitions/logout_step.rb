Given('User sudah Login') do
  expect(@pusathalaman.dashboard.has_txt_toko_ikan?).to be true
  end
  
  When('User Logout') do
    @pusathalaman.dashboard.btn_profile_span.click
    sleep 2
    @pusathalaman.dashboard.btn_logout.click
  end
  
  Then('User logout sukses') do
    sleep 2
    expect(@pusathalaman.loginpage.has_txt_selamat_datang_kembali?).to be true
  end