json.array!(@testimonials) do |testimonial|
  json.extract! testimonial, :id, :date, :name, :company, :comment
  json.url testimonial_url(testimonial, format: :json)
end
