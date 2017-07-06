class Photo < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many(:tags)
  has_and_belongs_to_many(:favorites)
  has_attached_file :file, :styles => { :medium => "600x600>", :thumb => "100x100#" }, :default_url => "/images/:style/notfound.jpg"
  validates_attachment_content_type :file, :content_type => /\Aimage\/.*\Z/
end
