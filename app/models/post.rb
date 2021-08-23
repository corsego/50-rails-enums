class Post < ApplicationRecord
  validates :title, presence: true

  enum status: { draft: 'draft', published: 'published', banned: 'banned' }, _default: 'draft'

  def to_s
    title
  end
end
