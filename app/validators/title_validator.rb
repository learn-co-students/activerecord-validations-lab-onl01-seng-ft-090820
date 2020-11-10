class TitleValidator < ActiveModel::Validator
    
    def validate(record)
        unless record.title.include? ("Won't Belive")
            record.errors[:title] << "Must include 'Won't Belive', 'Secret', 'Top[number], or 'Guess'"
        end
    end
    
end