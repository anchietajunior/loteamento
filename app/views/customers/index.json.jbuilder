json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :cpf, :first_tel, :second_tel, :email, :marital_state, :maried, :gender
  json.url customer_url(customer, format: :json)
end
