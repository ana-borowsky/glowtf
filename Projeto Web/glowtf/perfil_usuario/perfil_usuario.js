function carregaProdutos() {
<<<<<<< HEAD
  let urlParams2 = new URLSearchParams(window.location.search);
  const listaProdutos = document.getElementsByClassName("itens")[0];
  fetch("perfil_usuario.php", {
    method: 'POST',
    headers: {
        'Content-Type': 'application/x-www-form-urlencoded'
    },
    body: new URLSearchParams({
        'id': urlParams2.get('user')
    })
})
=======
  const listaProdutos = document.getElementsByClassName("itens")[0];
  fetch("perfil_usuario.php")
>>>>>>> 25d9a7e03eba9da92a2f11d2aa02165a197f21c5
    .then((response) => {
      if (!response.ok) {
        throw new Error("Erro na conexão");
      }
      return response.json();
    })
    .then((data) => {
      console.log(data);
      data.forEach((data) => {
        const item = `
        <tr>
            <td class="imagens">
                <img class="imagem" src="../dados/imagens/itens_do_jogo/${data.hat_promo_image}">
                <img class="splash" src="../dados/imagens/tintas/${data.paint_promo_image}">
            </td>
            <td>
              <div class="dados-produto">
                <div class="titulo">${data.hat_name}</div>
                  <div class="tinta">
                    <div class="cor-da-tinta"></div>
                    <div class="nome-tinta">${data.paint_name}</div>
                  </div>
              </div>
            </td>
            <td class="preco">
              ${data.sale_date}
          </td>
            <td class="preco">
            R$ ${data.sale_price}
            </td>
          </tr>
        `
        listaProdutos.insertAdjacentHTML("beforeend", item);
      });
    })
    .catch((error) => console.error("Error:", error));
}
document.addEventListener("DOMContentLoaded", () => carregaProdutos(""));

function identificaUsuario() {
    let urlParams2 = new URLSearchParams(window.location.search);
    fetch('../bibliotecas/get_user_data.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded'
        },
        body: new URLSearchParams({
            'id': urlParams2.get('user')
        })
    })
    .then(response => response.json()) // Converter a resposta para JSON
    .then(data => {
<<<<<<< HEAD
      console.log(data)
        document.getElementsByClassName("title")[0].innerText = "Seja bem-vindo, " + data[0].name;
=======
        console.log(data)
        document.getElementsByClassName("title")[0].innerText = "Seja bem-vindo, " + data.name;
>>>>>>> 25d9a7e03eba9da92a2f11d2aa02165a197f21c5
    })
    .catch(error => {
        console.error('Erro:', error);
    });
}

document.addEventListener("DOMContentLoaded", () => identificaUsuario());