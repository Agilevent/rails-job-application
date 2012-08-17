class ChargesController < ApplicationController
  # GET /charges
  # GET /charges.json
  def index
    @successful_charges = Charge.successful
    @disputed_charges   = Charge.disputed
    @failed_charges     = Charge.failed

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @charges }
    end
  end

  # GET /charges/1
  # GET /charges/1.json
  def show
    @charge = Charge.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @charge }
    end
  end

  # GET /charges/new
  # GET /charges/new.json
  def new
    @charge = Charge.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @charge }
    end
  end

  # GET /charges/1/edit
  def edit
    @charge = Charge.find(params[:id])
  end

  # POST /charges
  # POST /charges.json
  def create
    @charge = Charge.new(params[:charge])

    respond_to do |format|
      if @charge.save
        format.html { redirect_to @charge, notice: 'Charge was successfully created.' }
        format.json { render json: @charge, status: :created, location: @charge }
      else
        format.html { render action: "new" }
        format.json { render json: @charge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /charges/1
  # PUT /charges/1.json
  def update
    @charge = Charge.find(params[:id])

    respond_to do |format|
      if @charge.update_attributes(params[:charge])
        format.html { redirect_to @charge, notice: 'Charge was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @charge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /charges/1
  # DELETE /charges/1.json
  def destroy
    @charge = Charge.find(params[:id])
    @charge.destroy

    respond_to do |format|
      format.html { redirect_to charges_url }
      format.json { head :no_content }
    end
  end
end
