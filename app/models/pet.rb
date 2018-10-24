class Pet < ApplicationRecord
belongs_to :user

has_many :liker_pets, class_name: "Like", foreign_key: :liked_id
has_many :likers, through: :liker_pets, source: :liker

has_many :liked_pets, class_name: "Like", foreign_key: :liker_id
has_many :liked, through: :liked_pets, source: :liked

# has_many :dependent_categories, class_name: "Dependency", foreign_key: :dependee_id
#     has_many :dependents, through: :dependent_categories, source: :dependent

#     has_many :dependency_categories, class_name: "Dependency", foreign_key: :dependent_id
#    has_many :dependencies, through: :dependency_categories, source: :dependee
end