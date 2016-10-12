json.extract! bank, :id, :name, :branch, :account_number, :address, :phone, :created_at, :updated_at
json.url bank_url(bank, format: :json)