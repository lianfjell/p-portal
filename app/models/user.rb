class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :articles

  has_attached_file :avatar, styles: {  medium: "300x300>", 
                                        nav_thumb: "30x30#",
                                        post_thumb: "50x50#", 
                                        post_form_thumb: "60x60#", 
                                        profile_page_image:"130x130#" }, 
                                        default_url: "/:style_missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
