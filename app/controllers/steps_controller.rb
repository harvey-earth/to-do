class StepsController < ApplicationController
  before_action :set_step, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  before_action :get_goal

  # GET /steps or /steps.json
  def index
    @steps = @goal.steps
  end

  # GET /steps/1 or /steps/1.json
  def show
  end

  # GET /steps/new
  def new
    @step = @goal.steps.build
  end

  # GET /steps/1/edit
  def edit
  end

  # POST /steps or /steps.json
  def create
    @step = @goal.steps.build(post_params)

    respond_to do |format|
      if @step.save
        format.html { redirect_to goal_steps_path(@goal), notice: "Step was successfully created." }
        format.json { render :show, status: :created, location: @step }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /steps/1 or /steps/1.json
  def update
    respond_to do |format|
      if @step.update(step_params)
        format.html { redirect_to goal_steps_path(@goal), notice: "Step was successfully updated." }
        format.json { render :show, status: :ok, location: @step }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /steps/1 or /steps/1.json
  def destroy
    @step.destroy

    respond_to do |format|
      format.html { redirect_to goal_steps_path(@goal), notice: "Step was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_step
      @step = @goal.steps.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def step_params
      params.require(:step).permit(:name, :content, :rank, :goal_id, :status)
    end

    def get_goal
      @goal = Goal.find(params[:goal_id])
    end
end
