class Listing < ActiveRecord::Base
 #has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  has_attached_file :image, :styles => { :medium => "200x200>", :thumb => "100x100>" }, :default_url=> "/images/default.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
