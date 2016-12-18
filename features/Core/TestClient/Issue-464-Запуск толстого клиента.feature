# encoding: utf-8
# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds


Функционал: Проверка запуска приложения в режиме тонкого/толстого клиента

Как разработчик
Я хочу иметь возможность запуска ТестКлиента как в тонком, так и в толстом клиенте
Что бы проверять проверять ограничения прав

# Контекст: 

Сценарий: Запуск толстого клиента
	Когда Я подключаю клиент тестирования с параметрами:
	| 'Имя подключения' | 'Порт'  | 'Тип клиента' |  'Дополнительные параметры строки запуска'  |
	| 'Test 1'          | '48100' | 'Толстый'     |  '/RunModeManagedApplication'               |
	И     в ТЧ ДанныеКлиентовТестирования VanessaBehavoir содержиться строка:
	| 'Имя'     | 'ПортЗапускаТестКлиента'  |  'ПутьКПлатформе'  |  'Дополнительные параметры строки запуска'  |
	| 'Test 1'  | '48100'                   |  '1cv8c'            |  '/RunModeManagedApplication'               |
	Тогда режим запуска приложения "Толстый клиент"
	И     я закрываю сеанс TESTCLIENT
	И     Пауза 3

Сценарий: Запуск тонкого клиента
	Когда Я подключаю клиент тестирования с параметрами:
	| 'Имя подключения' | 'Порт'  | 'Тип клиента' |
	| 'Test 2'          | '48101' | 'Тонкий'      |
	И     в ТЧ ДанныеКлиентовТестирования VanessaBehavoir содержиться строка:
	| 'Имя'     | 'ПортЗапускаТестКлиента'  |  'ПутьКПлатформе'  |
	| 'Test 2'  | '48101'                   |  '1cv8c'           |	
	Тогда режим запуска приложения "Тонкий клиент"
	И     я закрываю сеанс TESTCLIENT
	И     Пауза 3

Сценарий: Запуск тонкого клиента - проверка пустого значения "Тип клиента"
	Когда Я подключаю клиент тестирования с параметрами:
	| 'Имя подключения' | 'Порт'  |
	| 'Test 3'          | '48102' |
	И     в ТЧ ДанныеКлиентовТестирования VanessaBehavoir содержиться строка:
	| 'Имя'     | 'ПортЗапускаТестКлиента'  |  'ПутьКПлатформе'  |
	| 'Test 3'  | '48102'                   |  '1cv8c'           |	
	Тогда режим запуска приложения "Тонкий клиент"
	И     я закрываю сеанс TESTCLIENT