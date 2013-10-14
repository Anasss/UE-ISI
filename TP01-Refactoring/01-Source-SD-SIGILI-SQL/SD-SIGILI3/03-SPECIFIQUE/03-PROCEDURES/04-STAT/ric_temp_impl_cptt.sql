PROMPT Creating Procedure for Table 'RIC_TEMP'
create or replace procedure ric_temp_impl_cptt (no_dric varchar2, promo varchar2, idus number) is
	cursor resultat is  select cptt, moyenne 
                            from v_cpt_stat02_cptt 
                            where nodric=no_dric and pro=promo;      
        tmp resultat%ROWTYPE;  
        resmaj number; maj1 number; maj2 number; maj3 number; maj4 number; maj5 number; 
begin
	open resultat;	
	loop
            fetch resultat into tmp;
            EXIT WHEN resultat%NOTFOUND;
            select count(*) into resmaj from ric_temp where typ='cptt' and ide=tmp.cptt and iduser=idus;
            
            if(resmaj=0) then
                if(tmp.moyenne<=1.5) then
                    INSERT INTO ric_temp (iduser, ide, typ, brou, obrou, gain) values (idus, tmp.cptt, 'cptt', tmp.moyenne, 1, tmp.moyenne);
                elsif (tmp.moyenne<=2.5) then
                    INSERT INTO ric_temp (iduser, ide, typ, noti, onoti, gain) values (idus, tmp.cptt, 'cptt', tmp.moyenne, 1, tmp.moyenne);
                elsif (tmp.moyenne<=3.5) then
                    INSERT INTO ric_temp (iduser, ide, typ, util, outil, gain) values (idus, tmp.cptt, 'cptt', tmp.moyenne, 1, tmp.moyenne);
                elsif (tmp.moyenne<=4.5) then
                    INSERT INTO ric_temp (iduser, ide, typ, aut, oaut, gain) values (idus, tmp.cptt, 'cptt', tmp.moyenne, 1, tmp.moyenne);
                else
                    INSERT INTO ric_temp (iduser, ide, typ, exp, oexp, gain) values (idus, tmp.cptt, 'cptt', tmp.moyenne, 1, tmp.moyenne);
                end if;
            else
                select count(*) into maj1 from ric_temp where typ='cptt' and ide=tmp.cptt and brou is not null and iduser=idus;
                select count(*) into maj2 from ric_temp where typ='cptt' and ide=tmp.cptt and noti is not null and iduser=idus;
                select count(*) into maj3 from ric_temp where typ='cptt' and ide=tmp.cptt and util is not null and iduser=idus;
                select count(*) into maj4 from ric_temp where typ='cptt' and ide=tmp.cptt and aut is not null and iduser=idus;
                select count(*) into maj5 from ric_temp where typ='cptt' and ide=tmp.cptt and exp is not null and iduser=idus;
                
                if(tmp.moyenne<=1.5 and maj1=0) then
                    update ric_temp set brou=tmp.moyenne, gain=tmp.moyenne where typ='cptt' and ide=tmp.cptt and iduser=idus;
                elsif ((tmp.moyenne<=2.5 and maj2=0) or(tmp.moyenne<=1.5)) then
                    update ric_temp set noti=tmp.moyenne, gain=tmp.moyenne where typ='cptt' and ide=tmp.cptt and iduser=idus;
                elsif ((tmp.moyenne<=3.5 and maj3=0) or(tmp.moyenne<=2.5)) then
                    update ric_temp set util=tmp.moyenne, gain=tmp.moyenne where typ='cptt' and ide=tmp.cptt and iduser=idus;
                elsif ((tmp.moyenne<=4.5 and maj4=0) or(tmp.moyenne<=3.5)) then
                    update ric_temp set aut=tmp.moyenne, gain=tmp.moyenne where typ='cptt' and ide=tmp.cptt and iduser=idus;
                else
                    update ric_temp set exp=tmp.moyenne, gain=tmp.moyenne where typ='cptt' and ide=tmp.cptt and iduser=idus;
                end if;
            end if; 
            
	end loop;
	close resultat;
end;
/