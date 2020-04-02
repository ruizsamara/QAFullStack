describe "Forms" do
  it "Login com sucesso" do
    visit "http://training-wheels-protocol.herokuapp.com/login"

    #fill_in userId, with: "<valor a ser preenchido no campo>"
    fill_in "userId", with: "stark"
    #fill_in username, with: "<valor a ser preenchido no campo>"
    fill_in "password", with: "jarvis!"

    click_button "Login"

    expect(find("#flash").visible?).to be true

    #O ícone de fechar o alerta está atrapalhando a validação do texto. Desta forma, não é
    #possível falar que os textos são iguais (eql).
    #expect(find("#flash").text).to eql "Olá, Tony Stark. Você acessou a área logada!"

    #Utilizar o include = contém, para verificar apenas a mensagem sem o ícone de fechar
    expect(find("#flash").text).to include "Olá, Tony Stark. Você acessou a área logada!"

    #OU utilizar have_content -> mesmo efeito do include
    expect(find("#flash")).to have_content "Olá, Tony Stark. Você acessou a área logada!"
  end

  it "Login com senha incorreta" do
    visit "http://training-wheels-protocol.herokuapp.com/login"

    fill_in "userId", with: "stark"
    fill_in "password", with: "123456"

    click_button "Login"

    expect(find("#flash").visible?).to be true
    expect(find("#flash")).to have_content "Senha é invalida!"
  end

  it "Usuário não cadastrado" do
    visit "http://training-wheels-protocol.herokuapp.com/login"

    fill_in "userId", with: "kassandra"
    fill_in "password", with: "AssassinsCreed"

    click_button "Login"

    expect(find("#flash").visible?).to be true
    expect(find("#flash")).to have_content "O usuário informado não está cadastrado!"
  end
end
