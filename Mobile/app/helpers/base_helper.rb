module BaseHelper
    def take_screenshot_and_resize(scenario)
    # example output: purchase_invoice_feature_15.png, sales_invoice_feature_20.png. The number behind feature name represents the scenario line which is failed
    screenshot_dir = File.absolute_path("./report/screenshots/#{ENV['PLATFORM']}")
    filename = "#{scenario.feature.name.downcase.tr(' ', '_')}_#{scenario.location.line}.png"
    full_path = "#{screenshot_dir}/#{filename}"
    FileUtils.mkdir_p(screenshot_dir) unless File.directory?(screenshot_dir)
    $driver.screenshot(full_path)
    img = ChunkyPNG::Image.from_file(full_path)
    img = img.resize((img.width * 0.5).floor, (img.height * 0.5).floor) # the default screenshot size is too large
    img.save(full_path)

    full_path
  rescue Exception => e
    raise e.message
  end

  def waitFor(element:false)
    wait = Selenium::WebDriver::Wait.new(timeout: 5)
    wait.until {yield}
  end

  def waitFor20(element:false)
    wait = Selenium::WebDriver::Wait.new(timeout: 20)
    # wait = Appium::Driver::Wait.new(:timeout => 5)
    wait.until {yield}
  end

  def scroll()
    execute_script 'mobile: scroll', direction: 'down'

  end

  def swipe()
    action = Appium::TouchAction.new.press(x: 250, y: 934).wait(1000).move_to(x: 260, y:  200).release()
    action.perform
  end

  def swipeCicilan()
    action = Appium::TouchAction.new.press(x: 250, y: 700).wait(1000).move_to(x: 1024, y:  250).release()
    action.perform
  end

  def swipeHome()
    action = Appium::TouchAction.new.press(x: 530, y: 950).wait(1000).move_to(x: 540, y:  200).release()
    action.perform
  end

  def swipePocer()
    action = Appium::TouchAction.new.press(x: 900, y: 419).wait(1000).move_to(x: 902, y:  345).release()
    action.perform
  end

  def generate_random_string(number)
    charset = Array('A'..'Z') + Array('a'..'z') + Array('0'..'9')
    Array.new(number) { charset.sample }.join
  end

  # Selenium::WebDriver:Wait.new(timeout: 10)unil {@app.afterloginpage.text_automation.size == 0}

  def fill_number_text(number)
    my_array = number.to_s.chars.map(&:to_s)
    my_array.each do |value|
        case value
            when '+'
                $driver.press_keycode 81
            when '0'
                $driver.press_keycode 7 
            when '1'
                $driver.press_keycode 8
            when '2'
                $driver.press_keycode 9
            when '3'
                $driver.press_keycode 10
            when '4'
                $driver.press_keycode 11
            when '5'
                $driver.press_keycode 12
            when '6'
                $driver.press_keycode 13
            when '7'
                $driver.press_keycode 14
            when '8'
                $driver.press_keycode 15
            when '9'
                $driver.press_keycode 16
            else
                raise 'Digit not expected'
        end
    end
  end


end