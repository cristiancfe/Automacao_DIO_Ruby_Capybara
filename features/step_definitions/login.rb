Dado('que eu tenha um usuario') do |table|
  @email = table.rows_hash['email']
  @senha = table.rows_hash['senha']
  visit('/sign-in')

end

Quando('eu fizer login') do
  find("input[placeholder='E-mail']").set @email
  find("input[placeholder='Senha']").set @senha
  
  click_button "Entrar" 
  
end

Entao('eu verifico se estou logado') do
  expect(page).to have_current_path('https://web.dio.me/home', url: true)
  expect(page).to have_text 'Cristian Eisenhut'

end

