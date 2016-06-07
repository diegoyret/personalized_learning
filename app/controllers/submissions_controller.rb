class SubmissionsController < ApplicationController
  def index
    @submissions = Submission.all
  end
  def welcome
    @user = current_user
    @a = []
  end
  def show
    @submission = Submission.find(params[:id])
  end

  def new
    @submission = Submission.new
  end

  def create
    @submission = Submission.new

    @submission.task_id = params[:task_id]

    @submission.user_id = params[:user_id]
    @submission.content= params[:content]
    @submission.url= params[:url]

    if @submission.save
      redirect_to "/welcome", :notice => "Submission created successfully."
    else
      render 'new'
    end

  end

  def edit
    @submission = Submission.find(params[:id])
  end

  def update
    @submission = Submission.find(params[:id])


    @submission.task_id = params[:task_id]

    @submission.user_id = params[:user_id]



    if @submission.save
      redirect_to "/submissions", :notice => "Submission updated successfully."
    else
      render 'edit'
    end

  end

  def destroy
    @submission = Submission.find(params[:id])

    @submission.destroy


    redirect_to "/submissions", :notice => "Submission deleted."

  end
end
