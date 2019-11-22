class Conta
  attr_accessor :saldo, :nome

  # Método construtor -> é iniciado toda vez que instaciamos uma classe (Conta.new)
  # Esse método seta o valor 0.0 no saldo
  # O Método recebe um argumento, que deve ser passado quando instanciamos a classe.
  def initialize(nome)
    self.saldo = 0.0
    self.nome = nome
  end

  def deposita(valor)
    #self invoca todos os recursos (método ou atributo) dentro da própria classe (this do C# e Java)
    self.saldo += valor

    # puts "Depositando a quantia de " + valor.to_s + " reais." #concatenação
    puts "Depositando a quantia de #{valor} reais na conta de #{self.nome}." #interpolação de string - faz a converção automaticamente
  end
end

c = Conta.new("Samara")

c.deposita(100.00)
puts c.saldo

c.deposita(10.00)
puts c.saldo
