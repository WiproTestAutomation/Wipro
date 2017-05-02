Given(/^I am on the Santander bank_agency_search_page$/) do
  visit "https://www.santander.com.br/br/busca-de-agencia"
end

When(/^I will search for a cep$/) do
  thing = YAML.load_file('./data.yml')
  within_frame(find(:xpath, "//iframe")) do
	fill_in 'refCep', :with => thing['CEP']['BARUERI']
  end
end

Then(/^I will inform a number$/) do
  within_frame(find(:xpath, "//iframe")) do
	fill_in 'refNumero', :with => Faker::Number.number(2)
  end
end

Then(/^I will click the search button$/) do
  within_frame(find(:xpath, "//iframe")) do
	find(:xpath, "//li[contains(text(),'Preenchimento obriga')]/following-sibling::li/a").click
  end
end

Then(/^I will choose the first address listed$/) do
  within_frame(find(:xpath, "//iframe")) do
	second_option = find(:xpath, "//*[@id='refEndereco']/option[2]").value
	find('select#refEndereco').find("option[value='#{second_option}']").select_option
	#select(second_option, match: :first)
  end
end

Then(/^I will wait for (\d+) seconds btw$/) do |waitTime|
  sleep(waitTime.to_i)
end

Then(/^I should see "([^"]*)"$/) do |expectedText|
  page.should have_content(expectedText)
end

Then(/^I will wait for (\d+) seconds$/) do |waitTime|
  sleep(waitTime.to_i)
end

When(/^I will search in my neighborhood$/) do
  within_frame(find(:xpath, "//iframe")) do
	find(:xpath, "//td[@id='OpcaoBuscaAgenBairro']/span/span/a").click
  end
end
 
Then(/^I will inform my state$/) do
  within_frame(find(:xpath, "//iframe")) do
	#select("PR", :from => "localizacaoEstado")
	find(:xpath, "//select[@id='localizacaoEstado']/option[@value='PR']").select_option
  end
end

Then(/^I will inform my city$/) do
  within_frame(find(:xpath, "//iframe")) do
	#select("CURITIBA", :from => "localizacaoCidade")
	find(:xpath, "//select[@id='localizacaoCidade']/option[text()='CURITIBA']")
  end
end

Then(/^I will inform my neighborhood$/) do
  within_frame(find(:xpath, "//iframe")) do
	#select("Todos", :from => "localizacaoBairro")
	find(:xpath, "//select[@id='localizacaoCidade']/option[text()='Todos']")
  end
end

Then(/^I will click on search$/) do
  within_frame(find(:xpath, "//iframe")) do
	find(:xpath, "//li[contains(text(),'Preenchimento obriga')]/following-sibling::li/a").click
  end
end