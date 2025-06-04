//----------------------- Navbar ------------------------ \\
document.addEventListener("DOMContentLoaded", function () {
    //Obtener la ubicación actual 
    const currentPath = window.location.pathname.toLowerCase();

    //Seleccionamos todos los links del navbar
    const navLinks = document.querySelectorAll('.navbar-nav .nav-link')

    //Buscar la coincidendia con la ruta actual:
    navLinks.forEach(link => {
        const linkinPath = link.getAttribute('href').toLowerCase();

        //Verifiar si es la ruta actual:
        if (currentPath == linkinPath || (linkinPath !== '#' && currentPath.includes(linkinPath))) {
            link.classList.add('active')
            //también marcar el elemento padre:
            link.closest('.nav-item').classList.add('active')
            console.log(currentPath);
        } else {
            link.classList.remove('active');
            link.closest('.nav-item').classList.remove('active')
        }

    })
});




