class LoginPage < SitePrism::Page
    element :input_email, 'input.form-control.email-type'
    element :input_password, '#loginForm > div:nth-child(4) > input'
    element :btn_login, '#do-login' #contoh pake id
    element :txt_selamat_datang_kembali, 'div.heading.text-center h4', text: "Selamat Datang Kembali" #contoh kalo mau ambil text
end