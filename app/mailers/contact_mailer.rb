class ContactMailer < ApplicationMailer
    def contact_mail(post)
        @post = post
        mail to: @post.user.email, subject: "投稿確認メール"
       # @contacts = @users.email.find_by[post.user_id]
       #mail to: @contacts.email, subject: "投稿確認メール"
    end
end
