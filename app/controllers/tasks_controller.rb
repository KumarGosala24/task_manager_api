class TasksController < ApplicationController
    before_action :set_task, only: %i[show update destroy]

    # GET /tasks

    def index
        render json: Task.all
    end

    # GET /tasks/:id
    def show
        render json: @task
    end

    # POST /tasks
    def create
        task = Task.new(task_params)

        if task.save
            render json: task, status: :created
        else
            render json: { errors: task.errors.full_messages },
            status: :unprocessable_entity
        end
    end

    # PATCH /tasks/:id

    def update
        if @task.update(task_params)
            render json: @task
        else
            render json: { errors: @task.errrors.full_messages },
            status: :unprocessable_entity
        end
    end

    # delete /task/:id

    def destroy
        @task.destroy!
        head :no_content
    end

    private

    def set_task
        @task = Task.find(params[:id])
    end

    def task_params
        params.require(:task).permit(:title, :description, :completed)
    end
end
