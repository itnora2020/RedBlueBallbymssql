DECLARE @r1 INT;
DECLARE @r2 INT;
DECLARE @r3 INT;
DECLARE @r4 INT;
DECLARE @r5 INT;
DECLARE @r6 INT;
DECLARE @b1 INT;
DECLARE @randnum INT; --执行次数
SET @randnum = 100; 


SELECT  @r1 = FLOOR(RAND() * 34);
SELECT  @r2 = FLOOR(RAND() * 34);
SELECT  @r3 = FLOOR(RAND() * 34);
SELECT  @r4 = FLOOR(RAND() * 34);
SELECT  @r5 = FLOOR(RAND() * 34);
SELECT  @r6 = FLOOR(RAND() * 34);
SELECT  @b1 = FLOOR(RAND() * 17);

WHILE ( @randnum > 0 )
    BEGIN
        IF @r1 != 0
            AND @r1 NOT IN ( @r2, @r3, @r4, @r5, @r6 )
            AND @r2 != 0
            AND @r2 NOT IN ( @r1, @r3, @r4, @r5, @r6 )
            AND @r3 != 0
            AND @r3 NOT IN ( @r2, @r1, @r4, @r5, @r6 )
            AND @r4 != 0
            AND @r4 NOT IN ( @r2, @r3, @r1, @r5, @r6 )
            AND @r5 != 0
            AND @r5 NOT IN ( @r2, @r3, @r4, @r1, @r6 )
            AND @r6 != 0
            AND @r6 NOT IN ( @r2, @r3, @r4, @r5, @r1 )
            AND @b1 != 0
			AND @randnum = 1
            BEGIN
				SELECT  @randnum = 0;
                SELECT  @r1 red,
                        @r2 red,
                        @r3 red,
                        @r4 red,
                        @r5 red,
                        @r6 red,
                        @b1 blue;

            END;
        ELSE
            BEGIN
				IF @randnum = 1
				BEGIN
				SELECT @randnum = 2 
				END
                SELECT  @r1 = FLOOR(RAND() * 34);
                SELECT  @r2 = FLOOR(RAND() * 34);
                SELECT  @r3 = FLOOR(RAND() * 34);
                SELECT  @r4 = FLOOR(RAND() * 34);
                SELECT  @r5 = FLOOR(RAND() * 34);
                SELECT  @r6 = FLOOR(RAND() * 34);
                SELECT  @b1 = FLOOR(RAND() * 17);
                SELECT  @randnum = @randnum -1;
            END;
    END;
