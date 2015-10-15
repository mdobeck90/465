class HighScore<ActiveRecord::Base

    validates :user, presence: true, format: {with: /[a-zA-Z\s]/,
        message: "Only allows letters in the User input."}
    validates :game, presence: true, format: {with: /[a-zA-Z\s]/,
        message: "Only allows letters in the Game input."}
    validates :score, presence: true, numericality: {only_integer:true, greater_than_or_equal_to: 0}

end
