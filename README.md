# Conceitos

> Tudo no Flutter é Widget, assim como tudo no React Native é componente.

## Variáveis

Há 2 formas principais de nomear variáveis, a primeira delas é usando explicitadamente o tipo da variável, com um `int numero` (**recomendada**), por exemplo. Mas, também com um `var numero`.

```dart
int primeiroNumero = 10; // Recomendado.

var segundoNumero = 9;
```

## Tipagem
Dart possui a tipagem estática, mas também aceita a nomenclatura usando o `var`.

Contudo, o `var` não torna o tipo dinâmico. Por exemplo, vamos dizer que definimos uma variável com `var numero = 10;`. Inicialmente ela é `int`, então agora ela vai ser `int` para o resto da vida dela.

Se eu chegar com um `numero = "Show"`, vai dar ruim!

### `null` safe

Dart é denominado de `null`safe, sendo assim, é sempre ideal que não haja valores `null` sendo usados.

Então sempre é necessários que **valores válidos** sejam passados, exceto em casos específicos nos parâmetros opcionais, por exemplo.

## Parâmetros nomeados

> Dart possui parâmetros nomeados, ou seja, `home:` é um exemplo disso.

Podem ser usados tantos os ambos cenários, tanto o de parâmetros definidos de forma clássica:
```dart
soma(1, 2);

int some(int x, int y) {
  return x + y;
}
```
Quanto também é possível usar parâmetros nomeados, que assim garantem uma sintaxe mais limpa em certos casos. 

> Por padrão, os parâmetros que **são nomeados, são opcionais**.

```dart
soma({ x: 1, y: 2 });

int soma({ int x, int y }) {
  return x + y;
}
```

# Arquivos

## Pastas individuais

As pastas relacionadas com o nome de cada SO são relacionadas com configurações mais a fundo de cada SO. Então, sendo assim, tem que mexer no código fonte nativo de cada um dos sistemas.

> `android`, `ios`, `linux`, `macos` e `web`...

## Arquivos de configuração

Cada interface possui arquivos de configuração que são relacionados com autorizações e recursos específicos e nativos da interface.

Por exemplo, se quero usar o recurso de GPS no Android, tenho ir lá, manualmente, e mexer no arquivo de configuração. Sendo eles, por exemplo, o `AndroidManifest.xml` no Android, e o `info.plist` no iOS.

# Ponto de partida

## `main()`
Todo ponto de partida, de toda classe criada, vai ser o `void main()`, seguindo o mesmo conceito de Java, por exemplo.

## `runApp()`
É a função que vai ser encontrada em todo `main`. Com isso, em todo `main.dart` vai ter lá um:
```dart
void main() {
  runApp();
}
```

# Pacotes

Geralmente teremos importações relacionadas com o `material.dart`, pois o principal ponto benéfico é a compatibilidade mais evidente e numerosa com outras plataformas que o Material Design possui. 

Ao contrário do `cupertino.dart`, que é feito seguindo o padrão Apple, que também é bem completo e responsivo, contudo ainda sim não tão compatível como o Material.

# Assets

Para poder usar os `assets` na aplicação, basta ir no arquivo `pubspec.yaml` e definir a configuração de `assets`, e daí é possível colocar os *assets* desejados.

```yaml
flutter:
  assets:
    - /lib/assets/images/diamond.png
```