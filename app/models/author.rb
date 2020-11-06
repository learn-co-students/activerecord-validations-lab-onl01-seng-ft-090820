class Author < ActiveRecord::Base
    #must have a name
    validates :name, presence: true
    #name must be unique
    validates :name, uniqueness: true
    #phone number must be 10 digits
    validates :phone_number, length: {is:10}
end
