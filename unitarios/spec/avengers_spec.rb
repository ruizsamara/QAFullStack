class AvengersHeadQuarter
  attr_accessor :list

  # Construtor vazio que converte o atributo list em array
  def initialize
    self.list = []
  end

  def put(avenger)
    self.list.push(avenger)
  end
end

# TDD (Desenvolvimento Guiado por Testes)
describe AvengersHeadQuarter do
  it "deve adicionar vingador" do
    hq = AvengersHeadQuarter.new

    hq.put("Spiderman")
    expect(hq.list).to eql ["Spiderman"]
  end

  it "deve adicionar uma lista de vingadores" do
    hq = AvengersHeadQuarter.new

    hq.put("Thor")
    hq.put("Hulk")
    hq.put("Spiderman")

    res = hq.list.size > 0

    # expect(hq.list).to include "Thor"
    expect(hq.list.size).to be > 0
    expect(res).to be true
  end

  it "Thor deve ser o primeiro da lista" do
    hq = AvengersHeadQuarter.new

    hq.put("Thor")
    hq.put("Hulk")
    hq.put("Spiderman")

    expect(hq.list).to start_with("Thor")
  end

  it "Ironman deve ser o último da lista" do
    hq = AvengersHeadQuarter.new

    hq.put("Thor")
    hq.put("Hulk")
    hq.put("Spiderman")
    hq.put("Ironman")

    expect(hq.list).to end_with("Ironman")
  end

  it "deve conter o sobrenome" do
    avenger = "Peter Parker"

    # Expressão regular
    expect(avenger).to match(/Parker/)
    expect(avenger).not_to match(/Martins/)
  end
end
