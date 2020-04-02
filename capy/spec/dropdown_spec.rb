describe "Caixa de seleção", :dropdown do
  it "Item específico simples" do
    visit "http://training-wheels-protocol.herokuapp.com/dropdown"

    #como selecionar uma opção no dropdown de forma simples no Capybara
    #select("Opção", from: "elemento")
    select("Loki", from: "dropdown")
    sleep 3
  end

  it "Item específico com find" do
    visit "http://training-wheels-protocol.herokuapp.com/dropdown"

    drop = find(".avenger-list")
    drop.find("option", text: "Scott Lang").select_option
    sleep 3
  end

  it "qualquer item", :sample do
    visit "http://training-wheels-protocol.herokuapp.com/dropdown"
    drop = find(".avenger-list")
    #Trazer todos os options e colocar em um array, escolher randomicamente 1 e selecioná-lo
    drop.all("option").sample.select_option
    sleep 3
  end
end
