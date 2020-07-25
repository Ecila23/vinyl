class Record < ApplicationRecord
  validates_presence_of(:artist, :title, :year)
  validates_uniqueness_of(:slug)
  before_save(:create_slug)

  def create_slug
    self.slug = title.downcase.gsub(' ', '-')
  end
end