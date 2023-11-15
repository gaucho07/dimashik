#THIS IS NEW VERSION TO CONNECT TO POSTGRESQL
import psycopg2

conn= psycopg2.connect(host = 'localhost',
                       database = 'postgres',
                       userpg = 'postgres',
                       password = '123')
cur = conn.cursor()
cur.execute('SELECT superhero_name FROM superhero.superhero LIMIT 5;')
usernames = [r[0] for r in cur.fetchall()]
# Found= False
# while not Found:
#    username = input('Введите ваш логин:')
#    if username in usernames:
#       print('Вы есть в списке')
#       Found=True
#    else:
#          print('Вас нет в списке')

# def binary_search(username):
#     return True
#     return False
# left, right = 0, len(rows) - 1
# while left <= right:
#     mid = (left + right) // 2
#     mid_value = rows[mid] [0]
# if mid_value ==
conn.commit()
cur.close()
conn.close()
