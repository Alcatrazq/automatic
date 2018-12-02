
When(/^Выбираю раздел наушники$/) do
    el = @driver.find_element(:xpath, "(//a[contains(@data-reactid,'26')])[1]")
    el if el && el.displayed?
    el.click
end
When(/^Перехожу в расширенный поиск$/) do
    sleep 10
    el = @driver.find_element(:xpath, "//span[contains(@class,'_28j8Lq')]")
    el if el && el.displayed?
    el.click 
    sleep 10
end

When(/^Выбираю производителя и задаю параметр поиска$/) do
    ww = @driver.find_element(:xpath, "//input[@id='glf-pricefrom-var']")
    ww.clear
    ww.send_keys "5000"
   qr = @driver.find_element(:xpath, "//a[contains(@class,'button button_size_l')]")
   qr if qr && qr.displayed?
   qr.click
end

When(/^Выбираю 12 элементов$/) do
    sleep 3
   l =  @driver.find_element(:xpath, "//button[@class='button button_theme_normal button_arrow_down button_size_s select__button i-bem button_js_inited']")
  l.click
    sleep 2
    it = @driver.find_element(:xpath, "//span[text()='Показывать по 12']")
    it.click
    sleep 5
end






