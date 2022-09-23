class CopiesController < ApplicationController
  before_action :set_copy, only: %i[ edit update destroy ]
  before_action :set_book
  before_action :authenticate_user!, only: %i[ new edit update destroy]

  # GET /books/1/copies or /books/1/copies.json
  def index
    copies = Copy.where(book_id: params[:book_id])
    @available_copies = copies.filter { |c| c.status == 'available' }
    @on_loan_copies = copies.filter { |c| c.status == 'on loan' }
  end

  # GET /copies/new
  def new
    @copy = Copy.new({status: 'available', book_id: @book.id})

    respond_to do |format|
      if @copy.save
        format.html { redirect_to book_copies_path(@book), notice: "Copy was successfully created." }
        format.json { render :index, status: :created, location: @copy }
      else
        format.html { render book_copies_path(@book), status: :unprocessable_entity }
        format.json { render json: @copy.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /copies/1/edit
  def edit
  end

  # PATCH/PUT /copies/1 or /copies/1.json
  def update
    respond_to do |format|
      puts copy_params
      if @copy.update(copy_params)
        format.html { redirect_to book_copies_url(@book), notice: "Copy was successfully updated." }
        format.json { render :index, status: :ok, location: @copy }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @copy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /copies/1 or /copies/1.json
  def destroy
    @copy.destroy

    respond_to do |format|
      format.html { redirect_to book_copies_url(@book), notice: "Copy was successfully removed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_copy
      @copy = Copy.find(params[:id])
    end

    def set_book
      @book = Book.find(params[:book_id])
    end

    # Only allow a list of trusted parameters through.
    def copy_params
      params.fetch(:copy, {}).permit(:status, :user_id, :due_date)
    end
end
