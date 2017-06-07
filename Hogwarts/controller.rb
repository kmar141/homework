require( 'sinatra' )
require( 'sinatra/contrib/all' )

require_relative './models/student'
require_relative './models/house'

get '/students' do
  @students = Student.all()
  erb(:studentindex)
end

get '/students/new' do
  @houses = House.all()
  @students = Student.all()
  erb(:studentnew)
end

get '/students/:id' do
  @student = Student.find(params[:id])
  erb(:studentshow)
end

get '/students/:id/edit' do 
  @houses = House.all()
  @student = Student.find(params[:id])
  erb(:studentedit)
end

post '/students/:id' do
  @student = Student.find(params[:id])
  @student.update(params)
  redirect to "/students/#{params[:id]}"
end

post '/students/:id/delete' do
  @student = Student.find(params[:id])
  @student.delete()
  redirect to "/students"
end

post '/students' do
  @student = Student.new(params)
  @student.save()
  erb(:create)
end


