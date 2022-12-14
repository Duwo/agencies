require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/agents", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Agent. As you add validations to Agent, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Agent.create! valid_attributes
      get agents_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      agent = Agent.create! valid_attributes
      get agent_url(agent)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_agent_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      agent = Agent.create! valid_attributes
      get edit_agent_url(agent)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Agent" do
        expect {
          post agents_url, params: { agent: valid_attributes }
        }.to change(Agent, :count).by(1)
      end

      it "redirects to the created agent" do
        post agents_url, params: { agent: valid_attributes }
        expect(response).to redirect_to(agent_url(Agent.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Agent" do
        expect {
          post agents_url, params: { agent: invalid_attributes }
        }.to change(Agent, :count).by(0)
      end

    
      it "renders a successful response (i.e. to display the 'new' template)" do
        post agents_url, params: { agent: invalid_attributes }
        expect(response).to be_successful
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested agent" do
        agent = Agent.create! valid_attributes
        patch agent_url(agent), params: { agent: new_attributes }
        agent.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the agent" do
        agent = Agent.create! valid_attributes
        patch agent_url(agent), params: { agent: new_attributes }
        agent.reload
        expect(response).to redirect_to(agent_url(agent))
      end
    end

    context "with invalid parameters" do
    
      it "renders a successful response (i.e. to display the 'edit' template)" do
        agent = Agent.create! valid_attributes
        patch agent_url(agent), params: { agent: invalid_attributes }
        expect(response).to be_successful
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested agent" do
      agent = Agent.create! valid_attributes
      expect {
        delete agent_url(agent)
      }.to change(Agent, :count).by(-1)
    end

    it "redirects to the agents list" do
      agent = Agent.create! valid_attributes
      delete agent_url(agent)
      expect(response).to redirect_to(agents_url)
    end
  end
end
