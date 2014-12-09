json.array!(@customer_estimates) do |customer_estimate|
  json.extract! customer_estimate, :id, :name, :email, :phone
  json.url customer_estimate_url(customer_estimate, format: :json)
end
