VAR
    n, somme : INTEGER;
    x, y : DOUBLE;
    lettre : CHAR;
    estVrai : BOOLEAN.

BEGIN
    (* --- 1. Test des operations arithmetiques basiques --- *)
    n := 10 + 5 * 2;
    DISPLAY n;

    (* --- 2. Test sur les flottants et comparaison --- *)
    x := 5.5;
    y := 4.5;
    DISPLAY x + y;
    
    estVrai := x > y;
    IF estVrai THEN
        DISPLAY 1
    ELSE
        DISPLAY 0;

    (* --- 3. Test de la boucle WHILE --- *)
    n := 3;
    WHILE n > 0 DO
        BEGIN
            DISPLAY n;
            n := n - 1
        END;

    (* --- 4. Test de la boucle FOR --- *)
    somme := 0;
    FOR n := 1 TO 4 DO
        somme := somme + n;
    DISPLAY somme;

    (* --- 5. Test du CASE avec liste de constantes (entiers) --- *)
    n := 2;
    CASE n OF
        1, 2, 3 : DISPLAY 100;
        4, 5    : DISPLAY 200
    ELSE DISPLAY 0
    END;

    (* --- 6. Test du CASE avec liste de constantes (caracteres) --- *)
    lettre := 'e';
    CASE lettre OF
        'a', 'e', 'i', 'o', 'u' : DISPLAY 111; (* 111 = voyelle *)
        'b', 'c', 'd'           : DISPLAY 222  (* 222 = consonne *)
    ELSE DISPLAY 333
    END

END.
