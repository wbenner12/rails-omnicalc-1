class GameController < ApplicationController

  def home
    render({ :template => "my_templates/new_square" })
  end

  def square
    @the_num = params.fetch("number").to_f

    @the_result = @the_num ** 2
    render({ :template => "my_templates/square_results" })
  end
  
  def new_square_root
    render({ :template => "my_templates/new_square_root" })
  end
  def square_root_calc
    @the_num = params.fetch("number").to_f

    @the_result = @the_num ** 0.5
    render({ :template => "my_templates/square_root_results" })
  end
  




end
