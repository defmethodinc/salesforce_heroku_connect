class Account < ActiveRecord::Base
  include ::SalesForceModel
  has_many :contacts, :primary_key => "sfid", :foreign_key => "accountid"

  def self.table_name
    'account'
  end

end