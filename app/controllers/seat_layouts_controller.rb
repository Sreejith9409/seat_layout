class SeatLayoutsController < ApplicationController

  def index
  end

  def construct_layout
    inp_arr = []
    @seat_layout_str = ''
    if params[:no_of_pass].blank?
      params["layout"]["cols"].keys.each do |k|
        inp_arr << [params["layout"]["cols"][k].to_i, params["layout"]["rows"][k].to_i]
      end
      no_of_passengers = params[:no_of_pass].to_i
      window_seats, center_seats, aisle_seats = _construct_different_seats_structure(inp_arr)
      seat_numbers_hash = {}
      seat_number = 1
      [aisle_seats, window_seats, center_seats].each do |seats|
        seat_number, seat_numbers_hash = _construct_seats_hash(seat_number, seat_numbers_hash, seats, no_of_passengers)
      end
      _construct_seats_html_data(inp_arr, window_seats, center_seats, aisle_seats, seat_numbers_hash)
    else
      flash[:error] = "Enter number of passengers"
    end
  end

  def _construct_seats_html_data(inp_arr, window_seats, center_seats, aisle_seats, seat_numbers_hash)
    i = 1
    @seat_layout_str = "<div class='row' style='padding-bottom: 10px' align='center'>"
    inp_arr.each do |col_len, row_len|
      @seat_layout_str += "<div class='col-md-3'><table>"
      (1..row_len).to_a.each do |row|
        @seat_layout_str += "<tr>"
        (1..col_len).to_a.each do |col|
          bg_color = window_seats.include?(i) ? 'green' : aisle_seats.include?(i) ? '#d61d21' : '#87cefa'
          @seat_layout_str += "<td bgcolor='#{bg_color}'>#{seat_numbers_hash[i]}</td>"
          i += 1
        end
        @seat_layout_str += "</tr>"
      end
      @seat_layout_str += "</table></div>"
    end
    @seat_layout_str += "</div>"
  end

  def _construct_different_seats_structure(inp_arr)
    j = 1
    window_seats = []
    center_seats = []
    aisle_seats = []
    inp_arr.each_with_index do |(col_len, row_len), ind|
      row_arr = (1..row_len).to_a
      row_arr.each_with_index do |row, row_index|
        col_arr = (1..col_len).to_a
        col_arr.each_with_index do |col, index|
          if (ind == 0 && index == 0)|| (ind ==  inp_arr.length-1 && index == col_arr.length - 1)
            window_seats << j
          elsif index == 0 || index == col_arr.length - 1
            aisle_seats << j
          else
            center_seats << j
          end
          j += 1
        end
      end
    end
    [window_seats, center_seats, aisle_seats]
  end

  def _construct_seats_hash(seat_number, seat_numbers_hash, seats, no_of_passengers)
    if seat_number <= no_of_passengers
      seats.each do |seat|
        seat_numbers_hash[seat] = seat_number if seat_number <= no_of_passengers
        seat_number += 1
      end
    end
    [seat_number, seat_numbers_hash]
  end
end
