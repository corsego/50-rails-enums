class Post < ApplicationRecord
  validates :title, presence: true

  STATUSES = [:draft, :published, :banned]

  validates :status, inclusion: { in: Post::STATUSES }

  scope :draft, -> { where(status: 'draft') }
  scope :published, -> { where(status: 'published') }
  scope :banned, -> { where(status: 'banned') }

  def banned?
    status == 'banned'
  end

  def to_s
    title
  end
end
