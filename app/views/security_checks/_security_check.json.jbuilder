json.extract! security_check, :id, :bank_name, :check_number, :bank_account, :amount, :issue_date, :status, :created_at, :updated_at
json.url security_check_url(security_check, format: :json)