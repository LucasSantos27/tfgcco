# Clube da Cachaça
O Clube da Cachaça é um _Market Place_ e um serviço por assinaturas para amantes da bebida mais brasileira de todas, temos uma aplicação _Web_ e _Mobile_ que se conecta através de uma conexão API REST.

## Aplicação Mobile

Para a aplicação _Mobile_ é utilizado o framework <a href="https://docs.flutter.dev/get-started/install">*Flutter*</a> junto com o gerenciador de estados <a href="https://pub.dev/packages/get">*GetX*</a>. As versões utilizas são _2.2.3_ e _4.3.8_, respectivamente.

O motivo da utilização do flutter é pelo seu crescimento exponencial e vem cada vez mais se tornando um grande player no mercado de desenvolvimento de aplicativos móveis e expandindo agora para aplicações web, no entanto, ainda está embrionário.

## Como Executar

Para executar a aplicação temos como pré requisitos o download do flutter na versão _2.2.3_ e estar configurado na sua máquina o <a href="https://github.com/StanleySenne/Projeto_TFG_cachaca">backend</a>.

Após a instalação e configuração, a primeira coisa para se fazer é executar o seguinte comando dentro da pasta projeto:

```shh
  flutter pub get
```

> Caso de algum erro, verifique se fez certo a instalação do flutter.

Antes de executar o programa, você deve utiliza o seu próprio _device_ ou um emulador para conseguir ter o aplicativo em sua máquina.

A minha recomendação é a utilização de um celular físico pois você ele não atrapalha o desempenho do computador e é melhor a experiência para o usuário. 

Caso, queira saber como configurar o dispotivo basta <a href="https://medium.com/@marcoshenriqueh393/como-configurar-dispositivos-físicos-no-flutter-b3acbe02e895">clicar aqui</a> e caso você queira um emulador eu recomendo a utilização do <a href="https://balta.io/blog/flutter-instalacao-configuracao-android-windows">_Android Studio_</a> como _IDE_.

> Caso você use o VS Code como eu, não esqueça de baixar o plugin do Flutter e do Dart para melhorar sua irmesão ao executar a aplicação

Após seguir esses passos e ter configurado localmente o backend, você pode executar a aplicação utilizando o seguinte comando:

```shh
  flutter run
```
