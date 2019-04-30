Rails.application.routes.draw do
  get "/fortune_url" => 'api/fortunes#random_fortune'
  get "/lotto_url" => 'api/fortunes#lotto_numbers'
end
