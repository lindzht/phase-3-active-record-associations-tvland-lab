
puts "seeding..."

4.times do 
    Actor.create(
        first_name: "test first",
        last_name: "test last"
    )
end

4.times do 
    Character.create(
        name: Faker::Name.name,
        catchphrase:Faker::Quote
    )
end

4.times do 
    Show.create(
        name: Faker::Game.title,
        day: "August 1",
        season: "season 2",
        genre: "sci-fi",
    )
end

puts "seeded baby!"