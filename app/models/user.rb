class User < ActiveRecord::Base
  belongs_to :state
  has_many :dealers
  has_many :fa_activities
  has_many :sr_activities
  belongs_to :manager, class_name: "User"
  has_many :users, class_name: "User", foreign_key: "manager_id"
  scope :area_man, -> { users.where(role: 'area_manager') }


  before_create :auto_username
  before_create :lower_email
  after_update :send_admin_mail
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def lower_email
    self.email = email.downcase
  end

  def auto_username
    number=0
    number =User.where(:first_name=>self.first_name).where(:sur_name=>self.sur_name).count
    self.user_name=(self.first_name[0]+self.sur_name).to_s.downcase+number.to_s
  end

  def active_for_authentication?
    super && approved?
  end

  def fullname
    "#{first_name} #{sur_name}"
  end

  def innactive_message
    if !approved?
      :not_approved
    else
      super
    end
  end

  def send_admin_mail
    if self.approved_changed? && self.approved==true
      AdminMailer.new_user_waiting_for_approval(self).deliver
    end

  end

  ##where im getting sales rep from in sr dropdown code
  def sales_rep
    users.where(role: 'sale_representative')
  end




end
