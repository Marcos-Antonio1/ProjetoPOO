<?php include "template/header.php"?>
<div class="card" style="margin: 40px" style="margin-top: 80px">
  <form class="container" style="margin: 30px;" method="POST" action="#">
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="nome">Nome do Projeto</label>
            <input type="text" class="form-control" id="nome" placeholder="Digite o nome do projeto" required="required">
          </div>
      <div class="form-group col-md-4">
        <label for="area">Área do Projeto</label>
        <select id="area" class="form-control" required="required">
          <option selected>Selecione uma área</option>
          <option>...</option>
        </select>
      </div>
      <div class="form-group col-md-9">
        <label for="descricao">Descrição do Projeto</label>
        <textarea class="form-control" id="descricao" rows="5" placeholder="Faça uma descrição sobre seu projeto"></textarea>
    </div>
    </div>
    <h6 for="">Inicar projeto com disponibilidade para investimentos: </h6>
    <div class="form-check-inline">
        <input class="form-check-input" type="radio" name="tipo" id="disponivel" value="opcao1" checked>
        <label class="form-check-label" for="disponivel">
          Disponível
        </label>
      </div>
      <div class="form-check-inline">
        <input class="form-check-input" type="radio" name="tipo" id="indisponivel" value="opcao2">
        <label class="form-check-label" for="indisponivel">
          Não disponível
        </label>
    </div>
    <br><br><button type="submit" class="btn btn-info">Cadastrar Projeto</button>
  </form>
</div>
</body>
<?php include "template/footer.php"?>