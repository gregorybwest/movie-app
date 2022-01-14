require 'ffaker'

# 10.times do 
#   Actor.create(first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name, known_for: FFaker::Movie.title)
# end




5.times do
  Movie.create(title: FFaker::Movie.title, year: rand(1900..2000), plot: FFaker::CheesyLingo.sentence)
end


