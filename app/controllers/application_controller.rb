class ApplicationController < ActionController::Base
  #このApplicationcontrollerは全てのコントローラで継承されてるから、このコントローラ内に書いたことは、全ての
  #コントローラで適用される
  
  include SessionsHelper
  #Helper に定義していた logged_in? を下で使用してるけど、Controller から Helper のメソッドを使うことはデフォルトではできないから、
  #ここでincludeする必要がある
  
  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
  
  def counts(user)
    @count_microposts = user.microposts.count
    @count_followings = user.followings.count
    @count_followers = user.followers.count
    @count_likes = user.likes.count
  end
end
