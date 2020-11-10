class TitleValidator < ActiveModel::Validator

    def validate(record)
      clickbait = ("Won't Believe" || "Secret" || "Top [number]" || "Guess")
        if record.title 
          unless record.title.include?(clickbait)
            record.errors[:title] << "Title must be clickbait"
          end 
        end 
    end
end