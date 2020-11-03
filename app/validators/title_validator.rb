class TitleValidator < ActiveModel::Validator
    def validate(record)
      unless record.title.start_with? ("Won't Believe")
        record.errors[:title] << "This title is not click bait-y enough"
      end
    end
  end