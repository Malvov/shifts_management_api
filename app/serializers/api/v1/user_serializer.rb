# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  username        :string           not null
#  email           :string           not null
#  password_digest :string
#  role            :string           default("user"), not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
module API
  module V1
    class UserSerializer < ApplicationSerializer
      attributes :id, :email, :username, :role
      has_one :employee
    end
  end
end

