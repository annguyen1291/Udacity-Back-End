#item-catalog 

1. Install Python ant its dependent libraries if necessary.
2. Use project.py to run the app on your own computer.
3. Access it locally at http://localhost:8000/
4. In order to add/edit restaurants/items, login with either Google or Facebook account.
   You can view every restaurant' menus and items but you can only edit those you added yourself.
4a. You can add a new restaurant at home page.
4b. You can view your/others' restaurants's menus by clicking the restaurants' names.
4c. You can edit your restaurants by clicking the restaurants' names..
4d. You can view your/others' restaurants's items by clicking the items' names.
4e. You can edit your restaurants's items by clicking the items' names.

Only these below files are modified, the rest are the same as those in the course.
1. project.py: add new 'showItem' function for link to individual item.
2. client_secret.json, fb_client_secrets.json: my own Google and Facebook client secrets
3. item.html, publicitem.html: add item info and editability
4. menu.html, publicmenu.html: remove item info and editability
5. restaurants.html, publicrestaurants.html: add lastest dishes