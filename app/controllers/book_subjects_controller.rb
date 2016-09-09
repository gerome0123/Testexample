class BookSubjectsController < ApplicationController
  before_action :set_book_subject, only: [:show, :edit, :update, :destroy]

  # GET /book_subjects
  # GET /book_subjects.json
  def index
    @book_subjects = BookSubject.all
  end

  # GET /book_subjects/1
  # GET /book_subjects/1.json
  def show
  end

  # GET /book_subjects/new
  def new
    @subject = Subject.all
    @book = Book.all
    @book_subject = BookSubject.new
  end

  # GET /book_subjects/1/edit
  def edit
  end

  # POST /book_subjects
  # POST /book_subjects.json
  def create
    @book_subject = BookSubject.new(book_subject_params)

    respond_to do |format|
      if @book_subject.save
        format.html { redirect_to @book_subject, notice: 'Book subject was successfully created.' }
        format.json { render :show, status: :created, location: @book_subject }
      else
        format.html { render :new }
        format.json { render json: @book_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_subjects/1
  # PATCH/PUT /book_subjects/1.json
  def update
    respond_to do |format|
      if @book_subject.update(book_subject_params)
        format.html { redirect_to @book_subject, notice: 'Book subject was successfully updated.' }
        format.json { render :show, status: :ok, location: @book_subject }
      else
        format.html { render :edit }
        format.json { render json: @book_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_subjects/1
  # DELETE /book_subjects/1.json
  def destroy
    @book_subject.destroy
    respond_to do |format|
      format.html { redirect_to book_subjects_url, notice: 'Book subject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_subject
      @book_subject = BookSubject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_subject_params
      params.require(:book_subject).permit(:book_id, :subject_id)
    end
end
