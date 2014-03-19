class Charge < ActiveRecord::Base
 belongs_to :customer
 
  validates :customer_id, :presence => true
  validates :currency, inclusion: { in: %w(usd cents),
    message: "%{value} is not a valid" }
    
  scope :success, -> { where(paid:true)}
  scope :failed, -> { where(paid:false, refunded:false)}
  scope :disputed, -> { where(paid:false, refunded:true)}
  

end
