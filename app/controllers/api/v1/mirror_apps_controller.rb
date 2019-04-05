class Api::V1::MirrorAppsController < ApplicationController

        def index
        @mirror_apps = MirrorApp.all
        render json: @mirror_apps
      end

      def create
        @mirror_app = MirrorApp.create(mirror_app_params)
        render json: @mirror_app
      end

      def show
        @mirror_app = MirrorApp.find(params[:id])
        render json: @mirror_app
      end

      def destroy
        Mirror_App.destroy(params[:id])
      end

      def update
        @mirror_app = MirrorApp.find(params[:id])
        @mirror_app.update(mirror_app_params)
        render json: @mirror_app
      end

      private

      def mirror_app_params
        params.require(:mirror_app).permit(:mirror_id, :app_id)
      end
end
