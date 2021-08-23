class Post < ApplicationRecord
  validates :title, presence: true

  enum status: { draft: 0, published: 1, banned: 13, in_review: 534 }

  def to_s
    title
  end
end
