def getNumberMovies(substr)
  require 'net/http'
  require 'json'

  url = "https://jsonmock.hackerrank.com/api/movies/search/?Title=" + substr
  uri = URI(url)
  response = Net::HTTP.get(uri)
  data = JSON.parse(response)
  data["total"]
end
p getNumberMovies('maze')