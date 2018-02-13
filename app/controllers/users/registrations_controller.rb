# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  def create
    super do |user|
      role = Role.find_by_name("Member")
      user.role = role
      user.save
    end
  end
end
