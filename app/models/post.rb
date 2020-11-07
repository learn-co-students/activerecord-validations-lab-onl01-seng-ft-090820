class Post < ActiveRecord::Base
    # include ActiveModel::Validations
    # validates_with TitleValidator
    validate :is_clickbait?
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}

    def is_clickbait?
        if [/Won't Believe/i, /Secret/i, /Top[0-9]*/i, /Guess/i].none? { |clickbait| clickbait.match(title) }
            errors.add(:title, "needs to be more clickbait-y!")
        end
    end
end
