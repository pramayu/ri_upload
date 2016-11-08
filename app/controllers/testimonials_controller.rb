class TestimonialsController < ApplicationController
  before_action :signed_in_user
  before_action :set_test, only: [:edit, :update, :destroy]
  layout "admin"
  def new
    @testimonial = Testimonial.new
  end


  def create
    @testimonial = Testimonial.new(params_test)
    if @testimonial.save
      redirect_to all_testimonial_path
    else 
      render 'new'
    end
  end

  def edit

  end

  def update
    if @testimonial.update(params_test)
      redirect_to all_testimonial_path
    else
      render 'edit'
    end
  end

  def all_testimonial
    @tests = Testimonial.all.order('created_at desc')
    render layout: "admin"
  end

  def destroy
    @testimonial.destroy
    redirect_to all_testimonial_url
  end

  private

  def params_test
    params.require(:testimonial).permit(:name, :content, :avatar, :occupation)
  end

  def set_test
    @testimonial = Testimonial.find(params[:id])
  end
end
