require 'uri'
require 'json'
require 'net/http'

class PkgLookup::Client
    class << self
        def search(term)
            q = URI.escape(term, Regexp.new("[^#{URI::PATTERN::UNRESERVED}]"))
            url = "http://labs.floatboth.com/pkglookup/lookup.json?q=#{q}"

            resp = Net::HTTP.get_response(URI.parse(url))
            data = resp.body

            if data.empty?
                return nil
            end
            result = JSON.parse(data)
            result["results"]

        end
    end
end
