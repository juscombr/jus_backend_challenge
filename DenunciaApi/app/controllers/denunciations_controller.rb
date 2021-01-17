class DenunciationsController < ApplicationController
  before_action :set_denunciation, only: [:show, :update, :destroy]
  before_action :auth, only: [:index, :update,:destroy,:show]
  before_action :get_denunciation, only: [:show]

  # GET /denunciations
  def index
    @denunciations = Denunciation.where(status: 1).select(:title,:plagio,:abuso, :injuria, :outro,:created_at).last(10)

    render json: @denunciations
  end

  # GET /denunciations/1
  def show
    render json: @denunciation.select(:id,:description,:link,:created_at,:user_id), include: {user: {
      only: :name
    }}
  end

  # POST /denunciations
  def create
    @denunciation = Denunciation.new(denunciation_params)
    @denunciation.status = 1

    if @denunciation.save
      render json: @denunciation, status: :created, location: @denunciation
    else
      render json: @denunciation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /denunciations/1
  def update
    if @denunciation.update(denunciation_params)
      render json: @denunciation
    else
      render json: @denunciation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /denunciations/1
  def destroy
    @denunciation.status = 2
    @denunciation.save
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_denunciation
      @denunciation = Denunciation.find(params[:id])
    end

    def get_denunciation
      @denunciation = Denunciation.where(id: params[:id])
    end

    def auth
      @user = User.where(:name => params[:name_user]).select(:user_type).take
 
    
 
      if @user.nil?
        raise StandardError.new "Usuario não existe"
      elsif @user.user_type != 'admin'
        raise StandardError.new "Usuario não é administrador"
      elsif @user.user_type == 'admin'
        
      end
    end

    # Only allow a trusted parameter "white list" through.
    def denunciation_params
      params.require(:denunciation).permit(:title, :description, :link, :status,:plagio,:abuso,:injuria,:outro,:user_id)
    end
end
