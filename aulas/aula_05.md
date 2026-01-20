# Aula 5: Publicando e Interagindo com Pacotes

**Vídeo**: [Assistir Online](https://drive.google.com/file/d/1PjeqURhYYAUXAUaP1szzTFnm7cK9hD4A/view?usp=sharing)

## Anotações
<!-- Adicione suas anotações aqui -->

### 1. Introdução
Como levar seu código local para a rede (Testnet/Devnet).

### 2. Redes na Sui
- **Devnet**: Para testes rápidos, resetada frequentemente.
- **Testnet**: Mais estável, ideal para validar antes da Mainnet.
- **Faucet**: [faucet.sui.io](https://faucet.sui.io/) para pegar tokens de teste.

### 3. Publicando Pacotes
Comando fundamental:
```bash
sui client publish --gas-budget 100000000
```
Isso cria um **Package Object** imutável na rede. O ID retornado é o endereço do seu contrato.

### 4. Interagindo
Chamar funções públicas (`entry functions`) na rede. Requer gas.

### 5. Ferramentas Extras
- **SuiNS**: Nomes legíveis (ex: `juan.sui`) em vez de endereços.
- **Move Registry (MVR)**: Gerenciador de dependências e pacotes (como npm/cargo) para Move na Sui.
