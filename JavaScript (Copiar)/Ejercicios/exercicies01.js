//Ejercicio 1

const number = prompt("Introducir un numero", "00" ); //el seguno "" es texto
//que aparece en el bloque donde introduces el numero

//como declarar strings
let nombre = "Sete";
nombre = 'asdf';  //no importa que comillas usar
//otra forma de declarar string es con `backtick (acento grave)
let saludo = `Buenos dias ${nombre}`;
console.log(saludo);

if(number % 2 == 0)
{
    console.log("El numero "+ number +" es par");  //console.log es para que 
}                                                  // aparezca texto en la consola
else
{
    console.log("El numero "+ number +" es impar");
}

//otra forma de hacer este bloque con `backtick (acento grave)
if(number % 2 == 0)
{
    console.log(`El numero ${number} es par`);  //console.log es para que 
}                                                  // aparezca texto en la consola
else
{
    console.log(`El numero ${number} es impar`);
}

//Operador ternario:
const mens = number % 2 == 0 ? `El numero ${number} es par` : `El 
numero ${number} es impar`; 
console.log(mens);

//=============================================================================
//Ejercicio 2

const edad = prompt("¿Cuál es tu edad?");

if(edad <= 5 && edad >= 0)
{
    console.log(`Infante: ${edad}`);
}
else if(edad >= 6 && edad <= 12)
{
    console.log(`Niñe: ${edad}`);
}
else if(edad >= 13 && edad <= 17)
{
    console.log(`Adolescente: ${edad}`);
}
else if(edad >= 18 && edad <= 64)
{
    console.log(`Adulte: ${edad}`);
}
else
{
    console.log(`Jubilade: ${edad}`);
}

//=============================================================================
//Ejercicio 3

let numero = "15";
numero = "14";
numero = "13";
numero = "12";
numero = "11";
numero = "10";
numero = "9";
numero = "8";
numero = "7";
numero = "6";
numero = "5";
numero = "4";
numero = "3";
numero = "2";
numero = "1";

for(let i = 0; i < 15; i++)
{
    console.log(numero);
}
//??