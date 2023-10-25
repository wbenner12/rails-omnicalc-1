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

  def new_payment
    render({ :template => "my_templates/new_payment" })
  end
  def payment_calc
    @the_r = params.fetch("apr").to_f
    @the_n = params.fetch("years").to_f * 12
    @the_pv = params.fetch("principal").to_f

    @numerator = (@the_r / 100 / 12) * @the_pv
    @denominator1 = 1 + (@the_r / 100 / 12)
    @denominator2 = @denominator1 ** -@the_n
    @denominator3 = 1 - @denominator2

    @the_result = @numerator / @denominator3

    render({ :template => "my_templates/payment_calc" })
  end
  
  def new_random
    render({ :template => "my_templates/new_random" })
  end
  def random_calc
    @rand_min = params.fetch("min").to_f
    @rand_max = params.fetch("max").to_f

    @rand_result = rand(@rand_min..@rand_max)
    render({ :template => "my_templates/random_calc" })
  end
end
