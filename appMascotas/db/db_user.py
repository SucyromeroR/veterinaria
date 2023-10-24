import pymysql
from pymysql import MySQLError, connect

user = "sucy"
password = "1234"
db_name = "db_mascotas"
ip = "localhost"
connection = ""


def connectionSQL():
    try:
        global connection
        connection = connect(host=ip,
                             user=user,
                             password=password,
                             db=db_name)
        print("Succesful connection")
    except MySQLError as ex:
        print(ex)


def consult_user_login(username, password):
    try:
        instruction = "SELECT * FROM usuario_login WHERE usuario_log" + \
            username + " AND password_log = " + password + ";"
        cursor = connection.cursor()
        cursor.execute(instruction)
        connection.commit()
        print("User consulted")
        return "menu.html"
    except MySQLError as ex:
        print("Usuario no registrado")
        print(ex)
        return "registroUsuario.html"


def insert_user_login(username, password):
    try:
        instruction = "INSERT INTO usuario_login VALUES (" + \
            username + ", '" + password + "');"
        cursor = connection.cursor()
        cursor.execute(instruction)
        connection.commit()
        print("User Login registered")
    except MySQLError as ex:
        print(ex)


def insert_user(ident, nomb, apell, tel, email, user):
    try:
        instruction = "INSERT INTO usuario VALUES (" + ident + ", '" + nomb + \
            "', '" + apell + "', " + tel + ", '" + email + "', " + user + ");"
        cursor = connection.cursor()
        cursor.execute(instruction)
        connection.commit()
        print("User registered")
    except MySQLError as ex:
        print(ex)


def insert_pet(idUsuario, nombMasc, apellMasc, especMasc, razaMasc, sexMasc, colorMasc, pesoMasc):
    try:
        instruction = "INSERT INTO mascota (id_usuario, nomb_mascota, apell_mascota, espec_mascota, " + \
            "raza_mascota, sexo_mascota, color_mascota, peso_mascota) VALUES (" + \
            idUsuario + ", '" + nombMasc + "', '" + apellMasc + "', '" + especMasc + "', '" + \
            razaMasc + "', '" + sexMasc + "', '" + colorMasc + "', " + pesoMasc + ");"
        cursor = connection.cursor()
        cursor.execute(instruction)
        connection.commit()
        print("Pet registered")
    except MySQLError as ex:
        print(ex)
