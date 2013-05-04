class CustomerDocumentsController < ApplicationController
#load_and_authorize_resource
  # GET /customer_documents
  # GET /customer_documents.json
  def index
    @customer_documents = CustomerDocument.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @customer_documents }
    end
  end

  # GET /customer_documents/1
  # GET /customer_documents/1.json
  def show
    @customer_document = CustomerDocument.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @customer_document }
    end
  end

  # GET /customer_documents/new
  # GET /customer_documents/new.json
  def new
    @customer_document = CustomerDocument.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @customer_document }
    end
  end

  # GET /customer_documents/1/edit
  def edit
    @customer_document = CustomerDocument.find(params[:id])
  end

  # POST /customer_documents
  # POST /customer_documents.json
  def create
    @customer_document = CustomerDocument.new(params[:customer_document])

    respond_to do |format|
      if @customer_document.save
        format.html { redirect_to @customer_document, notice: 'Customer document was successfully created.' }
        format.json { render json: @customer_document, status: :created, location: @customer_document }
      else
        format.html { render action: "new" }
        format.json { render json: @customer_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /customer_documents/1
  # PUT /customer_documents/1.json
  def update
    @customer_document = CustomerDocument.find(params[:id])

    respond_to do |format|
      if @customer_document.update_attributes(params[:customer_document])
        format.html { redirect_to @customer_document, notice: 'Customer document was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @customer_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_documents/1
  # DELETE /customer_documents/1.json
  def destroy
    @customer_document = CustomerDocument.find(params[:id])
    @customer_document.destroy

    respond_to do |format|
      format.html { redirect_to customer_documents_url }
      format.json { head :no_content }
    end
  end
end
