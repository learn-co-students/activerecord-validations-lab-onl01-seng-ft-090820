class Post < ActiveRecord::Base
    # must have a title
    validates :title, presence: true
    # content is at least 250 characters long
    validates :content, length: {minimum: 250}
    # summary is max 250 characters
    validates :summary, length: {maximum: 250}
    # category is either Fiction or Non-Fiction (requires inclusion validator)
    validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
    # title must include "Won't Believe", "Secret", "Top [number]", or "Guess" (custom validation)
    validates_with TitleValidator
end
