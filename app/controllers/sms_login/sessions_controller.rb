require 'sms_login_handler.rb'
require 'sms_login.rb'

class SmsLogin::SessionsController < ApplicationController
  include SmsLogin::SmsLoginHandler
  
  def sign_in
    if sign_in_with_sms_login_token
      render plain: "로그인에 성공했습니다."
    else
      render plain: "로그인에 실패!"
    end
  end
end
