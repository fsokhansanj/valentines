class StaticPagesController < ApplicationController
  def home
  	if params[:answer]
    	@string = StringManipulator.new(params[:answer])
    	@string.array_counter
    	@response = @string.show_answer
    else
      @response = "where was our first date?""
  end
end

  def help
  end
end
