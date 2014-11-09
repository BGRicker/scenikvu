class Category < ActiveRecord::Base
  validates :slug, uniqueness: true
  has_many :posts


  def self.find_by_slug(slug)
    Category.where(:slug => slug).first
  end

  def to_param
    self.slug
  end

end
