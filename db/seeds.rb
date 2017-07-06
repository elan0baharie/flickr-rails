Tag.destroy_all

10.times do |index|
  Tag.create!(text: Faker::Food.ingredient)
  Tag.create!(text: Faker::Book.genre)
end
