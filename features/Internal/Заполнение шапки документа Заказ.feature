﻿#language: ru
@ExportScenarios
@IgnoreONCIMainBuild
@tree

Функционал: Заполнение шапки документа Заказ

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Заполнение шапки документа Заказ
И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Все для дома"'
И я нажимаю кнопку выбора у поля с именем "Покупатель"
Тогда открылось окно 'Контрагенты'
И в таблице "Список" я перехожу к строке:
	| 'Код'       | 'Наименование' |
	| '000000014' | 'Магазин "Бытовая техника"'  |
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Заказ (создание) *'
И из выпадающего списка с именем "Склад" я выбираю точное значение 'Малый'
И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
