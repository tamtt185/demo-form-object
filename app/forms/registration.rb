class Registration
  include ActiveModel::Model

  attr_accessor :company_name, :company_address, :email, :user_name, :password

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :company_name, presence: true
  validates :company_address, presence: true

  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }
  validates :user_name, presence: true
  validates :password, presence: true

  def save
    if valid?
      create_user
      create_company
      send_mail
      true
    else
      false
    end
  end

  private
  def create_user
    @user = User.create name: user_name, email: email, password: password
  end

  def create_company
    @company = Company.create name: company_name, address: company_address, user: @user
  end



  def send_mail
    # sent notifications to admin
  end
end
