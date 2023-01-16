PROCEDURE DOT_PRODUCT(ps:INTEGER,v1,v2:ARRAY_OF_INTEGER)
VAR
    i:INTEGER;
    ps=0;
    
BEGIN
    WHILE (v1.length<>v2.length) DO
    
        write("we can't calculat two vector's different length")
        ps:=NAN;
    END_WHILE
    FOR i FROM 0 TO v1.length-1 STEP step  DO
    ps=ps+(v1[i]*v2[i])
        
    END_FOR

END
ALGORITHM PRODUCT
VAR
    vector : ARRAY_OF ARRAY;
    i:INTEGER =0;
    j:INTEGER=0;
    ps:INTEGER;
BEGIN
    FOR i FROM 0 TO vector.length-2 STEP step  DO
        FOR j FROM i+1 TO vector.length-1 STEP step  DO
        DOT_PRODUCT(ps,vector[i],vector[j]);
        IF (ps=0) THEN
           write("vector",vector[i],"and vector",vector[j],"are orthgonal")

        END_IF
    END_FOR
    END_FOR
END
