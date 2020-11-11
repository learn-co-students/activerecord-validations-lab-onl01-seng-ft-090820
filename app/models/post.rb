class Post < ActiveRecord::Base
    validates :title, presence: true 
    validates :category, inclusion: { in: %w{Fiction Non-Fiction} }
    validates :content, :length => { :minimum => 250 } 
    validates :summary, :length => { :maximum => 250 } 
    validate :clickbait

    def clickbait
        clicks = [/Won't Believe/i, /Secret/i, /Guess/i, /Top[0-9]/i]
       if clicks.none? do |clickbaity|
            clickbaity.match(title)
       end
        errors.add(:title, "This post isn't clickbait-y enough. Try again.") 
        end
    end

end
