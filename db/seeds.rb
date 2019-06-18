# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{ firstname: 'perico', lastname: 'los palotes', email:'plp@example.com'},{ firstname: 'el chavo', lastname: 'del ocho', email:'ecdo@example.com'},{ firstname: 'rick', lastname: 'and morty', email:'ram@example.com'}])

for u in users do 
 	u.save!
 end

products = Product.create([{brand:'coca',model:'cola',variant:'normal',price: "1390",shortdesc: 'bebida de fantasia',largedesc:'Coca-Cola, conocida comúnmente como Coca en muchos países hispanohablantes (en inglés Coke) es una bebida gaseosa y refrescante, vendida a nivel mundial, en tiendas, restaurantes y máquinas expendedoras en más de doscientos países o territorios. Es un producto de The Coca-Cola Company.' },{brand:'alto del carmen',model:'pisco',variant:'azul',price: "5990",shortdesc: 'destilado nacional',largedesc:'ORIGEN
Nacer desde la tierra, incluso bajo su ras, es uno de los impulsos que nos llevan a volar alto. Podrá ser una paradoja que una raíz enclavada en lo más profundo de un valle origine una perspectiva que se alza por sobre los límites de la cordillera. Pero esa paradoja, no es tal.

Tampoco es una casualidad. Porque compartimos la mirada, la altura y la perspectiva del cóndor andino, variantes que se convierten en los valores que nos inspiran para fabricar un pisco de calidad superior.

' },{brand:'monster',model:'classic',variant:'',price: "1390",shortdesc: 'bebida energetica ',largedesc:'Prueba una de las bebidas más extremas del planeta, Monster Energy®!

Es una mezcla brutal con una combinación ideal de ingredientes con las proporciones exactas para ofrecer el Monster "Buzz" que tanto les gusta a nuestros fans de Chile. Monster® tiene un sabor intenso pero suave.

Le encanta a los atletas, surfistas, músicos, skaters, riders, geeks y hipsters...entonces seguro a ti también te encantará.

Unleash The Beast' }])

for pr in products do
	pr.save!
end

addresses = Address.create([{phone:"870490890",addressline1:'somwhere',addressline2:'over the rainbow',city:'Santiago',country:'Chile',zipcode: "7821159",user: users.third},{phone:"909032332",addressline1:'alla',addressline2:'aqui',city:'Santiago',country:'Chile',zipcode: "7821152",user: users.second},{phone:"999922221",addressline1:'los ind, comuna rar',addressline2:'2do ',city:'Santiago',country:'Chile',zipcode: "7821153", user: users.first}])

for a in addresses do
	a.save!
end

order_statuses = OrderStatus.create([{name:'En progreso'},{name:'Hecha'},{name:'Enviada'},{name:'Cancelada'}])

for o in order_statuses do
	o.save!
end

