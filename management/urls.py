from django.urls import path

from management.views import brand, buy, category, category_update, index_admin, subcategory
urlpatterns = [
    path('',index_admin, name="index-admin"),
    path('categoria/', category, name="category"),
    path('categoria/<int:pk>/', category_update, name="editar"),
    
    path('subcategoria/', subcategory, name="subcategory"),
    path('marca/', brand, name="brand"),
    path('compra/', buy, name="buy"),
]