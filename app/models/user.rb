class User < ApplicationRecord
    has_many :items
    accepts_nested_attributes_for :items
    has_one_attached :profile_picture
    validates :password, presence: true
    has_secure_password


  def self.ransackable_attributes(auth_object = nil)
    ["address","email", "full_name", "phone_number", "verified"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["items","profile_picture"]
  end

end

