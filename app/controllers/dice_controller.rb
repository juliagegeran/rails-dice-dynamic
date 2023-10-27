class DiceController < ApplicationController
  def choose
    render(:template => "/page_layouts/home")
  end

  def two_six
    @roll = []
    2.times do
      die = rand(1..6)
      @roll = @roll.push(die)
    end 

    render(:template => "/page_layouts/two_six")
  end
  
  def two_ten
    @roll = []
    2.times do
      die = rand(1..10)
      @roll = @roll.push(die)
  end
  render(:template => "/page_layouts/two_ten")
end
  
  def one_twenty
    @roll = rand(1..20)
    render(:template => "/page_layouts/one_twenty")
  end

  def five_four
    @roll = []
    5.times do
      die = rand(1..4)
      @roll = @roll.push(die)
    end
    render(:template => "/page_layouts/five_four")
  end 

  def random
    @dice = params.fetch("num_dice").to_i
    @sides = params.fetch("sides").to_i
    @roll = []
    @dice.times do
      die = rand(1..@sides)
      @roll = @roll.push(die)
    end

    render(:template => "/page_layouts/random")
  end
  
end
