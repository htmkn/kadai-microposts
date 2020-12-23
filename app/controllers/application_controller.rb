class ApplicationController < ActionController::Base
  
  include SessionsHelper
  #Helper に定義していた logged_in? を下で使用してるけど、Controller から Helper のメソッドを使うことはデフォルトではできないから、
  #ここでincludeする必要がある
  
  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
end
