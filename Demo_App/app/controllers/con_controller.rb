class ConController < ApplicationController
  def hello
    @a=10;
    @b=20;
    @c=@a+@b;
  end
  def goodbye  
  end
end
