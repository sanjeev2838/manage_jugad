class Ticket < ActiveRecord::Base
  belongs_to :project
  validates :description, presence: true,
            length: { minimum: 10 }

end
