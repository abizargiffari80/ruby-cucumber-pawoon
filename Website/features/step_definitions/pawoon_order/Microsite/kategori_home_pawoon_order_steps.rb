Given(/^User berada di halaman Pawoon Order #kategori$/) do
    expect(@pusathalaman.pawoonorderpage.has_txt_produkZ?).to be true
end
    
When(/^User "(.*)"$/) do | kategori |
    $driver.execute_script("window.scrollBy(0,250)", "")

    p kategori
    case kategori
    when 'pilih kategori'
        @pusathalaman.pawoonorderpage.dropdown_selectCategory.click
        sleep 1
        @pusathalaman.pawoonorderpage.radioButton_Variant.click
    when 'ganti kategori'
        @pusathalaman.pawoonorderpage.dropdown_selectCategory.click
        sleep 1
        @pusathalaman.pawoonorderpage.radioButton_NormalOpsi.click
    when 'menampilkan kategori'
        expect(@pusathalaman.pawoonorderpage.has_txt_home_dropDownCategory?).to be true
        expect(@pusathalaman.pawoonorderpage.has_txt_home_titleCategory?).to be true
        sleep 1
        @pusathalaman.pawoonorderpage.dropdown_selectCategory.click
    when 'tutup kategori'
        @pusathalaman.pawoonorderpage.dropdown_selectCategory.click
        @pusathalaman.pawoonorderpage.btn_closeCategory.click
    end
end
    
Then(/^Kategori muncul "(.*)"$/) do | category |
    sleep 1

    p category
    case category
    when 'choose category'
        expect(@pusathalaman.pawoonorderpage.has_txt_produkV?).to be true
    when 'change category'
        expect(@pusathalaman.pawoonorderpage.has_txt_produkNO?).to be true
    when 'show category'
        expect(@pusathalaman.pawoonorderpage.has_Category?).to be true
    when 'close category'
        expect(@pusathalaman.pawoonorderpage.has_txt_produkZ?).to be true
    end
    p 'Scenario Berhasil'
    sleep 1
    expect(@pusathalaman.pawoonorderpage.has_dropdown_selectCategory?).to be true
end