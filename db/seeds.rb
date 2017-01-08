# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Game.create([
  { name: 'Shuffleboard' },
  { name: 'Pool' }
])

Player.create([
  { username: 'philyo' },
  { username: 'jonman' }
])

Bout.create([
  { games: [Game.first], players: Player.all, created_at: DateTime.new(2017,1,1) }
])

puts 'okok'
sleep 1

# PlayersBout.create([
#   { player: Player.first, bout: Bout.first },
#   { player: Player.find(2), bout: Bout.first }
# ])

Contest.create([
  { bout: Bout.first, players: [Player.first] },
  { bout: Bout.first, players: [Player.find(2)] }
])

Score.create([
  { contest: Contest.first, player: Player.first, value: 11 },
  { contest: Contest.find(2), player: Player.find(2), value: 8 }
])

# Winner.create([
#   { contest: Contest.first, player: Player.first },
#   { contest:Contest.find(2), player: Player.find(2) }
# ])
