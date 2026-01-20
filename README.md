# Marcos Cavalheiro's Sui Lab (SuiBootCamp)

Este repositório é o hub central do meu desenvolvimento no ecossistema Sui. Ele contém tanto os materiais de estudo do Bootcamp oficial quanto projetos de portfólio profissional.

## 📂 Estrutura do Repositório

### 1. 🎓 Sui Move Bootcamp (Raiz)
Materiais de estudo, anotações de aula e scripts de configuração do ambiente.

- **[`aulas/`](./aulas/)**: Notas detalhadas de cada aula (Dia 1 ao Dia 9).
    - [Índice das Aulas](./aulas/README.md)
- **`setup_sui.sh`**: Script de automação para instalar Rust, Sui CLI e dependências.
- **`bin/` & `logs/`**: Utilitários e arquivos de log do ambiente.

### 2. 🛡️ [SuiSentinel](./SuiSentinel/) (Submodule)
> *Git Submodule apontando para `mvcavalheirojr/SuiSentinel`*

Um projeto de **Segurança Forense Ativa para DeFi**.
- **Agent (Rust)**: Monitoramento de mempool e detecção de anomalias.
- **Contract (Move)**: Cofre com mecanismo de *Emergency Shutdown*.
- [Acessar Repositório do Projeto](./SuiSentinel/)

## 🚀 Como Usar

### Instalação do Ambiente
Se você está clonando este repo pela primeira vez:

```bash
chmod +x setup_sui.sh
./setup_sui.sh
source ~/.zshrc
```

### Inicializando o Submodule (SuiSentinel)
Para baixar o código do projeto Sentinel:

```bash
git submodule update --init --recursive
```
