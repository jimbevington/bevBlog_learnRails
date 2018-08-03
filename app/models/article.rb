class Article < ApplicationRecord
  has_many :comments, dependent: :destroy # this will delete all Comments associated with an Article
  # ensures all articles have a title with length of 5 chars min
  validates :title, presence: true,
                    length: { minimum: 5 }
end
