from django.contrib import admin
#
from .models import Category,Tag,Entry

admin.site.register(Category)
admin.site.register(Tag)
admin.site.register(Entry)


# from django.contrib import admin
# #
# from .models import Category,Tag,Entry

# # admin.site.register(Category)
# admin.site.register(Tag)
# # admin.site.register(Entry)

# class EntryAdmin(admin.ModelAdmin):
#     list_display = (
#         'id',
#         'title',
#         'user',
#         'category',
#         'public',
#         # 'portada',
#         'in_home',
#     )
#     search_fields = ('id','title')

#     list_filter = ('user', 'public')
    
#     #filtro para many to manys
#     # filter_horizontal = ('tag',)

# admin.site.register(Entry, EntryAdmin)

# class CategoryAdmin(admin.ModelAdmin):
#     list_display = (
#         'id',
#         'short_name',
#         'name',
#     )

# admin.site.register(Category, CategoryAdmin)