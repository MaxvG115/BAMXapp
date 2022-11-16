require 'sinatra'
require 'stripe'
# This is your test secret API key.
Stripe.api_key = 'sk_test_51M21wrEtKtZ3YtADHOsWVsUEcbtNsA9wNwZ0AWemULb2kK8ou9aMhk34s0y3VWo5PXZhuFNG1lbDVPIvGeBuP3lo009XSKVhxp'

set :static, true
set :port, 4242

# Securely calculate the order amount
def calculate_order_amount(_donation)
  # Replace this constant with a calculation of the order's amount
  # Calculate the order total on the server to prevent
  # people from directly manipulating the amount on the client
30000
end

# An endpoint to start the payment process
post '/create-payment-intent' do
  content_type 'application/json'
  data = JSON.parse(request.body.read)

  # Create a PaymentIntent with amount and currency
  payment_intent = Stripe::PaymentIntent.create(
    amount: calculate_order_amount(data['donation']),
    currency: 'mxn',
    automatic_payment_methods: {
      enabled: true,
    },
  )

  {
    clientSecret: payment_intent['client_secret']
  }.to_json
end