VAR
    n, somme : INTEGER;
    x, y : DOUBLE;
    lettre : CHAR;
    test : BOOLEAN.
BEGIN
    (* entiers, comme avant *)
    n := 10 + 5;
    DISPLAY n;

    (* flottants : les 4 operations *)
    x := 7.5;
    y := 2.0;
    DISPLAY x + y;
    DISPLAY x - y;
    DISPLAY x * y;
    DISPLAY x / y;

    (* comparaison de flottants *)
    test := x > y;
    IF test THEN DISPLAY 'O' ELSE DISPLAY 'N';

    (* caracteres *)
    lettre := 'k';
    DISPLAY lettre;

    (* boucle entiere qui marche toujours *)
    somme := 0;
    FOR n := 1 TO 5 DO somme := somme + n;
    DISPLAY somme
END.
