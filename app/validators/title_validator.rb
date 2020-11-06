class TitleValidator < ActiveModel::Validator
    def validate(record)
        if record.title
            sayings = ["Won't Believe", "Secret", "Top[number]", "Guess"]
            if !sayings.detect { |i| record.title.include?(i) }
                record.errors[:title] << "must include 'Won't Belive', 'Secret', 'Top[number], or 'Guess'"
            end
        end
    end
end