class User < ActiveRecord::Base
  before_create :auto_username
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def auto_username
    number=0
    number =User.where(:first_name=>self.first_name).where(:sur_name=>self.sur_name).count
    self.user_name=(self.first_name[0]+self.sur_name).to_s.downcase+number.to_s
  end
end
