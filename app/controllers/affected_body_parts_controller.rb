class AffectedBodyPartsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_affected_body_part, only: [:show, :edit, :update, :destroy]
  before_action :set_user

  # GET /affected_body_parts
  # GET /affected_body_parts.json
  def index
    @affected_body_parts = @user.affected_body_parts
    @body_parts = BodyPart.all
  end

  # GET /affected_body_parts/1
  # GET /affected_body_parts/1.json
  def show
  end

  # GET /affected_body_parts/new
  def new
    @affected_body_part = AffectedBodyPart.new
  end

  # GET /affected_body_parts/1/edit
  def edit
  end

  # POST /affected_body_parts
  # POST /affected_body_parts.json
  def create
    @affected_body_part = @user.affected_body_parts.build(affected_body_part_params)

    respond_to do |format|
      if @affected_body_part.save
        format.html { redirect_to user_affected_body_parts_path(@user), notice: 'Affected body part was successfully created.' }
        format.json { render :show, status: :created, location: @affected_body_part }
      else
        format.html { render :new }
        format.json { render json: @affected_body_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /affected_body_parts/1
  # PATCH/PUT /affected_body_parts/1.json
  def update
    respond_to do |format|
      if @affected_body_part.update(affected_body_part_params)
        format.html { redirect_to [@user, @affected_body_part], notice: 'Affected body part was successfully updated.' }
        format.json { render :show, status: :ok, location: @affected_body_part }
      else
        format.html { render :edit }
        format.json { render json: @affected_body_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /affected_body_parts/1
  # DELETE /affected_body_parts/1.json
  def destroy
    @affected_body_part.destroy
    respond_to do |format|
      format.html { redirect_to affected_body_parts_url, notice: 'Affected body part was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = current_user
    end
    def set_affected_body_part
      @affected_body_part = AffectedBodyPart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def affected_body_part_params
      params.require(:affected_body_part).permit(:body_part_id)
    end
end
