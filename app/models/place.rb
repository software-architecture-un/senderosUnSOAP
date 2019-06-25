require 'httparty'
class Place
    include HTTParty
    format :json

    attr_accessor :size

    def initialize(response)
        @size = response['total']
    end

    def self.get_place(id_user)
        response = get("http://10.128.0.4:5000/scoreserviceUsn/#{id_user}")
        if response.success?
            new(response)
        else
            raise response.response
        end
    end
    
end