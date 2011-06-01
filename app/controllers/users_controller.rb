class UsersController < ApplicationController
  # GET /users
  # GET /users.xml
  layout "application"
  def index
    @users = User.all(:order => "name").paginate(:per_page => @@per_page, :page => params[:page])
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end

  # GET /users/1
  # GET /users/1.xml
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/new
  # GET /users/new.xml
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.xml
  def create
    if params[:commit] == "Create"
      @user = User.new(params[:user])
      if params[:attachable] && params[:attachable][:uploaded_data]
        @user.attachment = Attachment.create(params[:attachable])
      end
      respond_to do |format|
        if @user.save
          format.html { redirect_to(@user, :notice => 'User was successfully created.') }
          format.xml  { render :xml => @user, :status => :created, :location => @user }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
        end
      end
    else
      redirect_to users_url
    end
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
    if  params[:commit] == "Update"
      @user = User.find(params[:id])
      if params[:attachable] && params[:attachable][:uploaded_data]
        @user.attachment = Attachment.create(params[:attachable])
      end
      respond_to do |format|
        if @user.update_attributes(params[:user])
          format.html { redirect_to(@user, :notice => 'User was successfully updated.') }
          format.xml  { head :ok }
        else
          format.html { render :action => "edit" }
          format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
        end
      end
    else
      redirect_to users_url
    end
  end

  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end

  def download_file
    @user = User.find(params[:id])
    if @user.attachment
      send_file(RAILS_ROOT + "/public" + @user.attachment.public_filename)
    end
  end

  def search
    @users = User.search(params[:query]).paginate(:per_page => @@per_page, :page => params[:page])
    render :action => "index"
  end
end
