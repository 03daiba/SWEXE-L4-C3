require 'bcrypt'
class TopController < ApplicationController
    
    def main
        if session[:login_uid]
            render "main"
        else
            render "login"
        end
    end

    
    
    def login
        #login_password = BCrypt::Password.new(params[:pass])
        #if User.find_by(uid: params[:uid], pass: params[login_password])
        #    session[:login_uid] = params[:uid]
        #    redirect_to root_path
        #else
        #    render 'error'
        #end
    #end
        
        
        #user = User.find(uid: params[:uid])
        #login_password = BCrypt::Password.new(user.pass)
        #if login_password == params[:pass]
        #    session[:login_uid] = params[:uid]
        #    redirect_to root_path
        #else
        #    render 'error'
        #end
        
        
        #user_pass = User.select("pass")[0]
        
        
        #user = User.find(uid: params[:uid])
        #signup_password = BCrypt::Password.create(params[:pass])
        
        signup_password = User.select(:pass)
        pass = BCrypt::Password.new(signup_password[0][:pass])
        if user = User.find_by(uid: params[:uid]) and pass == params[:pass]
            session[:login_uid] = params[:uid]
            session[:login_pass] = params[:pass]
            redirect_to root_path
        else
            render 'error'
        end
        

    end
        
        
        #if BCrypt::Password.new(user.pass) == params[:pass]
        #    session[:login_uid] = params[:uid]
        #    redirect_to root_path
        #else
        #    render 'error'
        #end
        
    
    def logout
       session.delete(:login_uid) 
       redirect_to root_path
    end
end
