Given(/^Открываю в браузере Yandex.ru$/) do
    @driver.get('http://www.yandex.ru')
    @driver.manage().window().maximize()
end

When(/^Открываю Yandex.Маркет$/) do
    sleep 5
    el = @driver.find_element(:xpath, "/html/body/div[1]/div[3]/div[2]/div[2]/div/div[2]/div/div[1]/div/a[5]")
    el if el && el.displayed?
    el.click
    sleep 5
end

When(/^Выбираю раздел электроника$/) do
    el = @driver.find_element(:xpath, "//span[text()='Электроника']")
    el if el && el.displayed?
    el.click
end

When(/^Выбираю раздел мобильные телефоны$/) do
    el = @driver.find_element(:xpath, "//a[text()='Телефоны']/following-sibling::div//a[text()='Мобильные телефоны']")
    el if el && el.displayed?
    el.click
end
When(/^Перехожу в раздел расширенный поиск$/) do
    sleep 10
    el = @driver.find_element(:xpath, "//span[text()='Все фильтры']/..")
    el if el && el.displayed?
    el.click 
    sleep 10
end

When(/^Выбираю производителей Apple и Samsung$/) do
    el = @driver.find_element(:xpath, "(//label[text()='Apple'])[1]")
    el if el && el.displayed?
    el.click
    qr = @driver.find_element(:xpath, "(//label[text()='Samsung'])[1]")
    qr if qr && el.displayed?
    qr.click
end

When(/^Параметр$/) do
    el = @driver.find_element(:xpath, "//input[@id = 'glf-pricefrom-var']")
    el.clear
    el.send_keys "20000"
    sleep 3
   qr = @driver.find_element(:xpath, "//a[contains(@class,'button button_size_l')]")
   qr if qr && el.displayed?
   qr.click
end

When(/^Выбор 12 элементов$/) do
    @driver.find_element(:xpath, "(//button[contains(@class, 'arrow_down')])[1]").click 
    sleep 2
    it = @driver.find_element(:xpath, "//span[text()='Показывать по 12']")
    it.click
    sleep 5
end

    When(/^Проверка элементов$/) do
    nu = @driver.find_elements(:xpath, "//div[contains(@class,'n-snippet-cell2 i')]" ).size()
    puts nu
    if nu == 12
    puts 'проверка выполнена'
    else
        @driver.close 
    end
end

When(/^Запоминаем элемент и вводим его значение в поиск$/) do  
    el = @driver.find_element(:xpath, "(//div[contains(@class,'n-snippet-cell2__title')]/child::a)[1]" )
    sleep 6
    $el2 = el.text
    qw = @driver.find_element(:xpath, "//input[@id='header-search']" ).send_keys "#{$el2}"
    q = @driver.find_element(:xpath, "(//button[@role='button'])[1]" )
    q if el && q.displayed?
    q.click
    sleep 2
end

When(/^Проверка первого элемента$/) do  
    sleep 5
    el = @driver.find_element(:xpath, "//h1[contains(@class,'title title_size_28')]" )
    ent = el.text
    puts $el2
    puts ent
    if ent == $el2
        puts 'perfecto'
    else 
    puts 'не сегодня '
    end
end





