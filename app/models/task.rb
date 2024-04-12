class Task < ApplicationRecord
    belongs_to :user
    validates :title, presence: true
    validates :status, inclusion: { in: ['To Do', 'In Progress', 'Done'] }
end
