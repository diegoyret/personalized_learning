class Task < ActiveRecord::Base
has_many :submissions
belongs_to :bloque
end
