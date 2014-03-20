class Transaction < ActiveRecord::Base

  scope :successful, lambda { where(paid: true) }
  scope :failed, lambda { where(paid: false, refunded: true) }
  scope :disputed, lambda { where(paid: false, refunded: false) }

  belongs_to :customer

end
