require 'httparty'
class User
    include HTTParty
    format :json

    attr_accessor :name, :document, :age, :email, :message, :status

    def initialize(response)
        @name = response['content']['name']
        @document = response['content']['document']
        @age = response['content']['age']
        @email = response['content']['email']
        @message = response['message']
        @status = response['status']
    end

    def self.get_user(id_user)
        response = get("http://35.224.121.94:3001/users/#{id_user}")
        if response.success?
            new(response)
        else
            raise response.response
        end
    end
    

end