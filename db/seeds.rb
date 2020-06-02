puts "Destroy all restaurants"
Restaurant.destroy_all

puts "Create some Restaurants"

Restaurant.create! name: "Amareleen", neighborhood: "Gloria", city: "Rio de Janeiro"
Restaurant.create! name: "Verdeen", neighborhood: "Gloria", city: "Rio de Janeiro"
Restaurant.create! name: "Sushi da Praça", neighborhood: "Recreio dos Bandeirantes", city: "Rio de Janeiro"
Restaurant.create! name: "Vikings", neighborhood: "Tijuca", city: "Rio de Janeiro"
Restaurant.create! name: "Forneria Gagliasso", neighborhood: "Barra da Tijuca", city: "Rio de Janeiro"
Restaurant.create! name: "A Casa do Ferreiro", neighborhood: "Vila Izabel", city: "Curitiba"

puts "Let's drink a beer"
puts %{
  .~~~~.
  i====i_
  |cccc|_)
  |cccc|
  `-==-'

}

puts "Done!"
