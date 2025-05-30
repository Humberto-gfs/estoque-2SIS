<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastrar Usu�rio</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <!-- Barra de navega��o simples -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Gerenciamento de Usu�rios</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="/admin/dashboard.jsp">Voltar ao Dashboard</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/logout">Sair</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- Conte�do principal -->
    <div class="container mt-5">
        <h2 class="text-center">Cadastrar Usu�rio</h2>
        <!-- Formul�rio de Cadastro de Usu�rio -->
        <form action="cadastroUsuario" method="post" class="mt-4">
            <!-- Nome do Usu�rio -->
            <div class="mb-3">
                <label for="nome" class="form-label">Nome do Usu�rio</label>
                <input type="text" class="form-control" id="nome" name="nome" required>
            </div>
            <!-- E-mail do Usu�rio -->
            <div class="mb-3">
                <label for="email" class="form-label">E-mail</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>
            <!-- Senha do Usu�rio -->
            <div class="mb-3">
                <label for="senha" class="form-label">Senha</label>
                <input type="password" class="form-control" id="senha" name="senha" required>
            </div>
            <!-- Sele��o do Perfil -->
            <div class="mb-3">
                <label for="perfil" class="form-label">Perfil</label>
                <select class="form-control" id="perfil" name="perfil" required>
                    <option value="" disabled selected>Selecione um perfil</option>
                    <option value="admin">admin</option>
                    <option value="user">user</option>
                    <c:forEach var="item" items="${lista}">
                        <option value="${item}">${item}</option>
                    </c:forEach>
                </select>
            </div>
            <!-- Bot�o de Cadastro -->
            <button type="submit" class="btn btn-primary">Cadastrar</button>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
