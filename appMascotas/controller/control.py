from flask import render_template, request, flash
from db.db_user import *

id_usuario = 0

def home_function():
    return render_template('portal.html')

def home_page2_function():
    return render_template('portal.html')

def page_login_function():
    return render_template('login.html')

def page_registro_menu_function():
    pagina = ""
    username = request.form["username"]
    password = request.form["password"]
    connectionSQL()
    pagina = consult_user_login(username, password)
    return render_template(pagina)

def registro_usuario_function():
    pagina = ""
    ident = request.form["ident"]
    nomb = request.form["nomb"]
    apell = request.form["apell"]
    tel = request.form["tel"]
    email = request.form["email"]
    error_empty = field_empty(ident, nomb, apell, tel, email)
    if (error_empty=="false"):
        connectionSQL()
        insert_user_login(ident, ident)
        insert_user(ident, nomb, apell, tel, email, ident)
        global id_usuario
        id_usuario = ident
        pagina = "registroMascota.html"
    else:
        pagina = "registroUsuario.html"
    return render_template(pagina)

def field_empty(ident, nomb, apell, tel, email):
    error = "false"
    if (ident == ""):
        flash("La identificación no puede ser nula")
        error = "true"
    if (nomb == ""):
        flash("El nombre no puede ser nulo")
        error = "true"
    if (apell == ""):
        flash("El apellido no puede ser nulo")
        error = "true"
    if (tel == ""):
        flash("El teléfono de contacto no puede ser nulo")
        error = "true"
    if (email == ""):
        flash("El correo electrónico no puede ser nulo")
        error = "true"
    return error

def registro_mascota_function():
    pagina = ""
    namePet = request.form["namePet"]
    apellPet = request.form["apellPet"]
    especPet = request.form["especPet"]
    razaPet = request.form["razaPet"]
    sexPet = request.form["sexPet"]
    colorPet = request.form["colorPet"]
    pesoPet = request.form["pesoPet"]
    error_empty = field_pet_empty(namePet, apellPet, especPet, razaPet, sexPet, colorPet, pesoPet)
    if (error_empty=="false"):
        connectionSQL()
        insert_pet(id_usuario, namePet, apellPet, especPet, razaPet, sexPet, colorPet, pesoPet)
        pagina = "menu.html"
    else:
        pagina = "registroMascota.html"
    return render_template(pagina)

def field_pet_empty(namePet, apellPet, especPet, razaPet, sexPet, colorPet, pesoPet):
    error = "false"
    if (namePet == ""):
        flash("El nombre de la mascota no puede ser nula")
        error = "true"
    if (apellPet == ""):
        flash("El apellido de la mascota no puede ser nulo")
        error = "true"
    if (especPet == ""):
        flash("La especie de la mascota no puede ser nulo")
        error = "true"
    if (razaPet == ""):
        flash("La raza de la mascota no puede ser nulo")
        error = "true"
    if (sexPet == ""):
        flash("El sexo de la mascota no puede ser nulo")
        error = "true"
    if (colorPet == ""):
        flash("El color de la mascota no puede ser nulo")
        error = "true"
    if (pesoPet == ""):
        flash("El peso de la mascota no puede ser nulo")
        error = "true"
    return error
