require 'pry'

class TitleValidator < ActiveModel::Validator
    def validate(record)
        # binding.pry
        if record.title
            unless record.title.include?("Won't Believe" || "Secret" || "Top" || "Guess")
                record.errors[:title] << "Make this more clickbait-y!"
            end
        end
    end
end