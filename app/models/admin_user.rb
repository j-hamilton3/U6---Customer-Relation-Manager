class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable

  def self.ransackable_attributes(auth_object = nil)
    excluded_attributes = ['id', 'encrypted_password', 'password_reset_token', 'reset_password_sent_at', 'remember_created_at', 'sign_in_count', 'current_sign_in_at', 'last_sign_in_at', 'current_sign_in_ip', 'last_sign_in_ip', 'confirmation_token', 'confirmed_at', 'confirmation_sent_at', 'unconfirmed_email', 'failed_attempts', 'unlock_token', 'locked_at', 'owner']
    (column_names - excluded_attributes).sort
  end
end
