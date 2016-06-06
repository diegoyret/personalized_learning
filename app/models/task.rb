class Task < ActiveRecord::Base
has_many :submissions,:class_name => "Submission", :foreign_key => "task_id"
belongs_to :bloque, :class_name => "Bloque", :foreign_key => "bloque_id"
has_many :students, :through => :submissions, :source=>:user
end
