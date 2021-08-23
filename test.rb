# frozen_string_literal: true

# read a large json file and restructure
require 'json'
filename = 'text.json'
dirname = File.dirname(filename)
`split -b 1024m #{filename} #{filename}.parts.`
Dir.chdir(dirname)
parts = Dir["#{filename}.parts.*"]
json = ''
parts.each do |part|
  json += File.read(part)
  File.delete(part)
end
rjson = JSON.parse(json)
arr_name = []
rjson.each_pair do |k, v|
  h = {}
  h['books'] = []
  arr_book = {}
  arr_book['title'] = v[1]
  arr_book['isbn'] = k
  arr_book['text'] = v[2..]
  h['name'] = "#{v[0].split.last}, #{v[0][/(.*)\s/, 1]}"
  check = arr_name.find { |x| x['name'] == h['name'] }
  if check
    check['books'] << arr_book
  else
    h['books'] = [arr_book]
    arr_name << h
  end
end

arr_name.each do |i|
  i['books'].sort_by! { |h| h['title'] }
end
arr_name.sort_by! { |h| h['name'] }
p arr_name
