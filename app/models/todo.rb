class Todo < ActiveRecord::Base
  validates_presence_of :name, :description
  has_many :tags

  def name_only?
    description.blank?
  end
end