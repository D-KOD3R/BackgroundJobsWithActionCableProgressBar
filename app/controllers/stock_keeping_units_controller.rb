require 'csv'
class StockKeepingUnitsController < ApplicationController
  def new
  end

  def create
  end

  def import
    rowarray = Array.new
    myfile = params[:file]

    CSV.foreach(myfile.path) do |row|
      p row.compact
      rowarray << row
      @rowarray_disp = rowarray
    end
  end
end
