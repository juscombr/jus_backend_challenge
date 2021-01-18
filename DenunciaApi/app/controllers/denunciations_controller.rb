class DenunciationsController < ApplicationController
  before_action :set_denunciation, only: [:show, :update, :destroy]
  before_action :auth, only: [:index, :update,:destroy,:show]
  before_action :get_denunciation, only: [:show]

  # GET /denunciations
  def index
    @data_inicio = ""
    @data_fim = ""
    if params.has_key?(:data_inicio)
      @data_inicio = Date.parse(params[:data_inicio])
    end
    if params.has_key?(:data_fim)
      @data_fim = Date.parse(params[:data_fim])
    end

    if @data_inicio == "" and @data_fim == ""
      @denunciations = Denunciation.where(status: 1).select(:id,:title,:plagio,:abuso, :injuria, :outro,:created_at).last(10)

    elsif @data_inicio and @data_fim == ""
      
      @denunciations = Denunciation.where(status: 1,created_at: @data_inicio.all_day).select(:id,:title,:plagio,:abuso, :injuria, :outro,:created_at).last(10)
    elsif @data_inicio != "" and @data_fim != ""
      
      @denunciations = Denunciation.where(status: 1,:created_at => @data_inicio.beginning_of_day..@data_fim.end_of_day).select(:id,:title,:plagio,:abuso, :injuria, :outro,:created_at).last(10)
    
    end

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
        render json: { status: "error", message: "Usuario não existe" }, status: :unprocessable_entity
      elsif @user.user_type != 'admin'
        render json: { status: "error", message: "Usuario não é administrador" }, status: :unprocessable_entity
      elsif @user.user_type == 'admin'
        
      end
    end

    # Only allow a trusted parameter "white list" through.
    def denunciation_params
      params.require(:denunciation).permit(:title, :description, :link, :status,:plagio,:abuso,:injuria,:outro)
    end
end
