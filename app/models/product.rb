class Product < ApplicationRecord
# validations
    validates :name,:description, presence: true
    validates :name, length: {minimum: 4 ,maximum:50}
    validates :name,format: {with: /\A[a-zA-Z]+\z/,message: "only letters are allowed"}
    validates :articles_id ,numericality: true
    validate  :validate_product_id
# custom validation
    def validate_product_id
        if self.articles_id.present?
            puts "Your eneterd Article Id is #{articles_id}"
        else
            puts "You didnt entered any Article Id"
        end
    end
end
