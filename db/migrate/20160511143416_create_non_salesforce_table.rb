class CreateNonSalesforceTable < ActiveRecord::Migration
  def change
    create_table :non_salesforce_tables do |t|
      t.string :name
    end
  end
end
