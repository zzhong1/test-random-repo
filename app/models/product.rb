class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews
  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
 
  validates :price, :format => { :with => /\A\d+(\.\d{1,2})?\z/}

  def average_rating
  	sum=0.0
  	count=0.0
  	self.reviews.each{|r|
  		count=count+1
  		sum+=r.rating
  	}

  count==0? 0 : sum/count
  	
 

  end
end
