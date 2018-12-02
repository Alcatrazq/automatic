@r

When(/^Выбираю сортировку по цене$/) do
    el = @driver.find_element(:xpath, "//a[text()='по цене']")
    el if el && el.displayed?
    el.click
    sleep 3
end

When(/^Проверяю сортировку$/) do
    el = @driver.find_element(:xpath, "(//a[contains(@class,'link n-smart-link i-bem n-smart')])[1]/child::div").text.to_i
    ek = @driver.find_element(:xpath, "(//a[contains(@class,'link n-smart-link i-bem n-smart')])[2]/child::div").text.to_i
    ey = @driver.find_element(:xpath, "(//a[contains(@class,'link n-smart-link i-bem n-smart')])[3]/child::div").text.to_i
    puts el
    puts ek
    puts ey
    if  el < ek 
         ek < ey
        puts 'Проверка успешна'
    else
        puts 'придется переделать' 
    end
end








