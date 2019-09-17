require 'rest-client'
require 'json'
require 'pry'

ddef get_character_movies_from_api(character)
  #make the web request
  response_string = RestClient.get('http://www.swapi.co/api/people/')
  response_hash = JSON.parse(response_string)
  results = response_hash["results"]
  url_array = []
  results.find do |x|
     x["name"] == character
     url_array << x["films"]
  end
  url_array = url_array.flatten

  url_array.map do |url|
    url_string = RestClient.get(url)
    url_hash = JSON.parse(url_string)
    url_hash["title"]
  end


  # iterate over the response hash to find the collection of `films` for the given
  #   `character`
  # collect those film API urls, make a web request to each URL to get the info
  #  for that film
  # return value of this method should be collection of info about each film.
  #  i.e. an array of hashes in which each hash reps a given film
  # this collection will be the argument given to `print_movies`
  #  and that method will do some nice presentation stuff like puts out a list
  #  of movies by title. Have a play around with the puts with other info about a given film.
end

def print_movies(films)
  # some iteration magic and puts out the movies in a nice list
  #films.class
  films.each_with_index do |title, index|
    puts "#{index + 1} #{title}"
  end
end

def show_character_movies(character)
  films = get_character_movies_from_api(character)
  print_movies(films)
end

## BONUS

# that `get_character_movies_from_api` method is probably pretty long. Does it do more than one job?
# can you split it up into helper methods?
def get_character_movies_from_api(character)
  #make the web request
  response_string = RestClient.get('http://www.swapi.co/api/people/')
  response_hash = JSON.parse(response_string)
  results = response_hash["results"]
  url_array = []
  results.find do |x|
     x["name"] == character
     url_array << x["films"]
  end
  url_array = url_array.flatten

  url_array.map do |url|
    url_string = RestClient.get(url)
    url_hash = JSON.parse(url_string)
    url_hash["title"]
  end


  # iterate over the response hash to find the collection of `films` for the given
  #   `character`
  # collect those film API urls, make a web request to each URL to get the info
  #  for that film
  # return value of this method should be collection of info about each film.
  #  i.e. an array of hashes in which each hash reps a given film
  # this collection will be the argument given to `print_movies`
  #  and that method will do some nice presentation stuff like puts out a list
  #  of movies by title. Have a play around with the puts with other info about a given film.
end

def print_movies(films)
  # some iteration magic and puts out the movies in a nice list
  #films.class
  films.each_with_index do |title, index|
    puts "#{index + 1} #{title}"
  end
end

def show_character_movies(character)
  films = get_character_movies_from_api(character)
  print_movies(films)
end

## BONUS

# that `get_character_movies_from_api` method is probably pretty long. Does it do more than one job?
# can you split it up into helper methods?
def get_character_movies_from_api(character)
  #make the web request
  response_string = RestClient.get('http://www.swapi.co/api/people/')
  response_hash = JSON.parse(response_string)
  results = response_hash["results"]
  url_array = []
  results.find do |x|
     x["name"] == character
     url_array << x["films"]
  end
  url_array = url_array.flatten

  url_array.map do |url|
    url_string = RestClient.get(url)
    url_hash = JSON.parse(url_string)
    url_hash["title"]
  end
  
  # iterate over the response hash to find the collection of `films` for the given
  #   `character`
  # collect those film API urls, make a web request to each URL to get the info
  #  for that film
  # return value of this method should be collection of info about each film.
  #  i.e. an array of hashes in which each hash reps a given film
  # this collection will be the argument given to `print_movies`
  #  and that method will do some nice presentation stuff like puts out a list
  #  of movies by title. Have a play around with the puts with other info about a given film.
end

def print_movies(films)
  # some iteration magic and puts out the movies in a nice list
  #films.class
  films.each_with_index do |title, index|
    puts "#{index + 1} #{title}"
  end
end

def show_character_movies(character)
  films = get_character_movies_from_api(character)
  print_movies(films)
end

## BONUS

# that `get_character_movies_from_api` method is probably pretty long. Does it do more than one job?
# can you split it up into helper methods?
