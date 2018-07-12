class LessonController < ApplicationController
  def index
    @lessons = Lesson.all
    render json: @lessons
  end

  def show
    @lesson = Lesson.find(params[:id])
    render json: @lesson
  end

  def destroy
    Lesson.find(params[:id]).destroy
  end
end
