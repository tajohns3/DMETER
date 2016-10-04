class User < ActiveRecord::Base
  before_create :auto_username
  after_create :send_admin_mail
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def auto_username
    number=0
    number =User.where(:first_name=>self.first_name).where(:sur_name=>self.sur_name).count
    self.user_name=(self.first_name[0]+self.sur_name).to_s.downcase+number.to_s
  end

  def active_for_authentication?
    super && approved?
  end

  def innactive_message
    if !approved?
      :not_approved
    else
      super
    end
  end
  #redo these
  def send_admin_mail
    AdminMailer.new_user_waiting_for_approval(self).deliver
  end

  def self.send_reset_password_instructions(attributes={})
    recoverable = find_or_initialize_with_errors(reset_password_keys, attributes, :not_found)
    if !recoverable.approved?
      recoverable.errors[:base] << I18n.t("devise.failure.not_approved")
    elsif recoverable.persisted?
      recoverable.send_reset_password_instructions
    end
    recoverable
  end

end
