# class SuppliersController < ApplicationController
#   def index
#     @suppliers = Supplier.all
#     render :index
#   end

#   def show
#     @supplier = Supplier.find_by(id: params["id"])
#     render :show
#   end

#   def create
#     supplier = Supplier.new(name: params["name"], email: params["email"], phone_number: params["phone_number"])
#     supplier.save
#     if supplier.save # :)
#       render json: supplier.as_json
#     else # :(
#       render json: { errors: supplier.errors.full_messages }, status: 402
#     end
#     @supplier = supplier
#   end

#   def update
#     supplier = supplier.find_by(id: params["id"])

#     supplier.name = params["name"] || supplier.name
#     supplier.email = params["email"] || supplier.email
#     supplier.phone_number = params["phone_number"] || supplier.phone_number
#     supplier.save
#     if supplier.save # :)
#       render json: supplier.as_json
#     else # :(
#       render json: { errors: supplier.errors.full_messages }, status: 402
#     end
#     @supplier = supplier
#   end

#   def destroy
#     supplier = Supplier.find_by(id: params["id"])

#     supplier.destroy
#     render json: { message: "Supplier deleted." }
#   end
# end
