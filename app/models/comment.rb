class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: :reject_posts

  def reject_posts(attributes)
    binding.pry
    attributes['title'].blank?
  end

end
