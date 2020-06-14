module Api
    module V1
        class RumahsakitsController < ApplicationController
            # show all data 
            def index
                rumahsakits = Rumahsakit.order('created_at DESC');
                render json: {
                    status: 'Success',
                    message: 'Loaded Data Rumah Sakit',
                    data:rumahsakits
                }, status: :ok
            end

            # show data by id
            def show
                rumahsakit = Rumahsakit.find(params[:id]);
                render json: {
                    status: 'Success',
                    message: 'Loaded Data Rumah Sakit',
                    data:rumahsakit
                }, status: :ok
            end

            # create data
            def create
                rumahsakit = Rumahsakit.new(rumahsakit_params)

                if rumahsakit.save
                    render json: {
                        status: 'Success',
                        message: 'Saved Data Rumah Sakit',
                        data:rumahsakit
                    }, status: :ok
                else
                    render json: {
                        status: 'Error',
                        message: 'Data Rumah Sakit not saved',
                        data:rumahsakit.errors
                    }, status: :unprocessable_entity
                end
            end
            
            # delete data by id
            def destroy
                rumahsakit = Rumahsakit.find(params[:id])
                rumahsakit.destroy
                render json: {
                    status: 'Success',
                    message: 'Data Rumah Sakit Deleted',
                    data:rumahsakit
                }, status: :ok
            end

            def update
                rumahsakit = Rumahsakit.find(params[:id])
                if rumahsakit.update_attributes(rumahsakit_params)
                    render json: {
                        status: 'Success',
                        message: 'Updated Data Rumah Sakit',
                        data:rumahsakit
                    }, status: :ok
                else
                    render json: {
                        status: 'Error',
                        message: 'Data Rumah Sakit NOT UPDATED',
                        data:rumahsakit.errors
                    }, status: :unprocessable_entity
                end
            end

            private

            def rumahsakit_params
                params.permit(
                    :nama_rs, 
                    :alamat_rs,
                    :no_telp, 
                    :gol_Apos,
                    :gol_Bpos,
                    :gol_Opos,
                    :gol_ABpos,
                    :gol_Aneg,
                    :gol_Bneg,
                    :gol_Oneg,
                    :gol_ABneg
                )
            end
        end
    end
end