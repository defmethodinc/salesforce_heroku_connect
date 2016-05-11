module SalesForceModel
  extend ActiveSupport::Concern

  included do
    after_create :set_created_at
    after_create :set_modified
    after_update :set_modified
  end

  def set_created_at
    update_column(:createddate, DateTime.now)
  end

  def set_modified
    update_column(:systemmodstamp, DateTime.now)
  end
end