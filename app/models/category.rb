class Category < ActiveRecord::Base
  has_many :post_categories
  has_many :posts, through: :post_categories

  def category_join

  end 
end
