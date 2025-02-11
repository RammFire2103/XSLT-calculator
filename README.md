input.xml - вход калькулятора в виде:

<calc>
  <expression operation="{Одна из операций (+, -, /, *)}">
    <num1>{Первое число, учавствующее в выражении}</num1>
		<num2>{Второе число, учавствующее в выражении}</num2>
  </expression>
  ...
</calc>

input.xml - вход калькулятора в виде:
<result>
  <answer>{Результат выражения}</answer>
  ...
</result>

converter.xsl - XSLT для калькулятора
