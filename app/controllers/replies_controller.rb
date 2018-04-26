class RepliesController < ApplicationController
  before_action :set_reply, only: [:show, :edit, :update, :destroy]

  # POST /replies
  # POST /replies.json
  def create
    @reply = Reply.new(reply_params)
    respond_to do |format|
      if @reply.save
        format.html { redirect_to posts_path, notice: 'Reply was successfully created.' }
        format.json { render :show, status: :created, location: @reply }
      else
        format.html { redirect_to posts_path}
        format.json { render json: @reply.errors, status: :unprocessable_entity }
      end
    end
  end




  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reply
      @reply = Reply.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reply_params
      params.require(:reply).permit(:name, :email, :message, :post_id)
    end
end
