from django.shortcuts import render , redirect
from django.contrib import messages
from django.http import  JsonResponse
from management.forms import BrandForm, BuyForm, CategoryForm, SubcategoryForm
from management.models import Brand, Buy, Category, Subcategory

# Create your views here.
def index_admin(request):
    location=True
    title_pag="Menú de Administracion"
    context={
        'title_pag':title_pag,
        'location':location,
    }
    return render(request, "admin/index-admin.html", context)


def category(request):
    location=True
    title_pag = "Categoría"
    registers = Category.objects.all()
    fields = [f.name for f in Category()._meta.get_fields()][2:-1]
    if request.method == "POST":
       form = CategoryForm(request.POST)
       if form.is_valid():
           form.save()
           category_name = form.cleaned_data.get('name')
           messages.success(request,f'La categoría {category_name} se agregó correctamente!')
           return redirect('category')
       else:
           messages.warning(request, f'No se agregó la categoría')
           return redirect('category')
    else:
        form = CategoryForm()
    context = {
        "location": location,
        "title_pag": title_pag,
        "registers": registers,
        "fields": fields,
        "form": form,
        }
    return render(request, "admin/category.html" , context )



def category_update(request,pk):
    if request.method == 'POST':
     category=Category.objects.get(id=pk)
     form =  CategoryForm(request.POST)
     if form.is_valid():
         name = form.cleaned_data.get('name')
         category.name = name
         category.save()
         messages.success(request, f'La categoría {category.name} se editó correctamente!')
         return redirect ('category')
     else:
         messages.success(request, f'La categoría no se editó')
         return redirect ('category')
    else:
        form =CategoryForm()
    return redirect('category')






def subcategory(request):
    location = True
    title_pag = "Subcategoria"
    registers = Subcategory.objects.all()
    fields = [f.name for f in Subcategory()._meta.get_fields()][2:-1]
   
    
    if request.method == 'POST':
        form = SubcategoryForm(request.POST)
        if form.is_valid():
            form.save()
            subcategory_name = form.cleaned_data.get('name')
            messages.success(request,f'La subcategoria {subcategory_name} se agregó correctamente!')
            return redirect('subcategory')
        else:
            messages.warning(request, f'No se agregó la subcategoría')
    else:
        form = SubcategoryForm()
    context = {
        "location": location,
        "title_pag": title_pag,
        "registers": registers,
        "fields": fields,
        "form": form,
        }
    return render(request, "admin/subcategory.html", context)


def brand(request):
    location = True
    title_pag = "Marca"
    brands = Brand.objects.all()
    print('sjnjsndsjnjsnd2', brands )
    fields = [f.name for f in Brand()._meta.get_fields()][2:-1]
    if request.method == 'POST':
        form = BrandForm(request.POST)
        if form.is_valid():
            form.save()
            brand_name = form.cleaned_data.get('name')
            messages.success(request,f'La marca {brand_name} se agregó correctamente!')
            return redirect('brand')
        else:
            messages.warning(request, f'No se agregó la categoría')
    else:
         form = BrandForm()
    context = {
        "location": location,
        "title_pag": title_pag,
        "brands": brands,
        "fields": fields,
        "form": form,
        }
    return render(request, "admin/brand.html", context)


def buy(request):
    location = True
    title_pag = "Compra"
    registers = Buy.objects.all()
    fields = [f.name for f in Buy()._meta.get_fields()][2:-1]    
    if request.method == 'POST':
        form = BuyForm(request.POST)
        if form.is_valid():
            form.save()
            buy_name = form.cleaned_data.get('name')
            messages.success(request,f'La compra{buy_name} se agregó correctamente!')
            return redirect('buy')
        else:
            messages.warning(request, f'No se agregó la compra')

    else:
        form = BuyForm()
    context = {
        "location": location,
        "title_pag": title_pag,
        "registers": registers,
        "fields": fields,
        "form": form,
        }
    return render(request, "admin/buy.html", context)