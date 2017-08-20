class User < ActiveRecord::Base

  
  # Relaciones con BD
  has_many :questions
  has_many :answers
  
  
  
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
         
  protected
  
  def confirmation_required?
    false
  end
  
end
