# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

@current_page = 1
439.times do
  url = "http://tmdb.lewagon.com/movie/popular?=#{@current_page.to_s}"
  movies_serialized = URI.open(url).read
  movies = JSON.parse(movies_serialized)
  @current_page += 1

  @results = movies["results"]
  @results.each do |result|
    Movie.create(title: result["title"], overview: result["overview"], poster_url: "https://image.tmdb.org/t/p/original#{result["poster_path"]}", rating: result["vote_average"])
  end
end

 #http://tmdb.lewagon.com/movie/top_rated?api_key=<your_api_key>
