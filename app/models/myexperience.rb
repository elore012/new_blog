class Myexperience < ApplicationRecord
    validates :name,presence:true,uniqueness:true,length:{minimum:5}
    validates :title,presence:true,uniqueness:true,length:{minimum:5}
    validates :body,presence:true,length:{minimum:5}
end
