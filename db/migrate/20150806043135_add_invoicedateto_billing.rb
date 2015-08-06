class AddInvoicedatetoBilling < ActiveRecord::Migration
  def change
    add_column :billings, :invoicedate, :date
  end
end
