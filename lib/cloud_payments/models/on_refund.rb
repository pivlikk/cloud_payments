module CloudPayments
  class OnRefund < Model
    property :id, from: :transaction_id, required: true
    property :payment_transaction_id, required: true
    property :amount, transform_with: DecimalTransform, required: true
    property :date_time, transform_with: DateTimeTransform
    property :invoice_id
    property :account_id
    property :email
  end
end
