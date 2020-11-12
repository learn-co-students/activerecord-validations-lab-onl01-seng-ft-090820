class ClickbaitValidator < ActiveModel::Validator
    def validate(record)
        if record.post.none?
    end 
end 