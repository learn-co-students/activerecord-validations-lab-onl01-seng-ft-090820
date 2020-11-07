class TitleValidator < ActiveModel::Validator
    def validate(record)
        unless ["Won't Believe", "Secret", "Top #{/[0-9]*/}", "Guess"].any? { |clickbait| record.title.include? clickbait }
            record.errors[:title] << "Your title needs to be more clickbait-y!"
        end
    end
end

  