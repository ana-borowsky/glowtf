const listaProdutos = document.getElementsByClassName('corpo')[0];

function toggleWishlist(element, current, hat){
  if (urlParams.has("user")) {
    if (current) { //True - In Wishlist
      element.style.color = '#282828';
    } else {
      element.style.color = 'white';
    }
    fetch('wishlist.php', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded'
      },
      body: new URLSearchParams({
        'user_id': urlParams.get("user"),
        'user_id': hat,
      })
    })

    element.onclick = function() {
      toggleWishlist(element, !current);
    };
  }
  else {
    window.location.href = '../login/login.html';
    alert("Você precisa estar logado para ter uma lista de desejos.");
  }

}

function carregarProdutos(query) {
  let urlParams = new URLSearchParams(window.location.search);

  let wishlistList = [];

    if(urlParams.has("user")){
      wishlistList = getWishlist(urlParams.get("user"));
    }

  fetch("home.php")
    .then((response) => {
      if (!response.ok) {
        throw new Error("Erro na conexão");
      }
      return response.json();
    })
    .then((data) => {
      console.log(data);
      var count = 0;
      data.forEach((data) => {
        let colorHex = "";
        let colorSplash = "";
        let inWishlist = data.hatId in wishlistList;
        if (data.hex_color != undefined) {
          colorHex = `
            <div class="cor-da-tinta" style="background-color: ${data.hex_color};"></div>
            <div class="card-nome-tinta">${data.paint_name}</div>
          `;
          colorSplash = `<img class="card-splash" src="../dados/imagens/tintas/${data.paint_promo_image}" />`;
        }

        let card = `
          <div class="card">
            <span class="material-symbols-outlined estrela" onclick="toggleWishlist(this, ${inWishlist}, ${data.hatId})">star</span>
            <div class="card-titulo">${data.hat_name}</div>
            <div class="card-tinta">
              ${colorHex}
            </div>
            <a onclick='MoverPagina("../produto/produto.html", "hat_id", "${data.hat_id}")' class="imagens">
              <img class="card-imagem-produto" src="../dados/imagens/itens_do_jogo/${data.hat_promo_image}">
              ${colorSplash}
            </a>
            <div class="preco-botao">
              <div class="card-preco">R$ ${(data.price / 100).toFixed(2).replace('.', ',')}</div>
              <button class="carrinho-btn" type="button" onclick="adicionaProduto(${data.hat_id}, '${urlParams.get("user")}')">
                <span class="material-symbols-outlined">add_shopping_cart</span>
                <div>Adicionar ao carrinho</div>
              </button>
            </div>
          </div>
        `;


        listaProdutos.insertAdjacentHTML("beforeend", card);
        count += 1;
      });
    })
    .catch((error) => console.error("Error:", error));
}

document.addEventListener("DOMContentLoaded", () => carregarProdutos(""));

function adicionaProduto(hatId, userId) {


  let urlParams = new URLSearchParams(window.location.search);
  if (!urlParams.has('user')) {
    alert("Você precisa estar logado para realizar compras.");
    window.location.href = '../login/login.html';
  } else {
    let url = '../carrinho/adiciona_item_carrinho.php';
    let params = 'hat_id=' + encodeURIComponent(hatId) + '&id=' + encodeURIComponent(userId);

    let options = {
      method: 'POST',
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded'
      },
      body: params
    };

    fetch(url, options)
      .then(response => {
        if (!response.ok) {
          throw new Error('Erro ao adicionar produto');
        }
        return response.text();
      })
      .then(data => {
        console.log(data);
        alert('Produto adicionado ao carrinho com sucesso.');
        MoverPagina('../carrinho/carrinho.html');
      })
      .catch(error => {
        console.error('Erro:', error);
        alert('Erro ao adicionar produto.');
      });
  }
}



//Gera a lista de wishlist do Usuário
function getWishlist(userId) {
  fetch('get_wishlist.php', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/x-www-form-urlencoded',
    },
    body: new URLSearchParams({
      user_id: userId
    })
  })
  .then(response => response.json())
  .then(hatIds => {
    return hatIds;
  })
  .catch(error => {
    console.error('Error:', error);
  });
}
