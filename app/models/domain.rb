class Domain < ActiveRecord::Base
  belongs_to :app

  validates :name, presence: true, uniqueness: { scope: :app_id }
end
