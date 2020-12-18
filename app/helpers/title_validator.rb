class TitleValidator < ActiveModel::Validator
    def validate(record)
        if record.title
            does_include = ["Won't Believe", "Secret", "Top[number]", "Guess"]
            if does_include.detect {|word| record.title.include?(word)}.nil?
            record.errors[:title] << "Must contain clickbait"
            end
        end
    end
end