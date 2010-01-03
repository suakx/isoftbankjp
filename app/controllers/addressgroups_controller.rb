class AddressgroupsController < ApplicationController
  # GET /addressgroups
  # GET /addressgroups.xml
  def index
    @addressgroups = Addressgroup.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @addressgroups }
    end
  end

  # GET /addressgroups/1
  # GET /addressgroups/1.xml
  def show
    @addressgroup = Addressgroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @addressgroup }
    end
  end

  # GET /addressgroups/new
  # GET /addressgroups/new.xml
  def new
    @addressgroup = Addressgroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @addressgroup }
    end
  end

  # GET /addressgroups/1/edit
  def edit
    @addressgroup = Addressgroup.find(params[:id])
  end

  # POST /addressgroups
  # POST /addressgroups.xml
  def create
    @addressgroup = Addressgroup.new(params[:addressgroup])

    respond_to do |format|
      if @addressgroup.save
        flash[:notice] = 'Addressgroup was successfully created.'
        format.html { redirect_to(@addressgroup) }
        format.xml  { render :xml => @addressgroup, :status => :created, :location => @addressgroup }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @addressgroup.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /addressgroups/1
  # PUT /addressgroups/1.xml
  def update
    @addressgroup = Addressgroup.find(params[:id])

    respond_to do |format|
      if @addressgroup.update_attributes(params[:addressgroup])
        flash[:notice] = 'Addressgroup was successfully updated.'
        format.html { redirect_to(@addressgroup) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @addressgroup.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /addressgroups/1
  # DELETE /addressgroups/1.xml
  def destroy
    @addressgroup = Addressgroup.find(params[:id])
    @addressgroup.destroy

    respond_to do |format|
      format.html { redirect_to(addressgroups_url) }
      format.xml  { head :ok }
    end
  end
end
