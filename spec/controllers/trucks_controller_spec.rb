require 'spec_helper'
describe TrucksController do
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all trucks as @trucks" do
      truck = Truck.create! valid_attributes
      get :index
      assigns(:trucks).to_a.should eq([truck])
    end
  end

  describe "GET show" do
    it "assigns the requested truck as @truck" do
      truck = Truck.create! valid_attributes
      get :show, :id => truck.id
      assigns(:truck).should eq(truck)
    end
  end

  describe "GET new" do
    it "assigns a new truck as @truck" do
      get :new
      assigns(:truck).should be_a_new(Truck)
    end
  end

  describe "GET edit" do
    it "assigns the requested truck as @truck" do
      truck = Truck.create! valid_attributes
      get :edit, :id => truck.id
      assigns(:truck).should eq(truck)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Truck" do
        expect {
          post :create, :truck => valid_attributes
        }.to change(Truck, :count).by(1)
      end

      it "assigns a newly created truck as @truck" do
        post :create, :truck => valid_attributes
        assigns(:truck).should be_a(Truck)
        assigns(:truck).should be_persisted
      end

      it "redirects to the created truck" do
        post :create, :truck => valid_attributes
        response.should redirect_to(Truck.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved truck as @truck" do
        # Trigger the behavior that occurs when invalid params are submitted
        Truck.any_instance.stub(:save).and_return(false)
        post :create, :truck => {}
        assigns(:truck).should be_a_new(Truck)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Truck.any_instance.stub(:save).and_return(false)
        post :create, :truck => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested truck" do
        truck = Truck.create! valid_attributes
        # Assuming there are no other trucks in the database, this
        # specifies that the Truck created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Truck.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => truck.id, :truck => {'these' => 'params'}
      end

      it "assigns the requested truck as @truck" do
        truck = Truck.create! valid_attributes
        put :update, :id => truck.id, :truck => valid_attributes
        assigns(:truck).should eq(truck)
      end

      it "redirects to the truck" do
        truck = Truck.create! valid_attributes
        put :update, :id => truck.id, :truck => valid_attributes
        response.should redirect_to(truck)
      end
    end

    describe "with invalid params" do
      it "assigns the truck as @truck" do
        truck = Truck.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Truck.any_instance.stub(:save).and_return(false)
        put :update, :id => truck.id, :truck => {}
        assigns(:truck).should eq(truck)
      end

      it "re-renders the 'edit' template" do
        truck = Truck.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Truck.any_instance.stub(:save).and_return(false)
        put :update, :id => truck.id, :truck => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested truck" do
      truck = Truck.create! valid_attributes
      expect {
        delete :destroy, :id => truck.id
      }.to change(Truck, :count).by(-1)
    end

    it "redirects to the trucks list" do
      truck = Truck.create! valid_attributes
      delete :destroy, :id => truck.id
      response.should redirect_to(trucks_url)
    end
  end
end
