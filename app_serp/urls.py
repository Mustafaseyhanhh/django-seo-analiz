from django.urls import path
from app_serp import views

urlpatterns = [

    #Site Serp Url build

    path('add-site', views.addSite, name="Test"),
    path('delete-site', views.deleteSite, name="Test"),
    path('update-rank-time', views.updateRankTime, name="Test"),
    path('information-site', views.informationSite, name="Test"),

    path('add-keyword', views.addKeyword, name="Test "),
    path('add-keyword-setting', views.addKeywordSetting, name="Test "),
    path('delete-keyword', views.deleteKeyword, name="Test "),

]
