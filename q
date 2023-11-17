[1mdiff --git a/app/controllers/students_controller.rb b/app/controllers/students_controller.rb[m
[1mindex 63ef94f..aa6d645 100644[m
[1m--- a/app/controllers/students_controller.rb[m
[1m+++ b/app/controllers/students_controller.rb[m
[36m@@ -65,6 +65,6 @@[m [mclass StudentsController < ApplicationController[m
 [m
     # Only allow a list of trusted parameters through.[m
     def student_params[m
[31m-      params.require(:student).permit(:first_name, :last_name, :offset_from_roy, :in_syria, :dr_e_watching)[m
[32m+[m[32m      params.require(:student).permit(:first_name, :last_name, :offset_from_roy, :in_syria, :dr_e_watching, :profile_picture)[m
     end[m
 end[m
[1mdiff --git a/app/views/students/_form.html.erb b/app/views/students/_form.html.erb[m
[1mindex cdaf8d3..81dd715 100644[m
[1m--- a/app/views/students/_form.html.erb[m
[1m+++ b/app/views/students/_form.html.erb[m
[36m@@ -2,29 +2,15 @@[m
     [m
   <%= form.input :first_name %>[m
 [m
[31m-  <%= form.input :profile_picture %>[m
[32m+[m[32m  <%= form.input :last_name %>[m
 [m
[31m-  <div>[m
[31m-    <%= form.label :last_name, style: "display: block" %>[m
[31m-    <%= form.text_field :last_name %>[m
[31m-  </div>[m
[32m+[m[32m  <%= form.input :profile_picture %>[m
 [m
[31m-  <div>[m
[31m-    <%= form.label :offset_from_roy, style: "display: block" %>[m
[31m-    <%= form.number_field :offset_from_roy %>[m
[31m-  </div>[m
[32m+[m[32m  <%= form.input :offset_from_roy %>[m
 [m
[31m-  <div>[m
[31m-    <%= form.label :in_syria, style: "display: block" %>[m
[31m-    <%= form.check_box :in_syria %>[m
[31m-  </div>[m
[32m+[m[32m  <%= form.input :in_syria %>[m
 [m
[31m-  <div>[m
[31m-    <%= form.label :dr_e_watching, style: "display: block" %>[m
[31m-    <%= form.check_box :dr_e_watching %>[m
[31m-  </div>[m
[32m+[m[32m  <%= form.input :dr_e_watching %>[m
 [m
[31m-  <div>[m
[31m-    <%= form.submit :class => "btn btn-primary" %>[m
[31m-  </div>[m
[32m+[m[32m  <%= form.submit :class => "btn btn-primary" %>[m
 <% end %>[m
[1mdiff --git a/app/views/students/_student.html.erb b/app/views/students/_student.html.erb[m
[1mindex b5eb72c..1c5057f 100644[m
[1m--- a/app/views/students/_student.html.erb[m
[1m+++ b/app/views/students/_student.html.erb[m
[36m@@ -24,4 +24,9 @@[m
     <%= student.dr_e_watching %>[m
   </p>[m
 [m
[32m+[m[32m  <% if student.profile_picture.present? %>[m
[32m+[m[32m    <%= rails_blob_path student.profile_picture %>[m
[32m+[m[32m    <%= image_tag(student.profile_picture) %>[m
[32m+[m[32m  <% end %>[m
[32m+[m
 </div>[m
