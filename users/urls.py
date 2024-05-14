from django.urls import path
from .import views
from django.contrib.auth import views as auth_view

urlpatterns = [
    path('sign_up/', views.sign_up, name='users-sign-up'),
    path('profile/', views.profile, name='users-profile'),
    path('login/', auth_view.LoginView.as_view(template_name='users/login.html'),name='users-login'),
    path('logout/', views.user_logout,name='users-logout'),
    
]
