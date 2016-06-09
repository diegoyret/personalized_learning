class Bloque < ActiveRecord::Base
has_many :tasks,:class_name => "Task", :foreign_key => "bloque_id"
# has_many :submissions,:class_name => "Submission", :foreign_key => "user_id"

end
