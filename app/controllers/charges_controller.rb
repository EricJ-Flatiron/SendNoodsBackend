class ChargesController < ApplicationController
    skip_before_action :logged_in?

    def create  
      Stripe.api_key = 'sk_test_51H9voND7h6J7ftZvAGKouN9h8Uj0B1VpYt1XZsOKznHx86objQQOB5cwCZFwnX4T8Pq0NCjMcdhe06LiuHxUlVvs00RYDjadPE'
      
    #   order = Order.find(params[:orderId])
    #   amount = order.noodles.sum(:cost)

      @intent = Stripe::PaymentIntent.create({
          amount: 10800,
          currency: 'usd',
          description: 'Send Noods',
          metadata: {integration_check: 'accept_a_payment'},
      })
      render json: { clientSecret: @intent.client_secret }
    end

    def show
      Stripe.api_key = 'sk_test_51H9voND7h6J7ftZvAGKouN9h8Uj0B1VpYt1XZsOKznHx86objQQOB5cwCZFwnX4T8Pq0NCjMcdhe06LiuHxUlVvs00RYDjadPE'
      
    #   order = Order.find(params[:orderId])
    #   amount = order.noodles.sum(:cost)

      @intent = Stripe::PaymentIntent.create({
          currency: 'usd',
          metadata: {integration_check: 'accept_a_payment'},
      })
    end

end
