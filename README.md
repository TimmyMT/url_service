# URL_SERVICE
Реализовать сервис сокращения ссылок.
Данный сервис должен реализовывать 3 запроса:
POST /urls который возвращает короткий url
GET /urls/:short_url который возвращает длинный URL и увеличивает счетчик запросов на 1
GET /urls/:short_url/stats который возвращает количество переходов по URL

## Установка приложения
`docker-compose build`

## Перед запуском
Заходим в контейнер и создаём базу данных

`sudo docker-compose run --rm web bash`

`rails db:create db:migrate`

## Запуск
`docker-compose up`

## Документация эндпоинтов
`/api-docs/index.html`

# Используемые библитеки
* RSpec + Rswag
