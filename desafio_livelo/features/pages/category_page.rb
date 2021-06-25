class CategoryPage < SitePrism::Page
   element :first_item, '.element__product-navigation--listing > div:nth-child(1)'

   def selecionar_primeiro_item
       first_item.click
   end
    
end