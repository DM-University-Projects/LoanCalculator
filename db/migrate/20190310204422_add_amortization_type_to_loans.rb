class AddAmortizationTypeToLoans < ActiveRecord::Migration[5.1]
  def change
  	add_column :loans, :amortization_type, :string
  end
end
