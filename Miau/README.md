# MEU Mi-Au
Aplicativo desenvolvido em flutter para conectar pessoas que procuram pets para adoção e pessoas que gostariam de doa-los.

![Cpia de Free Logo Space Template - Feito com PosterMyWall 1](https://user-images.githubusercontent.com/69700727/101115057-74d4de80-35c1-11eb-9cd7-253ab84da395.png)

# Status
Em andamento.

# Objetivo
O projeto foi desenvolvido na universidade São Francisco - Itatiba na disciplina de dispositivos moveis.
O objetivo deste app é proporcionar ao usuário a possibilidade de adotar, doar e entrar em contato com pessoas com os mesmos interesses através de ferramenta de link com Whatsapp.

# Desenvolvimento
Este projeto é totalmente em Dart9Flutter), e, tem suporte do banco de dados firebase onde os dados referente aos pets são lidos e ocorre a o login autenticado com o usuário do google.Atualmente o projeto estará efetuando o primeiro entregável dia 03/12/2020, porém o projeto permanecerá em constante evolução.

# Requisitos
Até o momento, foi utilizado apenas as ferramentas: VS Code; kid de desenvolvendo da Google, Flutter; Android SDK; e para controle de versão - GitHub <br>
Tutorial para instalação do flutter e link com o Git: https://medium.com/flutter-comunidade-br/instalando-e-configurando-flutter-no-windows-cae74711df1e <br>
Tutorial sincronização com banco de dados na nuvem do google Firebase: https://www.youtube.com/watch?v=WG5tJIAq5b0 <br>
Para desenho de telas foi utilizado o aplicativo online Figma: https://www.figma.com 

# Funcionamento
- O usuário irá logar no app MeuMiau e deve autenticar suas credências com o e-mail do google
- Após logar irá selecionar o pet de seu desejo na lista de cards disponíveis no sistema
- Ao selecionar o pet ele deverá clicar no botão "adotar"
- Ele será direcionado a uma página de dialogo onde ele deve escolher entrar em contato com o dono ou cancelar a operação
- Ao clicar em "Sim" o sistema compartilha o pet com algum usuário de whatsapp do usuário.

# Movimentos futuros
- Criar cadastramento com validação no banco de dados firebase<br>
- Criar perfil "Quero Adotar" e "Quero doar". <br>
  Quero Doar: Perfil onde será cadastrado os cards de pets e o dono poderá incluir ou retirar os pets quando desejados, os pets que apareceram no feed serão os peds       cadastrados pelo os seus donos<br>
  Quero Adotar: Perfil para quem está procurando um pet para adotar, o usuário irá realizar o cadastramento demonstrando o interesse pelo tipo de pet que seja e navegará no feed para o encontrar. <br>
- Criar link entre dono e usuário da adoção, onde quando o usuário desejar entrar em contato com o dono do pet o sistema abrirá um diálogo diretamente com o número de whatsapp cadastrado no sistema de "Quero doar".<br>
- Dsenvolver login por biometria<br>
- Melhorar diálogo de decisão<br>
- Criar geolocalização para melhor demonstrar os pets diponíveis na região do usuário que deseja adotar. <br>
- Melhorar layout das telas<br>
- CRUD completo no firebase para inserir, excluir, alterar e ler do banco de dadoas firebase. <br>

# Classe principal - PETS 

class Pet {
  final int _codpet;
  final String _name;
  final String _publishingDate;
  final String _city;
  final String _imageUrl;
  final String _ownerName;
  final String _ownerImage;
  final String _ownerPhone;

  Pet(this._codpet,this._name, this._publishingDate, this._city, this._imageUrl,
      this._ownerName, this._ownerImage, this._ownerPhone);

  String get ownerPhone => _ownerPhone;

  String get ownerImage => _ownerImage;

  String get ownerName => _ownerName;

  String get imageUrl => _imageUrl;

  String get city => _city;

  String get publishingDate => _publishingDate;

  String get name => _name;

  int get codpet => _codpet;
}

# AUTOR
Brenda Barth Ferreira 
Rafael Fernandes 

![4d371fc6-0776-481d-a3f3-d72ff015d253](https://user-images.githubusercontent.com/69700727/101116132-4821c680-35c3-11eb-97cc-f9a9ef5ff022.jpg)



