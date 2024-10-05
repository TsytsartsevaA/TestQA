﻿#language: ru

@tree

Функционал: создание документа Заказ

Как менеджер по закупкам я хочу
создание документа Заказ покупателя
чтобы осуществить заказ товара

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: создание документа Заказ покупателя
И В командном интерфейсе я выбираю 'Продажи' 'Заказ'
Тогда открылось окно 'Заказ (создание)'
И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Все для дома"'
И я нажимаю кнопку выбора у поля с именем "Покупатель"
Тогда открылось окно 'Контрагенты'
И в таблице "Список" я перехожу к строке:
	| 'Код'       | 'Наименование' |
	| '000000012' | 'Мосхлеб ОАО'  |
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Заказ (создание) *'
И из выпадающего списка с именем "Склад" я выбираю точное значение 'Склад отдела продаж'
И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
Тогда открылось окно 'Товары'
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Заказ (создание) *'
И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
И в таблице "Товары" в поле с именем "ТоварыКоличество" я уменьшаю значение
И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '3'
И в таблице "Товары" я завершаю редактирование строки
И я нажимаю на кнопку с именем 'ФормаЗаписать'
Тогда открылось окно 'Заказ * от *'
И в таблице "Товары" я активизирую поле с именем "ТоварыСумма"


