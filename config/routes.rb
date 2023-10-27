Rails.application.routes.draw do
  get("/", :controller => "dice", :action => "choose") do
  end

  get("/dice/2/6", :controller => "dice", :action => "two_six") do
  end 

  get("/dice/2/10", :controller => "dice", :action => "two_ten") do
  end

  get("/dice/1/20", :controller => "dice", :action => "one_twenty") do
  end

  get("/dice/5/4", :controller => "dice", :action => "five_four") do
  end
  
  get("/dice/:num_dice/:sides", :controller => "dice", :action => "random") do
  end
end
