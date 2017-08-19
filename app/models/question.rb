class Question < ActiveRecord::Base
    belong_to :user
    has_many :answers
end
