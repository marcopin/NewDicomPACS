DROP PACKAGE BODY ASU.PKG_R_KDNFUNC
/

--
-- PKG_R_KDNFUNC  (Package Body) 
--
CREATE OR REPLACE PACKAGE BODY ASU."PKG_R_KDNFUNC" 
 is-- Created by TimurLan
  FUNCTION GET_KDN (pFD_DATAC IN DATE)
  RETURN NUMBER
   IS
    CURSOR c IS
      SELECT /*+ rule*/COUNT(*)
        FROM (SELECT FK_PACID
                FROM TSROKY
               WHERE (((FD_DATA1 BETWEEN pFD_DATAC AND pFD_DATAC+1-1/(24*60*60)) AND pFD_DATAC < FD_DATA3)
                  OR (pFD_DATAC BETWEEN FD_DATA1 AND FD_DATA3)
                  OR ((FD_DATA3 BETWEEN pFD_DATAC AND pFD_DATAC+1-1/(24*60*60)) AND pFD_DATAC > FD_DATA1))
                 AND FK_PRYB NOT IN (1,3,7)
               UNION
              SELECT FK_PACID
                FROM TSROKY
               WHERE (((FD_DATA1 BETWEEN pFD_DATAC AND pFD_DATAC+1-1/(24*60*60)) AND pFD_DATAC < FD_DATA3)
                  OR ((FD_DATA3 BETWEEN pFD_DATAC AND pFD_DATAC+1-1/(24*60*60)) AND pFD_DATAC = FD_DATA1))
                 AND FK_PRYB IN (5,6));
    i NUMBER;
  BEGIN
    OPEN c;
    FETCH c INTO i;
    CLOSE c;
    RETURN i;
  END;
  FUNCTION GET_KDN2 (pFD_DATAC IN DATE)
  RETURN NUMBER
   IS
    CURSOR c IS
      SELECT /*+ rule*/COUNT(*)
        FROM (SELECT FK_PACID
                FROM TSROKY
               WHERE (((FD_DATA1 BETWEEN pFD_DATAC AND pFD_DATAC+1-1/(24*60*60)) AND pFD_DATAC < FD_DATA3)
                  OR (pFD_DATAC BETWEEN FD_DATA1 AND FD_DATA3)
                  OR ((FD_DATA3 BETWEEN pFD_DATAC AND pFD_DATAC+1-1/(24*60*60)) AND pFD_DATAC > FD_DATA1))
                 AND FK_PRYB NOT IN (1,3,7)
               UNION
              SELECT FK_PACID
                FROM TSROKY
               WHERE (((FD_DATA1 BETWEEN pFD_DATAC AND pFD_DATAC+1-1/(24*60*60)) AND pFD_DATAC < FD_DATA3)
                  OR (pFD_DATAC BETWEEN FD_DATA1 AND FD_DATA3)
                  OR ((FD_DATA3 BETWEEN pFD_DATAC AND pFD_DATAC+1-1/(24*60*60)) AND pFD_DATAC > FD_DATA1))
                 AND FK_PRYB = 1
                 AND PKG_R_ALLFUNC.COUNT_SROK(FK_PACID)=1
               UNION
              SELECT FK_PACID
                FROM TSROKY
               WHERE (((FD_DATA1 BETWEEN pFD_DATAC AND pFD_DATAC+1-1/(24*60*60)) AND pFD_DATAC < FD_DATA3)
                  OR ((FD_DATA3 BETWEEN pFD_DATAC AND pFD_DATAC+1-1/(24*60*60)) AND pFD_DATAC = FD_DATA1))
                 AND FK_PRYB IN (5,6));
    i NUMBER;
  BEGIN
    OPEN c;
    FETCH c INTO i;
    CLOSE c;
    RETURN i;
  END;
  FUNCTION GET_KDN_KORP (pFD_DATAC IN DATE,pFK_KORPID IN NUMBER)
  RETURN NUMBER
   IS
    CURSOR cAll IS
      select /*+ rule*/count(*) as fn_count
        from (select fk_pacid
                from tsroky
               where (((FD_DATA1 between pFD_DATAC and pFD_DATAC+1-1/(24*60*60)) and pFD_DATAC < FD_DATA3)
                  OR (pFD_DATAC between FD_DATA1 and FD_DATA3)
                  OR ((FD_DATA3 between pFD_DATAC and pFD_DATAC+1-1/(24*60*60)) and pFD_DATAC > FD_DATA1))
                 and fk_pryb not in (1,3,7)
               UNION
              select fk_pacid
                from tsroky
               where (((FD_DATA1 between pFD_DATAC and pFD_DATAC+1-1/(24*60*60)) and pFD_DATAC < FD_DATA3)
                  OR ((FD_DATA3 between pFD_DATAC and pFD_DATAC+1-1/(24*60*60)) and pFD_DATAC = FD_DATA1))
                 and fk_pryb in (5,6));
    CURSOR cKorp IS
      select /*+ rule*/count(*) as fn_count
        from (select fk_pacid
                from tsroky
               where (((FD_DATA1 between pFD_DATAC and pFD_DATAC+1-1/(24*60*60)) and pFD_DATAC < FD_DATA3)
                  OR (pFD_DATAC between FD_DATA1 and FD_DATA3)
                  OR ((FD_DATA3 between pFD_DATAC and pFD_DATAC+1-1/(24*60*60)) and pFD_DATAC > FD_DATA1))
                 and fk_pryb not in (1,3,7)
                 AND GET_PACKORPID(FK_PACID,pFD_DATAC)=pFK_KORPID
               UNION
              select fk_pacid
                from tsroky
               where (((FD_DATA1 between pFD_DATAC and pFD_DATAC+1-1/(24*60*60)) and pFD_DATAC < FD_DATA3)
                  OR ((FD_DATA3 between pFD_DATAC and pFD_DATAC+1-1/(24*60*60)) and pFD_DATAC = FD_DATA1))
                 and fk_pryb in (5,6)
                 AND GET_PACKORPID(FK_PACID,pFD_DATAC)=pFK_KORPID);
    i NUMBER;
  BEGIN
    if pFK_KORPID > 0 then
      OPEN cKorp;
      FETCH cKorp INTO i;
      CLOSE cKorp;
    else
      OPEN cAll;
      FETCH cAll INTO i;
      CLOSE cAll;
    end if;
    RETURN i;
  END;
  FUNCTION GET_KDN (pFD_DATA1 IN DATE, pFD_DATA2 IN DATE)
  RETURN NUMBER
   IS
    i NUMBER;
    s NUMBER;
  BEGIN
    S:=0;
    FOR i IN 0..pFD_DATA2-pFD_DATA1 LOOP
      S:=S+PKG_R_KDNFUNC.GET_KDN(pFD_DATA1+i);
    END LOOP;
    RETURN S;
  END;
  FUNCTION GET_KDN2 (pFD_DATA1 IN DATE, pFD_DATA2 IN DATE)
  RETURN NUMBER
   IS
    i NUMBER;
    s NUMBER;
  BEGIN
    S:=0;
    FOR i IN 0..pFD_DATA2-pFD_DATA1 LOOP
      S:=S+PKG_R_KDNFUNC.GET_KDN2(pFD_DATA1+i);
    END LOOP;
    RETURN S;
  END;
  FUNCTION GET_KDN_PEREHOD (pFD_DATA IN DATE)
  RETURN NUMBER
   IS
    CURSOR c IS
      SELECT SUM (TRUNC(FD_DATA3) - pFD_DATA)
        FROM tsroky,
             (SELECT DISTINCT FK_ID FK_VID
                FROM TSROKY
               WHERE TRUNC(FD_DATA1) <= pFD_DATA
                 AND TRUNC(FD_DATA3) > pFD_DATA
                 AND FK_PRYB IN (2, 4, 5, 6) )
       WHERE fk_id = fk_vid;
    i NUMBER;
  BEGIN
    OPEN c;
    FETCH c INTO i;
    CLOSE c;
    RETURN NVL(i,0);
  END;
  FUNCTION GET_KDNV_OPOZD (pFD_DATA1 IN DATE, pFD_DATA2 IN DATE)
  RETURN NUMBER
   IS
    CURSOR c IS
      SELECT /*+ rule*/SUM (T1.FN_KOL - T2.FN_KOL)
        FROM TSROKY T1, TSROKY T2
       WHERE T1.FK_PACID = T2.FK_PACID
         AND T2.FD_DATA1 BETWEEN pFD_DATA1 AND pFD_DATA2+1-1/(24*60*60)
         AND T2.FK_PRYB = 2
         AND GET_PACOUTCOME (T2.FK_PACID) IS NOT NULL
         AND TRUNC(T1.FD_DATA1) < TRUNC(T2.FD_DATA1);
    i NUMBER;
  BEGIN
    OPEN c;
    FETCH c INTO i;
    CLOSE c;
    RETURN NVL(i,0);
  END;
  FUNCTION GET_KDNV_OPOZD_PRIZN (pFD_DATA1 IN DATE, pFD_DATA2 IN DATE, pFK_PRIZNID IN NUMBER)
  RETURN NUMBER
   IS
    CURSOR c IS
      SELECT /*+ rule*/SUM (T1.FN_KOL - T2.FN_KOL)
        FROM TSROKY T1, TSROKY T2
       WHERE T1.FK_PACID = T2.FK_PACID
         AND T2.FD_DATA1 BETWEEN pFD_DATA1 AND pFD_DATA2+1-1/(24*60*60)
         AND T2.FK_PRYB = 2
         AND GET_PACOUTCOME (T2.FK_PACID) IS NOT NULL
         AND TRUNC(T1.FD_DATA1) < TRUNC(T2.FD_DATA1)
         AND GET_PAC_PRIZN_KODE (T2.FK_PACID) = pFK_PRIZNID;
    i NUMBER;
  BEGIN
    OPEN c;
    FETCH c INTO i;
    CLOSE c;
    RETURN NVL(i,0);
  END;
  FUNCTION GET_KDNV_OPOZD_SHORT (pFD_DATA1 IN DATE, pFD_DATA2 IN DATE)
  RETURN NUMBER
   IS
    CURSOR c IS
      SELECT /*+ rule*/SUM (T1.FN_KOL - T2.FN_KOL)
        FROM TSROKY T1, TSROKY T2
       WHERE T1.FK_PACID = T2.FK_PACID
         AND T2.FD_DATA1 BETWEEN pFD_DATA1 AND pFD_DATA2+1-1/(24*60*60)
         AND T2.FK_PRYB = 2
         AND GET_PACOUTCOME (T2.FK_PACID) IS NOT NULL
         AND TRUNC(T1.FD_DATA1) < TRUNC(T2.FD_DATA1)
         AND GET_PACDAYSPLAN (T2.FK_PACID) <= PKG_SMINI.READSTRING ('CONFIG', 'SHORT_SROK', '5');
    i NUMBER;
  BEGIN
    OPEN c;
    FETCH c INTO i;
    CLOSE c;
    RETURN NVL(i,0);
  END;
  FUNCTION GET_KDNV_OPOZD_SHORT_PRIZN (pFD_DATA1 IN DATE, pFD_DATA2 IN DATE, pFK_PRIZNID IN NUMBER)
  RETURN NUMBER
   IS
    CURSOR c IS
      SELECT /*+ rule*/SUM (T1.FN_KOL - T2.FN_KOL)
        FROM TSROKY T1, TSROKY T2
       WHERE T1.FK_PACID = T2.FK_PACID
         AND T2.FD_DATA1 BETWEEN pFD_DATA1 AND pFD_DATA2+1-1/(24*60*60)
         AND T2.FK_PRYB = 2
         AND GET_PACOUTCOME (T2.FK_PACID) IS NOT NULL
         AND TRUNC(T1.FD_DATA1) < TRUNC(T2.FD_DATA1)
         AND GET_PACDAYSPLAN (T2.FK_PACID) <= PKG_SMINI.READSTRING ('CONFIG', 'SHORT_SROK', '5')
         AND GET_PAC_PRIZN_KODE (T2.FK_PACID) = pFK_PRIZNID;
    i NUMBER;
  BEGIN
    OPEN c;
    FETCH c INTO i;
    CLOSE c;
    RETURN NVL(i,0);
  END;
  FUNCTION GET_KDNV_EARLY (pFD_DATAC IN DATE)
  RETURN NUMBER
   IS
    CURSOR c IS
      SELECT SUM (fn_kol)
        FROM TSROKY
       WHERE fd_data1 between pFD_DATAC and pFD_DATAC+1-1/(24*60*60)
         AND FK_PRYB = 3
         AND FN_KOL > 0;
    i NUMBER;
  BEGIN
    OPEN c;
    FETCH c INTO i;
    CLOSE c;
    RETURN NVL(i,0);
  END;
  FUNCTION GET_KDNV_EARLY (pFD_DATA1 IN DATE, pFD_DATA2 IN DATE)
  RETURN NUMBER
   IS
    CURSOR c IS
      SELECT SUM (FN_KOL)
        FROM tsroky
       WHERE fk_pryb = 3
         AND fn_kol > 0
         AND fd_data1 BETWEEN pFD_DATA1 AND pFD_DATA2+1-1/(24*60*60);
    i NUMBER;
  BEGIN
    OPEN c;
    FETCH c INTO i;
    CLOSE c;
    RETURN NVL(i,0);
  END;
  FUNCTION GET_KDNV_EARLY_PRIZN (pFD_DATA1 IN DATE, pFD_DATA2 IN DATE, pFK_PRIZNID IN NUMBER)
  RETURN NUMBER
   IS
    CURSOR c IS
      SELECT SUM (FN_KOL)
        FROM tsroky
       WHERE fk_pryb = 3
         AND fn_kol > 0
         AND fd_data1 BETWEEN pFD_DATA1 AND pFD_DATA2+1-1/(24*60*60)
         AND GET_PAC_PRIZN_KODE (FK_PACID) = pFK_PRIZNID;
    i NUMBER;
  BEGIN
    OPEN c;
    FETCH c INTO i;
    CLOSE c;
    RETURN NVL(i,0);
  END;
  FUNCTION GET_KDNV_EARLY_SHORT (pFD_DATA1 IN DATE, pFD_DATA2 IN DATE)
  RETURN NUMBER
   IS
    CURSOR c IS
      SELECT SUM (FN_KOL)
        FROM tsroky
       WHERE fk_pryb = 3
         AND fn_kol > 0
         AND fd_data1 BETWEEN pFD_DATA1 AND pFD_DATA2+1-1/(24*60*60)
         AND GET_PACDAYSPLAN (FK_PACID) <= PKG_SMINI.READSTRING ('CONFIG', 'SHORT_SROK', '5');
    i NUMBER;
  BEGIN
    OPEN c;
    FETCH c INTO i;
    CLOSE c;
    RETURN NVL(i,0);
  END;
  FUNCTION GET_KDNV_EARLY_SHORT_PRIZN (pFD_DATA1 IN DATE, pFD_DATA2 IN DATE, pFK_PRIZNID IN NUMBER)
  RETURN NUMBER
   IS
    CURSOR c IS
      SELECT SUM (FN_KOL)
        FROM tsroky
       WHERE fk_pryb = 3
         AND fn_kol > 0
         AND fd_data1 BETWEEN pFD_DATA1 AND pFD_DATA2+1-1/(24*60*60)
         AND GET_PACDAYSPLAN (FK_PACID) <= PKG_SMINI.READSTRING ('CONFIG', 'SHORT_SROK', '5')
         AND GET_PAC_PRIZN_KODE (FK_PACID) = pFK_PRIZNID;
    i NUMBER;
  BEGIN
    OPEN c;
    FETCH c INTO i;
    CLOSE c;
    RETURN NVL(i,0);
  END;
  FUNCTION GET_KDNV_PRODL (pFD_DATA1 IN DATE, pFD_DATA2 IN DATE)
  RETURN NUMBER
   IS
    CURSOR c IS
      SELECT SUM (FN_KOL)
        FROM tsroky
       WHERE fd_data1 BETWEEN pFD_DATA1 AND pFD_DATA2+1-1/(24*60*60)
         AND fk_pryb IN (5, 6)
         AND GET_PACOUTCOME (FK_PACID) IS NOT NULL;
    i NUMBER;
  BEGIN
    OPEN c;
    FETCH c INTO i;
    CLOSE c;
    RETURN NVL(i,0);
  END;
  FUNCTION GET_KDNV_PRODL_PRIZN (pFD_DATA1 IN DATE, pFD_DATA2 IN DATE, pFK_PRIZNID IN NUMBER)
  RETURN NUMBER
   IS
    CURSOR c IS
      SELECT SUM (FN_KOL)
        FROM tsroky
       WHERE fd_data1 BETWEEN pFD_DATA1 AND pFD_DATA2+1-1/(24*60*60)
         AND fk_pryb IN (5, 6)
         AND GET_PACOUTCOME (FK_PACID) IS NOT NULL
         AND GET_PAC_PRIZN_KODE (FK_PACID) = pFK_PRIZNID;
    i NUMBER;
  BEGIN
    OPEN c;
    FETCH c INTO i;
    CLOSE c;
    RETURN NVL(i,0);
  END;
  FUNCTION GET_KDNV_PRODL_SHORT (pFD_DATA1 IN DATE, pFD_DATA2 IN DATE)
  RETURN NUMBER
   IS
    CURSOR c IS
      SELECT SUM (FN_KOL)
        FROM tsroky
       WHERE fd_data1 BETWEEN pFD_DATA1 AND pFD_DATA2+1-1/(24*60*60)
         AND fk_pryb IN (5, 6)
         AND GET_PACOUTCOME (FK_PACID) IS NOT NULL
         AND GET_PACDAYSPLAN (FK_PACID) <= PKG_SMINI.READSTRING ('CONFIG', 'SHORT_SROK', '5');
    i NUMBER;
  BEGIN
    OPEN c;
    FETCH c INTO i;
    CLOSE c;
    RETURN NVL(i,0);
  END;
  FUNCTION GET_KDNV_PRODL_SHORT_PRIZN (pFD_DATA1 IN DATE, pFD_DATA2 IN DATE, pFK_PRIZNID IN NUMBER)
  RETURN NUMBER
   IS
    CURSOR c IS
      SELECT SUM (FN_KOL)
        FROM tsroky
       WHERE fd_data1 BETWEEN pFD_DATA1 AND pFD_DATA2+1-1/(24*60*60)
         AND fk_pryb IN (5, 6)
         AND GET_PACOUTCOME (FK_PACID) IS NOT NULL
         AND GET_PACDAYSPLAN (FK_PACID) <= PKG_SMINI.READSTRING ('CONFIG', 'SHORT_SROK', '5')
         AND GET_PAC_PRIZN_KODE (FK_PACID) = pFK_PRIZNID;
    i NUMBER;
  BEGIN
    OPEN c;
    FETCH c INTO i;
    CLOSE c;
    RETURN NVL(i,0);
  END;
  FUNCTION GET_KDNV_PRODL (pFD_DATA1 IN DATE, pFD_DATA2 IN DATE, pFK_PRYB IN NUMBER)
  RETURN NUMBER
   IS
    CURSOR c IS
      SELECT SUM (FN_KOL)
        FROM tsroky
       WHERE fd_data1 BETWEEN pFD_DATA1 AND pFD_DATA2+1-1/(24*60*60)
         AND fk_pryb = pFK_PRYB
         AND GET_PACOUTCOME (FK_PACID) IS NOT NULL;
    i NUMBER;
  BEGIN
    OPEN c;
    FETCH c INTO i;
    CLOSE c;
    RETURN NVL(i,0);
  END;
  FUNCTION GET_KDNV_PRODL_PRIZN (pFD_DATA1 IN DATE, pFD_DATA2 IN DATE, pFK_PRIZNID IN NUMBER, pFK_PRYB IN NUMBER)
  RETURN NUMBER
   IS
    CURSOR c IS
      SELECT SUM (FN_KOL)
        FROM tsroky
       WHERE fd_data1 BETWEEN pFD_DATA1 AND pFD_DATA2+1-1/(24*60*60)
         AND fk_pryb = pFK_PRYB
         AND GET_PACOUTCOME (FK_PACID) IS NOT NULL
         AND GET_PAC_PRIZN_KODE (FK_PACID) = pFK_PRIZNID;
    i NUMBER;
  BEGIN
    OPEN c;
    FETCH c INTO i;
    CLOSE c;
    RETURN NVL(i,0);
  END;
  FUNCTION GET_KDNV_PRODL_SHORT (pFD_DATA1 IN DATE, pFD_DATA2 IN DATE, pFK_PRYB IN NUMBER)
  RETURN NUMBER
   IS
    CURSOR c IS
      SELECT SUM (FN_KOL)
        FROM tsroky
       WHERE fd_data1 BETWEEN pFD_DATA1 AND pFD_DATA2+1-1/(24*60*60)
         AND fk_pryb = pFK_PRYB
         AND GET_PACOUTCOME (FK_PACID) IS NOT NULL
         AND GET_PACDAYSPLAN (FK_PACID) <= PKG_SMINI.READSTRING ('CONFIG', 'SHORT_SROK', '5');
    i NUMBER;
  BEGIN
    OPEN c;
    FETCH c INTO i;
    CLOSE c;
    RETURN NVL(i,0);
  END;
  FUNCTION GET_KDNV_PRODL_SHORT_PRIZN (pFD_DATA1 IN DATE, pFD_DATA2 IN DATE, pFK_PRIZNID IN NUMBER, pFK_PRYB IN NUMBER)
  RETURN NUMBER
   IS
    CURSOR c IS
      SELECT SUM (FN_KOL)
        FROM tsroky
       WHERE fd_data1 BETWEEN pFD_DATA1 AND pFD_DATA2+1-1/(24*60*60)
         AND fk_pryb = pFK_PRYB
         AND GET_PACOUTCOME (FK_PACID) IS NOT NULL
         AND GET_PACDAYSPLAN (FK_PACID) <= PKG_SMINI.READSTRING ('CONFIG', 'SHORT_SROK', '5')
         AND GET_PAC_PRIZN_KODE (FK_PACID) = pFK_PRIZNID;
    i NUMBER;
  BEGIN
    OPEN c;
    FETCH c INTO i;
    CLOSE c;
    RETURN NVL(i,0);
  END;
end PKG_R_KDNFUNC;
/

SHOW ERRORS;

