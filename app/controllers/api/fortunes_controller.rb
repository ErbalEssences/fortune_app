class Api::FortunesController < ApplicationController

  def random_fortune
    fortune = ["lucky", "good", "meh", "bad", "awful"]
    fortune2 = ["lucky", "good", "meh", "bad", "awful"]
    
    if fortune.sample == fortune2.sample
      if fortune.sample == "lucky"
        given = "You will succeed in all you do"
      elsif fortune.sample == "awful"
        given = "Don't leave the house, just don't"
      else 
        given = "Just super #{fortune.sample}."
      end
    else 
      given = fortune.sample
    end

    @fortune = given
    render "random_fortune.json.jbuilder"
  end
  def lotto_numbers
    @numbers = "#{rand(1..60)}, #{rand(1..60)}, #{rand(1..60)}, #{rand(1..60)}, #{rand(1..60)}, #{rand(1..60)}"
    render "lotto_numbers.json.jbuilder"
  end
end
