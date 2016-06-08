class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, :presence => true, :uniqueness=> true       
  has_many :submissions,:class_name => "Submission", :foreign_key => "user_id"
  has_many :tasks, :through => :submissions,:foreign_key => "user_id"
  has_many :submitted_tasks, :through => :submissions, :source => :task
end
