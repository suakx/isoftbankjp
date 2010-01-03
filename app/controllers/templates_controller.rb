class TemplatesController < ApplicationController
  # GET /templates
  # GET /templates.xml
  def index
    @templates = Template.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @templates }
    end
  end

  # GET /templates/1
  # GET /templates/1.xml
  def show
    @template2 = Template.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @template2 }
    end
  end

  # GET /templates/new
  # GET /templates/new.xml
  def new
    @template2 = Template.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @template2 }
    end
  end

  # GET /templates/1/edit
  def edit
    @template2 = Template.find(params[:id])
  end

  # POST /templates
  # POST /templates.xml
  def create
    @template = Template.new(params[:template])

    respond_to do |format|
      if @template.save
        flash[:notice] = 'Template was successfully created.'
        format.html { redirect_to(@template) }
        format.xml  { render :xml => @template, :status => :created, :location => @template }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @template.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /templates/1
  # PUT /templates/1.xml
  def update
    @template = Template.find(params[:id])

    respond_to do |format|
      if @template.update_attributes(params[:template])
        flash[:notice] = 'Template was successfully updated.'
        format.html { redirect_to(@template) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @template.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /templates/1
  # DELETE /templates/1.xml
  def destroy
    @template = Template.find(params[:id])
    @template.destroy

    respond_to do |format|
      format.html { redirect_to(templates_url) }
      format.xml  { head :ok }
    end
  end
  
  def newemail
    emails = Addressgroup.find(:all, :conditions => ["group_id = ?", params[:group][:id]])
    emails.each do |email|
      e = Email.new
      e.template_id = params[:id]
      e.address_id = email.address_id
      e.save
    end
    redirect_to :controller => "emails", :action => "index"
  end
end
