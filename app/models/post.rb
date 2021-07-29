class Post < ApplicationRecord
  belongs_to :author
  has_many :elements

  has_one_attached :header_image
  scope :popular, -> { select('post_id, count(post_id) as count').group(:post_id).order('count desc').limit(10) }
end
