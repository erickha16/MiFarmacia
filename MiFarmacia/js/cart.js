//Eventos que se cargan al generar la página
document.addEventListener('DOMContentLoaded', function () {
    // Manejar incremento
    document.querySelectorAll('.plus-btn').forEach(button => {
        button.addEventListener('click', function () {
            const input = this.parentNode.querySelector('.quantity');
            input.value = parseInt(input.value) + 1;
            updateTotals();
        });
    });

    //Decremento de cantidad
    document.querySelectorAll('.minus-btn').forEach(button => {
        button.addEventListener('click', function () {
            const input = this.parentNode.querySelector('.quantity');
            if (parseInt(input.value) > 1) {
                input.value = parseInt(input.value) - 1;
                updateTotals();
            }
        });
    });

    // Eliminar productos
    document.querySelectorAll('.remove-btn').forEach(button => {
        button.addEventListener('click', function () {
            this.closest('.cart-item').remove();
            updateTotals();
            checkEmptyCart();
        });
    });

    // Actualizar totales (simulado)
    function updateTotals() {
        // Aquí iría la lógica real para calcular totales de los productos
        console.log('Actualizando totales...');
    }

    // Verificar carrito vacío
    function checkEmptyCart() {
        if (document.querySelectorAll('.cart-item').length === 0) {
            // Mostrar mensaje de carrito vacío
            const cartBody = document.querySelector('.card-body');
            cartBody.innerHTML = `
                <div class="text-center py-5">
                    <i class="fas fa-shopping-cart fa-4x text-muted mb-4"></i>
                    <h4 class="text-muted">Tu carrito está vacío</h4>
                    <a href="/pages/index.aspx" class="btn btn-primary mt-3">
                        <i class="fas fa-arrow-left me-2"></i>Ir a comprar
                    </a>
                </div>
            `;
        }
    }
});