input = [
  { name: 'Maria Neusa de Aparecida',
  cpf: '97905796671',
  state: 'Sao Paulo',
  value: '1234' },
  { name: 'Ricardo Fontes',
  cpf: '44010762900',
  state: 'Rio Grande do Sul',
  value: '567' }
  ]

def normalize_str(str)
  return "#{str} " if str.length <= 9

  str.slice(0..10)
end

def solucao(arg)
  result = ''
  arg.each do |item|
    item.values.each do |key|
      result += normalize_str(key)
    end
    result += "\n"
  end
  result
end

puts solucao(input)