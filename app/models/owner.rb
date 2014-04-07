class Owner < ActiveRecord::Base
  EMAIL_REGEX = /\A(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})\Z/

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, format: {with: EMAIL_REGEX }
  has_many :buildings
end
