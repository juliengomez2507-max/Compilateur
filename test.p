[a,b,c,i,z]
BEGIN
    (* Test 1 : DISPLAY simple *)
    a := 5 + 6;
    DISPLAY a + 1;

    (* Test 2 : DISPLAY expression directe *)
    DISPLAY 42;

    (* Test 3 : IF THEN ELSE *)
    IF a > 10 THEN
        b := 1
    ELSE
        b := 0;
    DISPLAY b;

    (* Test 4 : WHILE *)
    c := 0;
    i := 1;
    WHILE i <= 5 DO
        BEGIN
            c := c + i;
            i := i + 1
        END;
    DISPLAY c;

    (* Test 5 : FOR *)
    z := 0;
    FOR i := 1 TO 5 DO
        z := z + i;
    DISPLAY z;

    (* Test 6 : IF imbrique dans FOR avec DISPLAY *)
    FOR i := 1 TO 3 DO
        BEGIN
            IF i == 2 THEN
                DISPLAY 200
            ELSE
                DISPLAY i
        END
END.
