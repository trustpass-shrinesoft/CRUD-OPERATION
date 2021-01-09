class CoursesController < ApplicationController
  def index
    ob=Coursera.new;
    @term='ruby';
    @ans=ob.posts();
  end
end
