Init
>docker-compose build && docker-compose up

Два запити для того щоб спрацював кеш

>curl -D - http://localhost:1127/asset/1.jpg
> ![img.png](img.png)

Третій запити вже з кешу
>curl -D - http://localhost:1127/asset/1.jpg
> ![img_1.png](img_1.png)

Оновлення кешу
>curl -D - http://localhost:1127/asset/1.jpg -H "update-cache:true"
> ![img_2.png](img_2.png)