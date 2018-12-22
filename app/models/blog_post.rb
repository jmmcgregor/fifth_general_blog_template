class BlogPost < ApplicationRecord
  paginates_per 6
  has_one_attached :main_image

  extend FriendlyId
  friendly_id :seo_title, use: :slugged
  # def to_param
  #   self.seo_title.parameterize
  # end
end
