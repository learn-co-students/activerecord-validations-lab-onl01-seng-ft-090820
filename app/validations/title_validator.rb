class TitleValidator < ActiveModel::Validator 
    def validate(record)
        unless record.title && record.title.match?(/Won't Believe/) 
          record.errors[:title] << "Not clickbait-y enough!"
        end
      end

end