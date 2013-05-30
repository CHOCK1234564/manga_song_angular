class Musique < ActiveRecord::Base
  attr_accessible :title, :name
  validates :name, :presence => true
  validates :title, :presence => true

  has_many :comments, :foreign_key => 'music_id'
  
  has_attached_file :audio  ,
                    :url => "/assets/:class/:id/:attachment/:style.:extension",
                    :path => ":rails_root/public/assets/:class/:id/:attachment/:style.:extension"

end
