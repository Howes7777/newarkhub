class EventtypesController < ApplicationController
   before_filter :authenticate_user!, only: [:new, :create, :edit, :update]
  
  # GET /eventtypes
  # GET /eventtypes.json
  def index
    @eventtypes = Eventtype.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @eventtypes }
    end
  end

  # GET /eventtypes/1
  # GET /eventtypes/1.json
  def show
    @eventtype = Eventtype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @eventtype }
    end
  end

  # GET /eventtypes/new
  # GET /eventtypes/new.json
  def new
    @eventtype = Eventtype.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @eventtype }
    end
  end

  # GET /eventtypes/1/edit
  def edit
    @eventtype = Eventtype.find(params[:id])
  end

  # POST /eventtypes
  # POST /eventtypes.json
  def create
    @eventtype = Eventtype.new(params[:eventtype])

    respond_to do |format|
      if @eventtype.save
        format.html { redirect_to @eventtype, notice: 'Eventtype was successfully created.' }
        format.json { render json: @eventtype, status: :created, location: @eventtype }
      else
        format.html { render action: "new" }
        format.json { render json: @eventtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /eventtypes/1
  # PUT /eventtypes/1.json
  def update
    @eventtype = Eventtype.find(params[:id])

    respond_to do |format|
      if @eventtype.update_attributes(params[:eventtype])
        format.html { redirect_to @eventtype, notice: 'Eventtype was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @eventtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eventtypes/1
  # DELETE /eventtypes/1.json
  def destroy
    @eventtype = Eventtype.find(params[:id])
    @eventtype.destroy

    respond_to do |format|
      format.html { redirect_to eventtypes_url }
      format.json { head :no_content }
    end
  end
end
