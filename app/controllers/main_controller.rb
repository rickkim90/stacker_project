class MainController < ApplicationController
  # load_and_authorize_resource

  def index
    @gitdata = Gittrend.all
  end

  def search
    @check = params[:search]
    @result = Stack.where("name Like ?", "%#{params[:search].capitalize}%")
  end

  def mypage
    @stacks = Stack.all
    @stack_fields = StackField.all
  end
  
end
