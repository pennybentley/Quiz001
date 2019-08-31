class Quiz001sController < ApplicationController
  def index
    @quiztab = Quiztab.first
  end
end
