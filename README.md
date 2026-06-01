# CERIcompiler

A simple compiler.
From : Pascal-like imperative LL(k) langage
To : 64 bit 80x86 assembly langage (AT&T)

**Download the repository :**

> git clone git@framagit.org:jourlin/cericompiler.git

**Build the compiler and test it :**

> make test

**Have a look at the output :**

> gedit test.s

**Debug the executable :**

> ddd ./test

**Commit the new version :**

> git commit -a -m "What's new..."

**Send to your framagit :**

> git push -u origin master

**Get from your framagit :**

> git pull -u origin master

**This version Can handle :**

// Program := [DeclarationPart] StatementPart
// DeclarationPart := "[" Identifier {"," Identifier} "]"
// StatementPart := Statement {";" Statement} "."
// Statement := AssignementStatement
// AssignementStatement := Identifier ":=" Expression

// Expression := SimpleExpression [RelationalOperator SimpleExpression]
// SimpleExpression := Term {AdditiveOperator Term}
// Term := Factor {MultiplicativeOperator Factor}
// Factor := Number | Letter | "(" Expression ")"| "!" Factor
// Number := Digit{Digit}
// Identifier := Letter {(Letter|Digit)}

// AdditiveOperator := "+" | "-" | "||"
// MultiplicativeOperator := "*" | "/" | "%" | "&&"
// RelationalOperator := "==" | "!=" | "<" | ">" | "<=" | ">="  
// Digit := "0"|"1"|"2"|"3"|"4"|"5"|"6"|"7"|"8"|"9"
// Letter := "a"|...|"z"



# Évaluation du projet 

## 1. Travail personnel

* Typage (INTEGER, BOOLEAN, DOUBLE, CHAR) et déclaration multiple.
* Opérations et comparaisons sur flottants.
* Structure CASE. 
* Boucles FOR, WHILE et condition IF.

## Note sur l'utilisation des corrections: 
J'ai surtout regardé la correction lors du tp7 pour comprendre la logique a certains niveaux.

##  Note sur l'utilisation de l'IA :
Je me suis aidé d'une IA uniquement pour deux tâches:
1. Déboguer une erreur de la pile  lors de l'appel à printf pour l'instruction DISPLAY.
2. Générer des fichiers de tests en Pascal pour vérifier le bon fonctionnement du code.

## Résultats du fichier test.p :

20
10.000000
1
3
2
1
10
100
111

