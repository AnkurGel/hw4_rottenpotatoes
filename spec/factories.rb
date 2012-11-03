FactoryGirl.define do
  factory :movie do |movie|
    movie.title  "Alien"
    movie.rating "R"
    movie.release_date "1979-05-25"
  end

  factory :star_wars, :class => Movie do
    title        "Star Wars"
    rating       "PG"
    release_date "1977-05-25"
    director     "George Lucas"
  end

  factory :blade_runner, :class => Movie do
    title        "Blade Runner"
    rating       "PG"
    release_date "1982-06-25"
    director     "Ridley Scott"
  end

  factory :thx, :class => Movie do
    title        "THX-1138"
    rating       "R"
    release_date "1971-03-11"
    director     "George Lucas"
  end
end
