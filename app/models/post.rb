class Post < ApplicationRecord
    mount_uploader :image, ImageUploader
    belongs_to :user, class_name: "User"
    belongs_to :planner, class_name: "Planner"
end
