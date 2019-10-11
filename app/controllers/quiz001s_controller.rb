class Quiz001sController < ApplicationController
  def index
    @quiztab = Quiztab.order("RANDOM()").last
  end

  def new
    @quiztab = Quiztab.new
  end

  def create
    @quiztab = Quiztab.create(quiztab_params)
    if @quistab.invalid?
      flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
    end
    redirect_to root_path
  end

  private
  def quiztab_params
    params.require(:text001).permit(:artist)
  end

end



