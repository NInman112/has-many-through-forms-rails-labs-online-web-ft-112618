class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories


  def categories_attributes=(categories_hashes)
    categories_hashes.each do |i, catagory_attributes|
      category = Category.find_or_create_by(name: categories_attributes[:name])
    end
    #raise categories_hashes.inspect
end
