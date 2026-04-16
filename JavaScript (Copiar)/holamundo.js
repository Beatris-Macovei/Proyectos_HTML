console.log("estoy en un fichero separado");
console.warn("esto es un aviso");
console.error('esto es un error');

/*
JAVA:
int num;
num = 3;
num = 3.6; //ERROR
num = "buenos dias"; //ERROR

let num = 3
num = 6.6;
num = "hola";
*/

let grade = 10;
let greeting = "hola";
let isTall = true;

console.log(grade);
grade = 9.7;
console.log(grade);
grade = 'A';
console.log(grade);
console.log(typeof(grade));

//constantes
const MAX_LENGTH = 20;
console.log(MAX_LENGTH);
MAX_LENGTH = 21;
console.log(MAX_LENGTH);

let num = 5;
let numString = "5";
console.log(num == numString);

/*
a) false
b) true
c) exception
*/

//comparador estricto: no hace convesion de tipos
console.log(num == numString);

const x = true;
const y = false;
console.log("-------------");
console.log((!x && !y) || true); //true

// if
const age = 22;
// si menor de edad, adulto, jubilado (+65)
if(age < 18)
{
    console.log("menor de edad");
} else if (age <=65)
{
    console.log("adulto");
} else
{
    console.log("tu edad no puede ser negativa")
}

//switch:
//1 que imprima lunes
//2 que imprima martes
//3 que imprima miercoles
//4 a 7 que imprima "otro"
//otros que imprima "invalido"

const day = 3;
switch(dia)
{
    case 1: console.log("lunes");
        break;
    case 2: console.log("martes");
        break;
    case 3: console.log("miercoles");
        break;
    case 4:
    case 5:
    case 6:
    case 7: console.log("otro");
        break;
   default:
        console.log("invalido");
}

//for: sabes cuantas veces iteras
