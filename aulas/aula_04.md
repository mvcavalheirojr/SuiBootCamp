# Aula 4: Armazenando informações na Sui

**Vídeo**: [Assistir Online](https://drive.google.com/file/d/1tu6UHRTHhi78e6VHQDNrNS6FOOLEpJi-/view?usp=sharing)

## Anotações
<!-- Adicione suas anotações aqui -->

### 1. Introdução
Foco em como armazenar e gerenciar informações on-chain.
- Uso de Structs e Collections.
- Armazenamento de arquivos com **Walrus**.

### 2. Structs e Abilities
Structs são a base dos ativos digitais.
Habilidades (Abilities) controlam o comportamento:
- **copy**: Permite duplicação (não padrão para assets).
- **drop**: Permite descarte (ignorada).
- **key**: Permite ser um Objeto (requer UID). Persistente no storage.
- **store**: Permite ser guardado dentro de outro objeto.

### 3. Funções de Armazenamento
Operações fundamentais (módulo `sui::transfer`):
- **Transfer**: `transfer::transfer(obj, recipient)`. Envia posse total.
- **Share**: `transfer::share_object(obj)`. Torna público/compartilhado (banco de dados global).
- **Freeze**: `transfer::freeze_object(obj)`. Torna imutável (constante pública).

### 4. Coleções
Como armazenar múltiplos itens.
- `Table`, `Bag`, `Dynamic Fields`.

### 5. Walrus
Armazenamento descentralizado de arquivos grandes (imagens, PDFs) na Sui.
