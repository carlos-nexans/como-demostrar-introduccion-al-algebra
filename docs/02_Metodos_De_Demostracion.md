# Métodos de demostración y lógica simbólica.

A menudo, las matemáticas del colegio y del bachillerato suponen resolver ecuaciones, desigualdades y realizar operaciones bien definidas mendiante procesos y métodos, no obstante, como se ha visto desde Matemáticas I, hay que ser capaz de enfrentarse también a funciones, conjuntos y otros objetos matemáticos. Lo que une todos estos conocimientos es el *razonamiento deductivo*.

El *razonamiento deductivo*, normalmente se presenta en forma de pruebas y demostraciones, aunque, en el fondo, también es el origen de los *procedimientos*. El curso de Álgebra I, a diferencia de las matemáticas comunes de ingeniería, es una materia en la cual la teoria juega un papel muy central. Esta seccion de lógica y métodos de prueba se agrega porque, a veces hay confusión sobre como hacer demostraciones dado que para algunos puede ser algo nuevo.

## La lógica simbólica

__Definición__: una expresión booleana E, está conformada por constantes true y false (verdad y falsedad, respectivamente), variables booleanas y las operaciones $\neg$, $\land$, $\lor$, $\Rightarrow$, $\Leftarrow$, $\Leftrightarrow$. Las constantes booleanas muchas veces se llaman *valores booleanos* y las variables, a menudo, se dice que son de tipo *booleano*. Las variables booleanas se denotan con letras minusculas y las expresiones con letras mayusculas, tipicamente [1, pág 25].

Definimos, las siguientes variables:

- p : mañana nevará
- q : mañana lloverá

En la siguiente tabla se pueden apreciar los simbolos y su significado en el lenguaje natural.

|      Simbolo      |              Nombre             |        Ejemplo       |                   Traducción del ejemplo                   |
|:-----------------:|:-------------------------------:|:--------------------:|:----------------------------------------------------------:|
|       $\neg$      |             negación            |       $\neg p$       |                      Mañana no nevará                      |
|       $\lor$      |            disyunción           |       $p\lor q$      |               Mañana nevará o mañana lloverá               |
|       $\lor$      |            conjunción           |      $p\land q$      |               Mañana nevará y mañana lloverá               |
| $\Rightarrow$     | implicación                     | $p\Rightarrow q$     | Si mañana llueve, entonces mañana nevará.                  |
| $\Leftarrow$      | consecuente                     | $p\Leftarrow q$      | Que mañana llueva, es una consecuencia de que mañana nieve |
| $\Leftrightarrow$ | equivalencia, doble implicación | $p\Leftrightarrow q$ | Mañana llueve, si y solo si, mañana nieva                  |          |

\pagebreak

## Traducción de teoremas y proposiciones

1) Si $p$ es un número primo y p divide a $ab$, entonces $p$ divide a $a$ o $p$ divide a $b$. Podemos definir las siguientes variables booleanas:

- r : $p$ es un número primo
- s : $p$ divide a $ab$
- t : $p$ divide a $a$
- u : $p$ divide a $b$

$$r \land s \Rightarrow t \lor u$$

2) Si $f(x)$ es un polinomio en $\mathbb{F}$, y $a\in\mathbb{F}$ entonces, $f(a)=0$ si y solo si $x-a$ divide a $f(x)$.

- r : $f(x)$ es un polinomio en $\mathbb{F}$
- s : $a\in\mathbb{F}$
- t : $f(a)=0$
- u : $x-a$ divide a $f(x)$

$$ r \land s \Rightarrow ( t \Leftrightarrow u ) $$

3) Si $f(x)$ es un polinomio con coeficientes en $\mathbb{F}$ y $a\in\mathbb{F}$, entonces $f(a)$ es el resto de dividir $f(x)$ entre $x-a$.

- r : $f(x)$ es un polinomio con coeficientes en $\mathbb{F}$
- s : $a\in\mathbb{F}$
- t : $f(a)$ es el resto de dividir $f(x)$ entre $x-a$

$$ r \land s \Rightarrow t $$

Una vez se tengan habilidades básicas de lógica proposicional, se hablarán de métodos de prueba y teoremas de lógica. Se propone al lector hacer los siguientes ejercicios y revisar los primeros capitulos de *How to prove it, a structured approach* [2].

1. Dé una expresión E de las siguientes proposiciones:
	1. Juan y Pedro dicen la verdad, o bien, ambos mienten.
	2. No irás a esquiar o bien, si vas a esquiar entonces no habrá nieve.
	3. Alicia no fué a la universidad y Pedro también.

2. Diga si las siguientes expresiones tienen una estructura correcta:
	1. $\neg(P, Q \land R)$
	2. $\neg(P \lor Q \land R) \Rightarrow (p \Leftrightarrow s)$
	3. $\neg(P \lor (Q \land R)) \Rightarrow (m \land n)$

\pagebreak

## Metodos de demostracion basicos

__Demostraciones que involucran implicacion__, para demostrar $P \Rightarrow Q$

__El metateorema de deducción extendido__. Suponga que al considerar las expresiones $P_{1}, P_{2}, ..., P_{n}$ como verdades, podemos demostrar $Q$. Entonces la expresion $P_{1} \land P_{2} \land ... \land P_{n} \Rightarrow Q$ es una verdad o teorema.

__El método directo__: Para demostrar $P \Rightarrow Q$, suponga que $P$ es cierto, y mediante el uso de proposiciones, lemas, teoremas o corolarios conocidos, demuestre $Q$. Ejemplo, demuestre que si $x > 3$ e $y < 2$, entonces $x^2 - 2y > 5$

Suponga que $x > 3$ e $y < 2$. Se tiene que $x^2 = xx > 3x$ y $3x > 3*3 = 9$, entonces $x^2 > 9$. Por otro lado, la segunda desigualdad implica que $2y < 4$, de donde $-4 < -2y$. "Sumando" ambos resultados, obtenemos:

$$x^2 - 2y > 9 - 4 = 5$$

En ocasiones, no es sencillo demostrar por el método directo, por ejemplo, consideremos la siguiente proposición: si $p$ es un número primo y p divide a $ab$, entonces $p$ divide a $a$ o $p$ divide a $b$. Suponer la hipótesis no nos deja demostrar la conclusión tan fácilmente, para solucionar este problema, podemos conseguir otra expresión equivalente mas sencilla de demostrar utilizando teoremas de lógica [1, pag. 52-78]:

1) **Equivalencia** $p \Leftrightarrow q$ se puede definir como $(p \Rightarrow q) \land (q \Rightarrow p)$
2) **Contrareciproco**, $p \Rightarrow q$ es equivalente a $\neg q \Rightarrow \neg p$ . 
3) **Debilitamiento y fortalecimiento**
	a. $p \land q \Rightarrow p$
	b. $p \Rightarrow p \lor q$
	c. $p \land q \Rightarrow p \lor q$
4) **Definicion de implicacion**. La expresion $p \Rightarrow q$ es equivalente a $\neg p \lor q$
5) **Leyes de De Morgan**
	a. $\neg (p \land q)$ es equivalente a $\neg p \lor \neg q$
	b. $\neg (p \lor q)$ es equivalente a $\neg p \land \neg q$
6) **Analisis de casos**
	a. $(p \Rightarrow r) \land (q \Rightarrow r)$ es equivalente a $p \lor q \Rightarrow r$
	b. $(p \Rightarrow r) \land (\neg p \Rightarrow r)$ es equivalente a $r$
7) **Shunting** $p \Rightarrow (q \Rightarrow r)$ es equivalente a $p \land q \Rightarrow r$
8) **Tercero excluído** $p \lor \neg p$ es verdadero.
9) **Doble negación** $\neg\neg p$ es equivalente a $p$

Hay muchos mas teoremas de logica, pero estos son bastante resaltantes, instamos al lector a leer el capítulo 3 de *A logical approach to discrete math* [1], para añadir más herramientas de deducción. Mediante estos teoremas, introduciremos los siguientes métodos de prueba

__El contrarecíproco__: para demostrar $P \Rightarrow Q$, se puede demostrar $\neg Q \Rightarrow \neg P$; dado que ambas afirmaciones son equivalentes, con una se puede concluir la otra

__Análisis de casos__: por los teoremas agrupados en el punto 6, tenemos:

1. Para demostrar $P \lor Q \Rightarrow R$, se puede demostrar $P \Rightarrow R$ y, $Q \Rightarrow R$.
2. Para demostrar $Q$, podemos partir de una cierta expresion $P$ y demostrar que $P \Rightarrow Q$ y $\neg P \Rightarrow Q$.

"Para asegurarte de que todas tus afirmaciones esten bien justificadas, debes ser esceptico de cada inferencia que hagas en tus demostraciones. Si tienes dudas de que tu justificacion sea correcta, entonces no es correcta. Despues de todo, ¿Si tu propio razonamiento no te convence, como esperas convencer a alguien más?" [2, pag. 86].

__Contradicción__: 

1. Para demostrar $P$, podemos suponer que $\neg P$ es cierto y llegar a cualquier falsedad o contradicción, mediante teoremas conocidos.
2. Podemos realizar el mismo procedimiento para demostrar una expresión que involucre una implicación.


$$\neg (P\Rightarrow Q)$$
$$\Leftrightarrow$$
$$\neg (\neg P\lor Q)$$
$$\Leftrightarrow$$
$$\neg\neg P\land \neg Q$$
$$\Leftrightarrow$$
$$P\land\neg Q$$

Quiere decir que, para demostrar $P \Rightarrow Q$, podemos suponer que $P$ y $\neg Q$ son verdades y llegar a una contradicción.

\pagebreak

# Cuantificacion y logica de predicados

Contenido

\pagebreak