PROMPT Creating Procedure for Table 'RIC02_TEMP'
create or replace procedure ric02_temp_impl (idSeq number,no_ric1 number,no_ric2 number) is
	cursor curNotes1 is  SELECT ID_CPTT, ID_FC, ID_CAP, ID_CPT, NIVEAU_COMPETENCE, NIVEAU_MATURITE 
			  FROM RIC_POSITIONNEMENT RPOS 
			  WHERE RPOS.ID_RIC=no_ric1
			  ORDER BY ID_CPTT ASC, ID_FC ASC, ID_CAP ASC, ID_CPT ASC;
        Notes1 curNotes1%ROWTYPE;

	cursor curNotes2 is  SELECT ID_CPTT, ID_FC, ID_CAP, ID_CPT, NIVEAU_COMPETENCE, NIVEAU_MATURITE 
			  FROM RIC_POSITIONNEMENT RPOS 
			  WHERE RPOS.ID_RIC=no_ric2
			  ORDER BY ID_CPTT ASC, ID_FC ASC, ID_CAP ASC, ID_CPT ASC;
        Notes2 curNotes2%ROWTYPE;
begin
	open curNotes1;
	open curNotes2; 
	loop
            fetch curNotes1 into Notes1;
	    fetch curNotes2 into Notes2;
            EXIT WHEN curNotes1%NOTFOUND;
	    
	    if(curNotes2%NOTFOUND) then
	        INSERT INTO RIC02_TEMP (IDSEQ, ID_CPTT, ID_FC, ID_CAP, ID_CPT, NIVEAU_COMPETENCE1, NIVEAU_MATURITE1)
		       VALUES (idSeq, Notes1.ID_CPTT, Notes1.ID_FC, Notes1.ID_CAP, Notes1.ID_CPT, Notes1.NIVEAU_COMPETENCE, Notes1.NIVEAU_MATURITE);
 	      else
		INSERT INTO RIC02_TEMP (IDSEQ, ID_CPTT, ID_FC, ID_CAP, ID_CPT, NIVEAU_COMPETENCE1, NIVEAU_MATURITE1, NIVEAU_COMPETENCE2, NIVEAU_MATURITE2)
		       VALUES (idSeq, Notes1.ID_CPTT, Notes1.ID_FC, Notes1.ID_CAP, Notes1.ID_CPT, Notes1.NIVEAU_COMPETENCE, Notes1.NIVEAU_MATURITE, Notes2.NIVEAU_COMPETENCE, Notes2.NIVEAU_MATURITE);
             end if;
 
	end loop;
	close curNotes1;
        close curNotes2;
        commit;
end;
/
