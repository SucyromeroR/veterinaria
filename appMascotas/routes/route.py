from server import app
from controller.control import *


@app.route('/')
def home_page():
    return home_function()


@app.route('/home')
def home_page2():
    return home_page2_function()


@app.route('/login_page', methods=["post"])
def login_page():
    return page_login_function()


@app.route('/consult_user_login', methods=["post"])
def user_consult():
    return page_registro_menu_function()


@app.route('/register_user', methods=["post"])
def user_register():
    return registro_usuario_function()

@app.route('/register_pet', methods=["post"])
def pet_register():
    return registro_mascota_function()
