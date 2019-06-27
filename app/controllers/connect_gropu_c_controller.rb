class ConnectGropuCController < ApplicationController

    # POST /SAOP_External
    def consult
        @responseSoap = Responsesoap.new(
        params[:username]
        )
        render json: {value: @responseSoap.count_files}
    end
    

end
