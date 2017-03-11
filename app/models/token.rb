class Token < ApplicationRecord

  def self.generate_api_key
    loop do
      token = SecureRandom.base64.tr('+/=', 'Sid')
      break Token.create!(api_key: token) unless Token.exists?(api_key: token)
    end
  end

end
