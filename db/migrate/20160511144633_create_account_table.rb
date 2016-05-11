class CreateAccountTable < ActiveRecord::Migration
  def change

    unless ActiveRecord::Base.connection.table_exists? 'account'
      create_table :account do |t|
        t.string :accountsource
        t.string :active__c
        t.datetime :systemmodstamp
        t.string :name
        t.datetime :createddate
        t.string :billingcity
        t.boolean :isdeleted
        t.string :sfid
        t.decimal :annualrevenue
        t.string :_hc_err
        t.string :_hc_lastop
        t.string :accountnumber
      end
    end
  end
end
