document.addEventListener('DOMContentLoaded', function () {
  const inputUploadImagem = document.getElementById('upload-imagem');
  const divImagens = document.querySelector('.imagens');
  const imgProduto = document.querySelector('.imagem-produto');
  const selectTinta = document.getElementById('tinta');
  const imgSplash = document.querySelector('.splash');

  // Imagem do produto e splash são inicialmente escondidas
  divImagens.style.display = 'none';
  imgSplash.style.display = 'none';

  // Esconde ou mostra a imagem do produto conforme input ter ou não imagem
  inputUploadImagem.addEventListener('change', function () {
    if (inputUploadImagem.files.length > 0) {
      divImagens.style.display = 'block';
      const arquivo = inputUploadImagem.files[0];
      const nomeImagemProduto = arquivo.name;
      const leitor = new FileReader();
      leitor.onload = function (e) {
        imgProduto.src = e.target.result;
      };
      leitor.readAsDataURL(arquivo);
    } else {
      divImagens.style.display = 'none';
    }
  });

  // Esconde ou mostra o splash da tinta conforme o valor do input
  selectTinta.addEventListener('change', function () {
    const tintaSelecionada = selectTinta.value;
    if (tintaSelecionada !== "Nenhuma" && tintaSelecionada !== "") {
      imgSplash.src = `../../dados/imagens/tintas/${tintaSelecionada.replace(/ /g, '_')}.png`;
      imgSplash.style.display = 'block';
      console.log(imgSplash.src);
    } else {
      imgSplash.style.display = 'none';
    }
  });
});

function validarTecla(event) {
  const tecla = event.key;
  if (
    tecla === 'Backspace' || tecla === 'Delete' || tecla === 'ArrowLeft' || tecla === 'ArrowRight' ||
    tecla === 'Tab' || tecla === 'Enter'
  ) {
    return;
  }
  // Impedir qualquer tecla que não seja um número
  if (!/^[0-9]$/.test(tecla)) {
    event.preventDefault();
  }
}

document.getElementById('estoque').addEventListener('keydown', validarTecla);

function cadastraProduto() {

  const formulario = document.getElementById('formProduto');

  const formData = new FormData(formulario);

  fetch('adicionar_produto.php', {
      method: 'POST',
      body: formData
  })
      .then(response => response.text())
      .then(data => {
          console.log(data); 
  })

  .catch(error => {
      console.error('Erro:', error);
      alert('Ocorreu um erro ao enviar o formulário.');
  });

  // window.location.href = "./atualiza_cadastro.html";
}


