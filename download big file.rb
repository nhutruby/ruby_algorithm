require 'net/http'
require 'uri'

def downloadFile(filePath, url,username, password)
  uri = URI(URI.encode(url))
  Net::HTTP.start(uri.host,uri.port) do |http|
    request = Net::HTTP::Get.new uri.path

    request.basic_auth username,password

    http.request request do |response|
      open filePath, 'w' do |io|
        response.read_body do |chunk|
          puts "Writing  #{chunk.length} bits ..."
          io.write chunk
        end
      end
    end
  end
end

urlPath = "http://<link_to_big_file>"

downloadFile '/tmp/test.zip',urlPath,"username","password"