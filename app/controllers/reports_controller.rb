class ReportsController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  # GET /reports
  def index
  end

  # GET /reports/1
  def show
  end

  # GET /reports/new
  def new
  end

  # GET /reports/1/edit
  def edit
  end

  # POST /reports
  def create
    if @report.save
      redirect_to @report, notice: 'Report was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /reports/1
  def update
    if @report.update(report_params)
      redirect_to @report, notice: 'Report was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /reports/1
  def destroy
    @report.destroy
    redirect_to reports_url, notice: 'Report was successfully destroyed.'
  end

  private
    def report_params
      params.require(:report).permit(:text, :state, :meeting_id)
    end
end