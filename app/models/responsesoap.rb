require 'savon'
class Responsesoap
    attr_reader :count_files

    def initialize(userMail)
        filesSOAP = Savon.client(wsdl: "http://35.237.206.16:2090/wsfiles/wsdl")
        mailMessage = { 'owner' => userMail }
        
        responseFiles = filesSOAP.call(:send_number, message:  mailMessage)
        puts responseFiles
        if responseFiles.success?
            data = responseFiles.to_array(:send_number_response, :value).first
            if data
                @count_files = data
            end
        end
    end
    
end