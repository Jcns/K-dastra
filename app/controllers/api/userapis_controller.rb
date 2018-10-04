module Api
	class UserapisController < ApplicationController
		def index
			userapis = Userapi.all;
			render json: {status: 'SUCCESS', message:'Usuarios carregados', data:userapis},status: :ok
		end 

		def show
			userapis = Userapi.find(params[:id])
			render json: {status: 'SUCCESS', message:'Loaded User', data:userapis},status: :ok
		end

		def create
			userapi = Userapi.new(userapi_params)
			if userapi.save
				render json: {status: 'SUCCESS', message:'Usuário cadastrado', data:userapi},status: :ok
			else
				render json: {status: 'ERROR', message:'Usuário não cadastrado', data:userapi.errors},status: :unprocessable_entity
			end
		end

		def destroy
			userapi = Userapi.find(params[:id])
			userapi.destroy
			render json: {status: 'SUCCESS', message:'Usuário deletado', data:userapi},status: :ok
		end

		def update
			userapi = Userapi.find(params[:id])
			if userapi.update_attributes(userapi_params)
				render json: {status: 'SUCCESS', message:'Usuário atualizado', data:userapi},status: :ok
			else
				render json: {status: 'ERROR', message:'Usuário não cadastrado', data:userapi.errors},status: :unprocessable_entity
			end
		end

		private
			def userapi_params
				params.permit(:name, :email, :password)
			end


	end
end