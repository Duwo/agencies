class AgentsController < ApplicationController
  before_action :set_agent, only: %i[show edit update destroy update_seller_favorite]

  # GET /agents or /agents.json
  def index
    agents = if params[:search]
               Agent.search(params[:search])
             else
               Agent.all
             end

    @agents = agents.preload(:agency).limit(100)
    @favorite_agents = @agents.seller_favorite.preload(:agency).limit(100)
  end

  # GET /agents/1 or /agents/1.json
  def show; end

  # GET /agents/new
  def new
    @agent = Agent.new
  end

  # GET /agents/1/edit
  def edit; end

  # PATCH/PUT /agents/1 or /agents/1.json with fa
  def update_seller_favorite
    @agent.seller_favorite = params[:seller_favorite]
    @agent.save
  end

  # POST /agents or /agents.json
  def create
    @agent = Agent.new(agent_params)

    respond_to do |format|
      if @agent.save
        format.html { redirect_to agent_url(@agent), notice: 'Agent was successfully created.' }
        format.json { render :show, status: :created, location: @agent }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @agent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agents/1 or /agents/1.json
  def update
    respond_to do |format|
      if @agent.update(agent_params)
        format.html { redirect_to agent_url(@agent), notice: 'Agent was successfully updated.' }
        format.json { render :show, status: :ok, location: @agent }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @agent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agents/1 or /agents/1.json
  def destroy
    @agent.destroy

    respond_to do |format|
      format.html { redirect_to agents_url, notice: 'Agent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_agent
    @agent = Agent.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def agent_params
    params.require(:agent).permit(:name, :premium, :seller_favorite, :registered, :registered_on, :unregistered_on,
                                  :profile_pageviews, :overall_rating, :review_count, :recommendation_count, :image, :url)
  end
end
