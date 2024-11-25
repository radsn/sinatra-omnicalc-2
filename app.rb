require "sinatra"
require "sinatra/reloader"

get("/") do
  redirect("/add")
end

get("/add") do
  erb(:add_form)
end

get("/wizard_add") do
  @first_num = params.fetch("first_number").to_f
  @second_num = params.fetch("second_number").to_f
  @result = @first_num + @second_num
  erb(:add_result)
end

get("/subtract") do
  erb(:sub_form)
end

get("/wizard_subtract") do
  @sub_first_num = params.fetch("third_number").to_f
  @sub_second_num = params.fetch("fourth_number").to_f
  @sub_result = @sub_first_num - @sub_second_num
  erb(:sub_result)
end

get("/multiply") do
  erb(:mult_form)
end

get("/wizard multiply") do
  @mult_first_num = params.fetch("fifth_number").to_f
  @mult_second_num = params.fetch("sixth_number").to_f
  @mult_result = @mult_first_num * @mult_second_num
  erb(:mult_result)
end

get("/divide") do
  erb(:div_form)
end

get("/wizard_divide") do
  @div_first_num = params.fetch("seventh_number").to_f
  @div_second_num = params.fetch("eighth_number").to_f
  @div_result = @div_first_num / @div_second_num
  erb(:div_result)
end
