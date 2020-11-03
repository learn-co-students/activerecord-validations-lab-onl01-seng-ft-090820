class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
    validate :is_clickbait?

	def is_clickbait?
		if title != nil
			clickbait = ["Won't Believe", "Secret", "Top", "Guess"]
			errors.add(:base, 'Must be clickbait') unless clickbait.any? {|bait| title.include? bait}
		end
	end
    # validates_with TitleValidator
end
