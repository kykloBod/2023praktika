class Product < ApplicationRecord

    mount_uploader :avatar, AvatarUploader
    has_many :orderables
    
    validates :price, presence: true,
                      length: {maximum: 15},
                      numericality: {
                        only_integer: true,
                        greater_than_or_equal_to: 1,
                        less_than_or_equal_to: 10000000
                      }

                        validates :rating, presence: true,
                        length: {maximum: 2},
                        numericality: {
                          only_integer: true,
                          greater_than_or_equal_to: 1,
                          less_than_or_equal_to: 10
                        }

                        validates :name, presence: true,
                        length: {maximum: 22}
                        
end
