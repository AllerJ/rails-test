class TasksController < ApplicationController
  def create
	@company = Company.find(params[:company_id])
	@task = @company.tasks.create(task_params)
	redirect_to company_path(@company)
  end

  def destroy
	@company = Company.find(params[:company_id])
	@task = @company.tasks.find(params[:id])
	@task.destroy
	redirect_to company_path(@company), status: 303
  end
  private
	def task_params
	  params.require(:task).permit(:subject, :note, :status)
	end
end
