class ExercisesController < ApplicationController

    skip_before_action :authorize, only: [:index, :show, :target_list]

    def index
        render json: Exercise.all
    end

    def show
        render json: Exercise.find(params[:id])
    end

    def create
        render json: Exercise.create!(exercise_params)
    end

    def target_list
        exercise = Exercise.all.map do |e| e.target end.uniq
        render json: exercise
    end

    private

    def exercise_params
        params.permit(:name, :equipment, :target, :bodyPart, :gif)
    end
end
