
CREATE TABLE Автомобили (
    ID_автомобиля SERIAL PRIMARY KEY,
    Марка VARCHAR(255),
    Модель VARCHAR(255),
    Год_выпуска INTEGER,
    Тип_кузова VARCHAR(255),
    Тип_двигателя VARCHAR(255),
    Цвет VARCHAR(255),
    Цена DECIMAL(10, 2),
    Количество_в_наличии INTEGER
);

CREATE TABLE Клиенты (
    ID_клиента SERIAL PRIMARY KEY,
    Имя VARCHAR(255),
    Фамилия VARCHAR(255),
    Дата_рождения DATE,
    Адрес_проживания TEXT,
    Город VARCHAR(255),
    Номер_телефона VARCHAR(15),
    Электронная_почта VARCHAR(255)
);

CREATE TABLE Продажи (
    ID_продажи SERIAL PRIMARY KEY,
    ID_клиента INTEGER REFERENCES Клиенты(ID_клиента),
    ID_автомобиля INTEGER REFERENCES Автомобили(ID_автомобиля),
    Дата_продажи DATE,
    Цена_продажи DECIMAL(10, 2),
    Сотрудник_продажи VARCHAR(255)
);

CREATE TABLE Сотрудники (
    ID_сотрудника SERIAL PRIMARY KEY,
    Имя VARCHAR(255),
    Фамилия VARCHAR(255),
    Должность VARCHAR(255),
    Адрес TEXT,
    Номер_телефона VARCHAR(15),
    Электронная_почта VARCHAR(255),
    Зарплата DECIMAL(10, 2),
    Дата_приема_на_работу DATE
);

CREATE TABLE Заказы (
    ID_заказа SERIAL PRIMARY KEY,
    ID_клиента INTEGER REFERENCES Клиенты(ID_клиента),
    ID_автомобиля INTEGER REFERENCES Автомобили(ID_автомобиля),
    Дата_заказа DATE,
    Ожидаемая_дата_поставки DATE,
    Статус_заказа VARCHAR(255),
    Сотрудник_обработки_заказа VARCHAR(255)
);

CREATE TABLE Сервисное_обслуживание (
    ID_записи SERIAL PRIMARY KEY,
    ID_автомобиля INTEGER REFERENCES Автомобили(ID_автомобиля),
    Тип_обслуживания VARCHAR(255),
    Дата_обслуживания DATE,
    Стоимость_обслуживания DECIMAL(10, 2),
    Сотрудник_обслуживания VARCHAR(255)
);
