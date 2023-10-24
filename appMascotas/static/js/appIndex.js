const portalIng = document.querySelector("#btnIngresar")
const loginIng = document.querySelector("#btnLoginIngresar")
const loginRegr = document.querySelector("#btnLoginRegresar")
const buscarHistoria = document.querySelector("#btnBuscarHistoria")
const regresarHistoria = document.querySelector("#btnRegresarHistoria")
const regresarMenu = document.querySelector("#btnMenuRegresar")
const regresarClinica = document.querySelector("#btnClinicaRegresar")

if (portalIng !== null) {
    document.querySelector("#btnIngresar").addEventListener('click', ingresar)
}

if (loginIng !== null) {
    document.querySelector("#btnLoginIngresar").addEventListener('click', loginIngresar)
}

if (loginRegr !== null) {
    document.querySelector("#btnLoginRegresar").addEventListener('click', loginRegresar)
}

if (buscarHistoria !== null) {
    document.querySelector("#btnBuscarHistoria").addEventListener('click', historiaBuscar)
}

if (regresarHistoria !== null) {
    document.querySelector("#btnRegresarHistoria").addEventListener('click', historiaRegresar)
}

if (regresarMenu !== null) {
    document.querySelector("#btnMenuRegresar").addEventListener('click', menuRegresar)
}

if (regresarClinica !== null) {
    document.querySelector("#btnClinicaRegresar").addEventListener('click', clinicaRegresar)
}

function ingresar() {
    location.href = "../templates/login.html"
}

function loginIngresar() {
    location.href = "../templates/menu.html"
}

function loginRegresar() {
    location.href = "../templates/portal.html"
}

function historiaBuscar() {
    location.href = "../templates/historiaClinica.html"
}

function historiaRegresar() {
    location.href = "../templates/menu.html"
}

function menuRegresar() {
    location.href = "../templates/login.html"
}

function clinicaRegresar() {
    location.href = "../templates/buscarHistoria.html"
}

