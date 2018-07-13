class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
    render json: @lessons
  end

  def show
    @lesson = Lesson.find(params[:id])
    render json: @lesson
  end

  def create
    Lesson.create(lesson_params)
    redirect_to lessons_path
  end

  def update
    @lesson.update(lesson_params)
    redirect_to Lesson_path(@lesson)
  end

  def destroy
    Lesson.find(params[:id]).destroy
  end
end
