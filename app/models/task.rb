class Task < ApplicationRecord
  belongs_to :project
  has_many :users
  belongs_to :users, :optional => true

  validates :status, inclusion: { in: [ 'not-started', 'in-progress', 'completed']}
  STATUS_OPTIONS = [
    ['Not Started','not-started'],
    ['In Progress','in-progress'],
    ['Completed','completed']
  ]

  validates :todo, inclusion: { in: [ 'bug', 'feature']}
  TODO_OPTIONS = [
    ['Bug','bug'],
    ['Feature','feature']
  ]
end
