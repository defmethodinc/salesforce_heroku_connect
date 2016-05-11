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
# ----------------+-----------------------------+------------------------------------------------------+----------+--------------+-------------
# accountsource  | character varying(40)       |                                                      | extended |              |
# active__c      | character varying(255)      |                                                      | extended |              |
# systemmodstamp | timestamp without time zone |                                                      | plain    |              |
# name           | character varying(255)      |                                                      | extended |              |
# createddate    | timestamp without time zone |                                                      | plain    |              |
# billingcity    | character varying(40)       |                                                      | extended |              |
# isdeleted      | boolean                     |                                                      | plain    |              |
# sfid           | character varying(18)       |                                                      | extended |              |
# annualrevenue  | double precision            |                                                      | plain    |              |
# _hc_err        | text                        |                                                      | extended |              |
# _hc_lastop     | character varying(32)       |                                                      | extended |              |
# accountnumber  | character varying(40)       |                                                      | extended |              |
# id             | integer                     | n