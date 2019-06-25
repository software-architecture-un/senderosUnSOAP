class WsSenderosUnController < ApplicationController

    soap_service namespace: 'urn:WashOutBank', camelize_wsdl: :lower
    soap_action "getCountPlaces",
                :args   => { :idUser => :integer},
                :return => {:user =>:string, :count_places => :integer, :message => :string}
    def getCountPlaces
        @user = User.get_user(
        params[:idUser]
        )

        @places = Place.get_place(
            params[:idUser]
        )
        if @user.status = 200
            render :soap => {:user => @user.email, :count_places => @places.size, :message => @user.message}
        else
            render :soap => {:user => '', :count_places => @places.size, :message => @user.message }
        end
        
    end
end
