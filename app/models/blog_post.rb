

class BlogPost < ApplicationRecord

  #** DATABASE SEARCH **#
  searchable do
    string :title
  end


  has_one_attached :main_image

  #** SEO TITLE URL **#
  extend FriendlyId
  friendly_id :seo_title, use: :slugged

  def dateConversion
    published = "PUBLISHED ON "
    published = published + self.created_at.strftime("%B %e, %Y").upcase
  end
end
