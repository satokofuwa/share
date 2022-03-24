class ConfirmPostsMailerController < ApplicationController
  before_action :set_comfirm, only: [:show, :edit, :update, :destroy]
      
   
    def create
      @confirm = Confirm.new(confirm_params)
      if @confirm.save
         ConfirmPostsMailer.confirm_mail(@confirm).deliver  
         redirect_to confirms_path, notice: 'confirmation file was successfully sended.'
       else
          render :new
       end
    end
      
    private 
      def set_confirm
        @confirm = Confirm.find(params[:id])
       end
      
       def confirm_params
         params.require(:confirm).permit(:name, :email, :content)
       end
end
