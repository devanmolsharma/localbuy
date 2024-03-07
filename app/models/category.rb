class Category < ApplicationRecord
    has_many :items
    has_one_attached :image
    accepts_nested_attributes_for :items

    def self.ransackable_attributes(auth_object = nil)
        ["name"]
      end

      def self.ransackable_associations(auth_object = nil)
        ["items",'image']
      end
end
