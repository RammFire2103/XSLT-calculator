# XSLT Калькулятор

XSLT-калькулятор, который выполняет базовые арифметические операции (`+`, `-`, `/`, `*`).

---

## Файлы проекта

- **input.xml**: Входной файл с арифметическими выражениями для вычисления.
- **converter.xsl**: XSLT файл, который выполняет преобразование и вычисления.
- **output.xml**: Выходной файл с результатами вычислений.

---

## Формат входного файла (input.xml)

Входной XML файл должен иметь следующую структуру:

```xml
<calc>
  <expression operation="{Операция}">
    <num1>{Первое число}</num1>
    <num2>{Второе число}</num2>
  </expression>
  ...
</calc>
