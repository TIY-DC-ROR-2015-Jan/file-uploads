require 'csv'

class UploadsController < ApplicationController
  def csv
  end

  def handle_csv
    CSV.foreach(params[:users].open) do |row|
      email = row.first
      next if email == "email"
      User.where(email: email).first_or_create! do |u|
        u.password = row.join("")
      end
    end
    redirect_to :back, notice: "Uploaded"
  end
end
