class Planner < ApplicationRecord
    has_secure_password
    has_many :posts
    has_many :images, class_name:"Image"
end
