class TasksController < ApplicationController
  def index
    @tasks = Task.all
    @user=current_user
  end

  def show
    @task = Task.find(params[:id])
    @user=current_user
    @submission = Submission.new

    @submission.task_id = params[:task_id]

    @submission.user_id = params[:user_id]



    if @submission.save
      redirect_to "/welcome", :notice => "Submission created successfully."

    end
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new

    @task.bloque_id = params[:bloque_id]

    @task.name = params[:name]

    @task.description = params[:description]

    @task.graded = params[:graded]

    @task.predecessor = params[:predecessor]

    @task.url = params[:url]
      @task.video_url = params[:video_url]
@task.external1 = params[:external1]
@task.external2 = params[:external2]

    if @task.save
      redirect_to "/tasks", :notice => "Task created successfully."
    else
      render 'new'
    end

  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])


    @task.bloque_id = params[:bloque_id]

    @task.name = params[:name]

    @task.description = params[:description]

    @task.graded = params[:graded]

    @task.predecessor = params[:predecessor]

    @task.url = params[:url]
@task.video_url = params[:video_url]
@task.external1 = params[:external1]
@task.external2 = params[:external2]
    if @task.save
      redirect_to "/tasks", :notice => "Task updated successfully."
    else
      render 'edit'
    end

  end

  def destroy
    @task = Task.find(params[:id])

    @task.destroy


    redirect_to "/tasks", :notice => "Task deleted."

  end
end
