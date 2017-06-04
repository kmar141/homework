require_relative '../customer'
require_relative '../film'
require_relative '../ticket'
require_relative '../ticket_details'

require 'pry-byebug'

Ticket.delete_all()
Customer.delete_all()
Film.delete_all()

pip = Customer.new({ 'name' => 'Pip Osmond', 'funds' => 18})
pip.save()
woodrow = Customer.new({ 'name' => 'Woodrow Wilson', 'funds' => 41})
woodrow.save()
kip = Customer.new({ 'name' => 'Kip Marshall', 'funds' => 1337})
kip.save()

shutter_island = Film.new({ 'title' => 'Shutter Island', 'price' => 8})
shutter_island.save()
green_mile = Film.new({ 'title' => 'The Green Mile', 'price' => 6})
green_mile.save()
harry_pupper = Film.new({ 'title' => 'Harry Pupper and the Winter Jacket'})
harry_pupper.save()

ticket1 = Ticket.new({ 'customer_id' => pip.id, 'film_id' => shutter_island.id})
ticket1.save()
ticket2 = Ticket.new({ 'customer_id' => kip.id, 'film_id' => green_mile.id})
ticket2.save()
ticket3 = Ticket.new({ 'customer_id' => woodrow.id, 'film_id' => harry_pupper.id})
ticket3.save()

binding.pry
nil