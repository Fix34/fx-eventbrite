class AttendanceMailer < ApplicationMailer
    default from: 'no-reply@monsite.fr'
 
    def welcome_event(attendance)
      #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
      @attendance = attendance
      @attendance_user = User.find(@attendance.user_id)
      @attendance_event = @attendance.event
      @url  = 'http://monsite.fr/login' 
      @admin = User.find(@attendance.event.admin_id)

      mail(to: @admin.email, subject: "Un utilisateur à rejoint l'évenement !")
    end
end
