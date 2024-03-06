class Item < ApplicationRecord
    belongs_to :category
    belongs_to :user
    has_one_attached :image

    def self.ransackable_attributes(auth_object = nil)
        ["description","name", "price","user_id","category_id"]
      end

      def self.ransackable_associations(auth_object = nil)
        ["category","user", "images_attachments", "images_blobs"]
      end
end
