# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# User: email, password, first_name, last_name
# Address: name, address_one, address_two, city, state, zip, user_id
# Order: cost, user_id
# Noodle: cost, description, type, order_id
# Addon: cost, description, type, noodle_id

User.destroy_all
Address.destroy_all
Order.destroy_all
Noodle.destroy_all
Addon.destroy_all

u1 = User.create(email: 'asdf@asdf.com', password: 'asdf', first_name: 'First', last_name: 'Last')

a1 = Address.create(name: 'First Last', address_one: '1639 Arlington St.', address_two: '', city: 'Houston', state: 'TX', zip: '77008', user_id: u1.id)

o1 = Order.create(cost: 0.00, user_id: u1.id)

n1 = Noodle.create(cost: 15.50, description: 'de noodoh', group: 'Miso', order_id: o1.id)

a1 = Addon.create(cost: 1.50, description: 'Ajitama', group: 'supplement', noodle_id: n1.id)
a2 = Addon.create(cost: 1.00, description: 'spicy bomb', group: 'bomb', noodle_id: n1.id)






