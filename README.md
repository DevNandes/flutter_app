
# **Lista Interativa com Flutter**

Este projeto foi desenvolvido como parte da disciplina de **Desenvolvimento Mobile** no **6º período de Engenharia de Software** do **UniSENAI**. O objetivo do aplicativo é criar uma **lista interativa**, onde o usuário pode adicionar, visualizar e expandir itens para mostrar descrições detalhadas.

## **📱 Funcionalidades**
- Adicionar itens com **título** e **descrição personalizada**.
- Expandir ou colapsar itens para visualizar uma **descrição detalhada**.
- **Botões de rolagem** para o início e o final da lista.
- Design limpo e responsivo com cores consistentes.

## **🎯 Objetivos do Projeto**
- Aplicar conceitos básicos e intermediários de **desenvolvimento mobile** com Flutter.
- Aprender a manipular widgets dinâmicos, estados e eventos de interação do usuário.
- Criar um aplicativo organizado, modularizado e com design intuitivo.

## **🛠️ Tecnologias Utilizadas**
- **Linguagem:** Dart
- **Framework:** Flutter
- **Plataformas Suportadas:** Android e Linux Desktop

## **📂 Estrutura do Projeto**
A estrutura foi organizada para manter o código limpo e modularizado:
```
lib/
├── main.dart          # Ponto de entrada do aplicativo
├── screens/           # Telas principais do app
│   ├── home_page.dart # Tela inicial com a lista
├── widgets/           # Componentes reutilizáveis
│   ├── lista_widget.dart      # Lista de itens com funcionalidade expandir/colapsar
│   ├── item_detalhado.dart    # Widget para a descrição detalhada
├── utils/             # Arquivos utilitários (opcional, caso precise no futuro)
```

## **📋 Como Executar**
Siga estas etapas para rodar o projeto localmente:

### **Pré-requisitos**
1. **Instalar o Flutter**: [Guia oficial de instalação](https://docs.flutter.dev/get-started/install)
2. **Configurar um dispositivo ou emulador Android**:
    - Android Studio ou dispositivo físico conectado via USB.

### **Comandos**
```bash
# Clone este repositório
git clone https://github.com/DevNandes/flutter_app.git

# Navegue até a pasta do projeto
cd flutter_app

# Instale as dependências
flutter pub get

# Execute o aplicativo
flutter run
```
## **📚 Aprendizados**
Durante o desenvolvimento deste projeto, os seguintes conceitos foram aplicados:
- Manipulação de **estados** no Flutter com `setState`.
- Uso de **ScrollController** para rolagem programática.
- Criação de **diálogos modais** com `showDialog`.
- Modularização e **organização de código** em múltiplos arquivos.

---

## **👩‍🏫 Sobre a Matéria**
- **Curso:** Engenharia de Software
- **Instituição:** UniSENAI
- **Disciplina:** Desenvolvimento Mobile
- **Semestre:** 6º Período
- **Professor(a):** Mateus Ramos Pereira

---

## **🤝 Contribuições**
Contribuições são bem-vindas! Para sugerir melhorias:
1. Faça um fork do repositório.
2. Crie uma nova branch.
3. Envie um Pull Request com sua alteração.

---

## **📝 Licença**
Este projeto é **open-source** e está licenciado sob a **MIT License**. Consulte o arquivo `LICENSE` para mais detalhes.