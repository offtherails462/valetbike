class CheckoutsController < ApplicationController

    before_action :require_user_logged_in!

    def create
        session =
            Stripe::Checkout::Session.create({
                success_url: root_url(success: true),
                cancel_url: root_url, alert: "Purchase cancelled",
                line_items: [
                    {price: 'price_1Kg0J9GvSMIZGmmssS7p1WIU'}, 
                    {price: 'price_1Kg0InGvSMIZGmmsKA2cMlpH'},
                    {price: 'price_1Kg0I3GvSMIZGmms0tx4yR2V'},
                    {price: 'price_1Kg0H9GvSMIZGmms5LMqY6BB'},
                  ],
                mode: "payment"
            })

        redirect_to session.url, allow_other_host: true
    end

    private

    def checkout_params
        params.require(:checkout).permit(items: [])
    end 

end