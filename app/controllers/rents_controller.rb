class RentsController < ApplicationController
    def index
        @current_user = Current.user
        @rent_records = Rent.where(:user_email => @current_user.email).all.order(created_at: :desc)
        
    end
    
    def new
        #require_user_subscribed!
        @rented_bike = Rent.new
    end

    def create
        @current_user = Current.user
        user_email = @current_user.email
        @rented_bike = Rent.new(rent_params)
        @rented_bike.user_email = user_email

        respond_to do |format|
            if @rented_bike.save

                puts(rent_params[:bike_id])
                @bike = Bike.find_by(identifier: rent_params[:bike_id])
                @bike.current_station_id = nil

                @bike.save
                format.html { redirect_to stations_path, notice: 'Bike was successfully Rented.' }
                format.json { render json: @rented_bike, status: :created, location: @rented_bike }
                #format.js 

                #Bike.find_by_id(rent_params[:bike_id]).update({:current_station_id => nil})
                
                ##TODO, catch if an error occur
               
            else
                format.html { render action: "new" }
                format.json { render json: @rented_bike.errors, status: :unprocessable_entity }
                #format.js   
            end
        end
    end


    def edit
        #require_user_subscribed!
        @current_user = Current.user
        user_email = @current_user.email
        puts"&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
        puts(user_email)
        puts"&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
        # @current_user = User.find_by(email: params[:email])
        @rented_bike = Rent.find_by(user_email: @current_user.email)
        puts"&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
        puts(@rented_bike.id)
        puts"&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    end

    def update
        @current_user = Current.user
        user_email = @current_user.email
        @rented_bike = Rent.find_by(user_email: @current_user.email,bike_id: rent_params[:bike_id])
       
        puts "#########################"
        puts(return_params[:bike_id])
        puts(@rented_bike.id)
        puts "#########################"

        if @rented_bike.update(rent_params)
            
            @bike = Bike.find_by(identifier: rent_params[:bike_id])
            @bike.current_station_id = @rented_bike.destination_station_id

            @bike.save
            ##TODO, catch if an error occur

            redirect_to stations_path, notice: "Your bike has been returned successfully!"
        else
            flash[:alert] = "Ooops, an error occured can you please refill the form to return the bike? Make sure to fill all the required sections! You can also check your records to make sure you are returning the right bike."
            render('edit')
        end
    end

    def rent_params
        params.require(:rent).permit(:bike_id,:origin_station_id, :user_email, :destination_station_id)
    end

    def return_params
        params.permit(:bike_id,:origin_station_id,:user_email, :destination_station_id)
    end

end
