class CommentsController < ApplicationController
	before_filter :authorise
	
def create 
		@review = Review.find params[:pizza_id]
		@comment = @pizza.comments.new(comment_params)
		@comment.customer_id = @current_customer.id
		@comment.save
		
		respond_to do |format|
			format.html {redirect_to @pizza}
		end
end

private
def comment_params
	params.require(:comment).permit(:content, :pizza_id, :customer_id, :stars)
	
end
end		
		