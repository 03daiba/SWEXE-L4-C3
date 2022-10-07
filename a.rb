require 'bcrypt'
signup_password = BCrypt::Password.create("sanriko")
p signup_password
#user = User.find(uid: params[:uid])
#login_password = BCrypt::Password.new(user.pass)
#if login_password == params[:pass]

login_password = BCrypt::Password.new(signup_password)
if login_password == "my password" #←login_password.==(“my password”)
    p "ログイン成功"
end
