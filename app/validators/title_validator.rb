class TitleValidator < ActiveModel::Validator
    def validate(t)
        if t.title != nil
            unless t.title.include?("Won't Believe") || t.title.include?("Secret") || t.title.include?("Top [number]") || t.title.include?("Guess")
                t.errors[:title] << "This title is not click bait-y enough"
            end
        end
    end
end