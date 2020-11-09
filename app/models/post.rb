class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 25 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
    validate :clickbait



    def clickbait
        click = [/Won't Believe/i, /Secret/i, /Guess/i, /Top[0-9]/i]
            if click.none? do |clickbaity|
                clickbaity.match(title)
                end 
            
                errors.add(:title, "This post isn't clickbait-y enough. Try again.")

            end 
    end 
end 