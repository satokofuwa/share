class ConfirmPostsMailer < ApplicationMailer
  def confirm_posts_mail(confirm)
    @confirm = confirm
    mail to: @confirm.email,subject: "投稿確認メール"
  end
end
