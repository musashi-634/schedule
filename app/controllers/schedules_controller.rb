class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end

  def new
    @schedule = Schedule.new
  end
  
  def create
    @schedule = Schedule.new(params.require(:schedule).permit(
      :title, :date_start, :date_end, :whole_day, :memo))
    if @schedule.save
      flash[:notice] = "スケジュールを新規登録しました"
      redirect_to schedules_path
    else
      flash.now[:alert] = "登録できませんでした"
      render "new"
    end
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
