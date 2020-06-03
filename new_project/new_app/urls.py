from django.urls import path
from new_app import views

app_name = 'new_app' 

urlpatterns=[
    
    path('user_login/',views.user_login,name='user_login'),
    path('register/',views.register,name='register'),
]