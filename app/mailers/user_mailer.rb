class UserMailer < ActionMailer::Base
  default from: "from@example.com"
  def estimation_confirmation(customer_estimate)
  	@customer_estimate = customer_estimate  	
  	mail(:to => "kenkauluwehi@gmail.com", :subject => "Estimation")  	
  end
  def estimation_confirmation_to_user(customer_estimate)
  	@customer_estimate = customer_estimate  	
  	mail(:to => customer_estimate.email, :subject => "Estimation")
  end
end
