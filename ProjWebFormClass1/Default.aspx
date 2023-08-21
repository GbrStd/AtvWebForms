<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProjWebFormClass1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro de Animais</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container mt-4 p-4 border rounded">
        <p class="h2 pb-4">Cadastro de Animais</p>
        <form runat="server">
            <div class="form-group row">
                <div class="col-md-6">
                    <label for="nome">Nome do Animal:</label>
                    <asp:TextBox type="text" placeholder="Informe o nome do animal" CssClass="form-control" ID="TxtNomeAnimal" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <label for="raca">Raça:</label>
                    <asp:TextBox type="text" placeholder="Informe a raça do animal" CssClass="form-control" ID="TxtRacaAnimal" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-md-6">
                    <label for="nomeDono">Nome do Dono:</label>
                    <asp:TextBox type="text" placeholder="Informe o nome do dono" CssClass="form-control" ID="TxtNomeDono" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <label for="dataNascimento">Data de Nascimento:</label>
                    <asp:TextBox type="date" CssClass="form-control" ID="TxtDataNasci" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-md-6">
                    <label for="peso">Peso:</label>
                    <asp:TextBox type="text" placeholder="Informe o peso do animal" CssClass="form-control" ID="TxtPesoAnimal" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-6">
                    <label for="sexo">Sexo:</label>
                    <asp:DropDownList ID="ddlSexo" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Macho" Value="macho" />
                        <asp:ListItem Text="Fêmea" Value="femea" />
                    </asp:DropDownList>
                </div>
            </div>
            <asp:Button CssClass="btn btn-primary" type="submit" ID="BtnCriar" runat="server" Text="Cadastrar" OnClick="BtnCriar_Click" />

            <div class="container p-4 mt-4 border">
                <p class="h2">Dados</p>
                <asp:GridView CssClass="table table-striped table-bordered" ID="GdvAnimal" runat="server">
                </asp:GridView>

            </div>
        </form>
    </div>

</body>
</html>
