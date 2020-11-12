class CategoryValidator < ActiveModel::Validator
    def validate(record)
        unless record.category.match?(Fiction)
            record.errors[:email] << "Category invalid."
        end
    end
end