class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 25 }
    validates :content, length: { maximum: 200 }
    validates :category, inclusion: 
end
