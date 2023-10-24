const portalIng = document.querySelector("#btnIngresar")

if (portalIng !== null) {
    document.querySelector("#btnIngresar").addEventListener('click', ingresar)
}

function ingresar() {
    location.href = "../templates/login.html"
}
