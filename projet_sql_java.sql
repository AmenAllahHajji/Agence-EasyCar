CREATE TABLE client (
    cin INT PRIMARY KEY,
    nom VARCHAR2(10),
    prenom VARCHAR2(10),
    date_naiss DATE,
    numero_tel INT,
    num_conduite INT,
    gender VARCHAR2(10),
    adresse VARCHAR2(20)
);


CREATE TABLE voiture (
    matricule VARCHAR2(20) PRIMARY KEY,
    marque VARCHAR2(20),
    modele VARCHAR2(20),
    annee_de_fabrication INT,
    couleur VARCHAR2(20),
    kilometrage INT,
    carburant VARCHAR2(10),
    puissance INT,
    disponibilite NUMBER,
    Voiturecol VARCHAR2(45),
    Prix_par_jour INT,
    etat NUMBER
);




CREATE TABLE locations (
    matricule VARCHAR2(20),
    cin INT,
    date_debut DATE,
    date_fin DATE,
    lieu_de_retrait VARCHAR2(20),
    lieu_de_restitution VARCHAR2(20),
    PRIMARY KEY (matricule, cin),
    constraint fk1 FOREIGN KEY  (matricule) REFERENCES voiture(matricule) on delete cascade,
    constraint fk2 FOREIGN KEY  (cin) REFERENCES client(cin) on delete cascade
);


INSERT INTO client (cin, nom, prenom, date_naiss, numero_tel, num_conduite, gender, adresse) VALUES
(123456789, 'Dupont', 'Jean', TO_DATE('1990-05-12', 'YYYY-MM-DD'), 612345678, 987654321, 'Homme', '123 Rue A'),
(987654321, 'Martin', 'Claire', TO_DATE('1985-08-22', 'YYYY-MM-DD'), 612987654, 123456789, 'Femme', '456 Rue B'),
(112233445, 'Durand', 'Paul', TO_DATE('1992-03-17', 'YYYY-MM-DD'), 613456789, 876543210, 'Homme', '789 Rue C'),
(223344556, 'Lemoine', 'Sophie', TO_DATE('1987-10-05', 'YYYY-MM-DD'), 614567890, 765432109, 'Femme', '321 Rue D'),
(334455667, 'Lefevre', 'Pierre', TO_DATE('1995-01-10', 'YYYY-MM-DD'), 615678901, 654321098, 'Homme', '654 Rue E'),
(445566778, 'Moreau', 'Lucie', TO_DATE('1993-11-20', 'YYYY-MM-DD'), 616789012, 543210987, 'Femme', '987 Rue F'),
(556677889, 'Roux', 'Marc', TO_DATE('1982-06-14', 'YYYY-MM-DD'), 617890123, 432109876, 'Homme', '135 Rue G'),
(667788990, 'Fournier', 'Isabelle', TO_DATE('1990-07-25', 'YYYY-MM-DD'), 618901234, 321098765, 'Femme', '246 Rue H'),
(778899001, 'Benoit', 'Julien', TO_DATE('1988-12-30', 'YYYY-MM-DD'), 619012345, 210987654, 'Homme', '357 Rue I'),
(889900112, 'Gauthier', 'Anne', TO_DATE('1991-02-18', 'YYYY-MM-DD'), 620123456, 109876543, 'Femme', '468 Rue J');



INSERT INTO voiture (matricule, marque, modele, annee_de_fabrication, couleur, kilometrage, carburant, puissance, disponibilite, Voiturecol, Prix_par_jour, etat) VALUES
('ABC123', 'Toyota', 'Corolla', 2018, 'Bleu', 50000, 'Essence', 120, 1, 'A1', 50, 1),
('DEF456', 'Peugeot', '308', 2019, 'Rouge', 30000, 'Diesel', 110, 1, 'A2', 60, 1),
('GHI789', 'Renault', 'Clio', 2020, 'Blanc', 15000, 'Essence', 100, 1, 'B1', 45, 1),
('JKL012', 'Volkswagen', 'Golf', 2021, 'Noir', 10000, 'Diesel', 130, 0, 'B2', 70, 1),
('MNO345', 'Ford', 'Focus', 2022, 'Gris', 5000, 'Essence', 140, 1, 'A3', 80, 1),
('PQR678', 'Audi', 'A3', 2017, 'Bleu', 60000, 'Diesel', 150, 1, 'A4', 90, 1),
('STU901', 'BMW', 'Serie 3', 2018, 'Marron', 45000, 'Essence', 180, 1, 'B3', 100, 1),
('VWX234', 'Mercedes', 'Classe A', 2020, 'Blanc', 25000, 'Essence', 170, 1, 'B4', 120, 1),
('YZA567', 'Citroën', 'C3', 2019, 'Jaune', 35000, 'Essence', 90, 1, 'A5', 40, 1),
('BCD890', 'Nissan', 'Micra', 2021, 'Vert', 12000, 'Essence', 85, 0, 'B5', 55, 1);






INSERT INTO locations (matricule, cin, date_debut, date_fin, lieu_de_retrait, lieu_de_restitution) VALUES
('ABC123', 123456789, TO_DATE('2025-04-01', 'YYYY-MM-DD'), TO_DATE('2025-04-10', 'YYYY-MM-DD'), 'Paris', 'Lyon'),
('DEF456', 987654321, TO_DATE('2025-04-05', 'YYYY-MM-DD'), TO_DATE('2025-04-12', 'YYYY-MM-DD'), 'Marseille', 'Nice'),
('GHI789', 112233445, TO_DATE('2025-04-07', 'YYYY-MM-DD'), TO_DATE('2025-04-14', 'YYYY-MM-DD'), 'Toulouse', 'Bordeaux'),
('JKL012', 223344556, TO_DATE('2025-04-10', 'YYYY-MM-DD'), TO_DATE('2025-04-17', 'YYYY-MM-DD'), 'Lille', 'Rouen'),
('MNO345', 334455667, TO_DATE('2025-04-15', 'YYYY-MM-DD'), TO_DATE('2025-04-22', 'YYYY-MM-DD'), 'Lyon', 'Paris'),
('PQR678', 445566778, TO_DATE('2025-04-20', 'YYYY-MM-DD'), TO_DATE('2025-04-27', 'YYYY-MM-DD'), 'Strasbourg', 'Marseille'),
('STU901', 556677889, TO_DATE('2025-04-22', 'YYYY-MM-DD'), TO_DATE('2025-04-29', 'YYYY-MM-DD'), 'Nantes', 'Brest'),
('VWX234', 667788990, TO_DATE('2025-04-25', 'YYYY-MM-DD'), TO_DATE('2025-05-02', 'YYYY-MM-DD'), 'Paris', 'Nice'),
('YZA567', 778899001, TO_DATE('2025-04-28', 'YYYY-MM-DD'), TO_DATE('2025-05-05', 'YYYY-MM-DD'), 'Lyon', 'Strasbourg'),
('BCD890', 889900112, TO_DATE('2025-04-30', 'YYYY-MM-DD'), TO_DATE('2025-05-07', 'YYYY-MM-DD'), 'Marseille', 'Toulouse');

---------------------------voiture----------------------------------------------------


/* -------------------------insertion voiture--------------------------*/

CREATE OR REPLACE PROCEDURE inserer_voiture (
    mat VARCHAR2, 
    marque VARCHAR2,
    modele VARCHAR2,
    annee_de_fabrication INT,
    couleur VARCHAR2,
    kilometrage INT,
    carburant VARCHAR2,
    puissance INT,
    disponibilite NUMBER,
    Voiturecol VARCHAR2,
    Prix_par_jour INT,
    etat NUMBER
)
IS
   
   /* CURSOR c1 IS 
        SELECT * 
        FROM voiture
        WHERE matricule = mat;
    */

    verif voiture.matricule%type;
BEGIN
   
    -- OPEN c1;
    select matricule
    into verif
    from voiture
    where matricule =mat;
    
    
    
    IF (verif is not null) THEN
         DBMS_OUTPUT.PUT_LINE('La voiture ne peut pas être insérée, matricule déjà existant.');
    END IF;
    EXCEPTION
    when  no_data_found THEN
          
        INSERT INTO voiture (matricule, marque, modele, annee_de_fabrication, couleur, kilometrage, carburant, puissance, disponibilite, Voiturecol, Prix_par_jour, etat) 
        VALUES (mat, marque, modele, annee_de_fabrication, couleur, kilometrage, carburant, puissance, disponibilite, Voiturecol, Prix_par_jour, etat);
        
        
        DBMS_OUTPUT.PUT_LINE('Insertion effectuée avec succès.');
       
   
   -- CLOSE c1;
END;











/*--------------------------modifier couleur voiture---------------------------*/
CREATE OR REPLACE PROCEDURE modifier_couleur_voiture (
    mat  voiture.matricule%type,
    coul voiture.couleur%type
)
IS
    CURSOR c1 IS 
        SELECT * 
        FROM voiture
        WHERE matricule = mat;
    rec c1%rowtype;

BEGIN
    OPEN c1;
    FETCH c1 INTO rec;
    
    IF c1%FOUND THEN
        UPDATE voiture
        SET couleur = coul
        WHERE matricule = mat;

        DBMS_OUTPUT.PUT_LINE('Modification effectuée avec succès.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('La voiture n existe pas.');
    END IF;

    CLOSE c1;
END;




-----------------------------modif  prix voiture-------------------------------------
create or replace procedure modifier_prix_voiture 
(
    mat  voiture.matricule%type,
	prix voiture.prix_par_jour%type
)
is

cursor c1 is 
select * 
from voiture
where matricule = mat;

rec c1%rowtype;
begin
	open c1;
	fetch c1 into rec;
	if(c1%found) then
		update voiture 
		set voiture.prix_par_jour=prix
		where matricule =mat;
		
		dbms_output.put_line('modification effectuee avec succees');
	else	
		dbms_output.put_line('voiture n exisite pas');
	end if;
	
	close c1;
end;



-----------------------modif etat voiture----------------------------------------
create or replace procedure modifier_etat_voiture 
(
    mat  voiture.matricule%type,
	et voiture.etat%type
)
is

cursor c1 is 
select * 
from voiture
where matricule = mat;

rec c1%rowtype;
begin
	open c1;
	fetch c1 into rec;
	if(c1%found) then
		update voiture 
		set voiture.etat=et
		where matricule =mat;
		
		dbms_output.put_line('modification effectuee avec succees');
	else	
		dbms_output.put_line('voiture n exisite pas');
	end if;
	
	close c1;
end;





--------------------delete voiture---------------------------------------------

create or replace procedure delete_voiture
(
     mat voiture.matricule%type

)
is
cursor c1 is 
select * 
from voiture
where matricule = mat;

rec c1%rowtype;
begin
	open c1;
	fetch c1 into rec;
	if(c1%found) then
		delete from voiture
		where matricule=mat;
		
		dbms_output.put_line('delete effectuee avec succees');
	else	
		dbms_output.put_line('voiture non trouvee');
	end if;
	
	close c1;
end;








---------------------------------client-------------------------------------------------



----------------insere client-------------------------------------------------------

create or replace procedure inseret_client
(
    cin_cl client.cin%type,
    p_nom client.nom%type,
    p_prenom client.prenom%type,
    p_date_naiss client.date_naiss%type,
    p_numero_tel client.numero_tel%type,
    p_num_conduite client.num_conduite%type,
    p_gender client.gender%type,
    p_adresse client.adresse%type

)

is
cursor c1 is 
select * 
from client
where cin = cin_cl;

rec c1%rowtype;

begin
	open c1;
	fetch c1 into rec; 
    if(c1%found) then
		
	
		dbms_output.put_line('client ne peut pas etre insere');
    else
	    
		insert into client (cin, nom, prenom, date_naiss, numero_tel, num_conduite, gender, adresse)
         values (cin_cl, p_nom, p_prenom, p_date_naiss, p_numero_tel, p_num_conduite, p_gender, p_adresse);
            
		dbms_output.put_line('ínsertion effectuee avec succees');
	end if;
	close c1;
end;







-------------------------------modif tel client--------------------------------------
create or replace procedure modif_tel_client
(
   cin_cl client.cin%type,
   tel client.numero_tel%type

)
is
c client.cin%type;

begin
   select cin
   into c
   from client
   where cin = cin_cl;
   
   update client
   set numero_tel=tel
   where cin = cin_cl;
   dbms_output.put_line('operation effectuee avec succes' ); 
   
   exception
    when no_data_found then
	  dbms_output.put_line('operation impossible, client introuvable' );

end;







-----------------------modif adresse--------------------------------------------

create or replace procedure modif_adresse_client
(
   cin_cl client.cin%type,
   adr client.adresse%type

)
is
c client.cin%type;


begin
   select cin
   into c
   from client
   where cin = cin_cl;
   
   update client
   set adresse=adr
   where cin = cin_cl;
   dbms_output.put_line('operation effectuee avec succes' ); 
   
   exception
    when no_data_found then
	  dbms_output.put_line('operation impossible, client introuvable' );

end;






------------------------------delete client--------------------------------------------
create or replace procedure delete_client
(  cin_cl client.cin%type

)


is
cursor c1 is 
select * 
from client
where cin = cin_cl;

rec c1%rowtype;
begin
	open c1;
	fetch c1 into rec;
	if(c1%found) then
		delete from client
		where cin =cin_cl;
		
		dbms_output.put_line('delete effectuee avec succees');
	else	
		dbms_output.put_line('client non trouvee');
	end if;
	
	close c1;
end;





-------------------fonction verif panne-----------------------------------
create or replace function etat_voiture 
(      mat in Locations.matricule%type
)return number
is 
     etat voiture.etat%type;
begin
   select etat
	into etat
    from voiture
    where matricule =mat;
	
    return(etat);

exception
      when no_data_found then
        return(2);
end;







-------------------fonction verif dispo--------------------------------------------


create or replace function dispo_voiture
(
  mat in voiture.matricule%type
  )return number
  is
   cursor c1 is
   select *
   from locations
   where matricule=mat and sysdate<date_fin and sysdate>date_debut;
   
   cursor c2
   is select *
   from voiture
   where matricule =mat;


   rec c1%rowtype;
   rec2 c2%rowtype;
  begin
  open c1; 
  open c2;
  fetch c2 into rec2;
  fetch c1 into rec;
  if(c1%found ) then
     return(0) ;
  else if (c2%notfound) then
     return (2);     ----voiture inexstant dans la table mere
  else
     return(1);
end if;
   close c1;
   close c2;
end;

---------------------------dispo client-------------------------------------------
create or replace function dispo_client
(
    cin_cl client.cin%type
)return number
is
 a number;

BEGIN
    select cin
    into a
    from client
    where cin = cin_cl;

    return(1);

exception
    when no_data_found then
        return(0);

end;








-----------------insert location--------------------------------
CREATE OR REPLACE PROCEDURE insert_location (
    mat IN locations.matricule%TYPE,
    cin IN locations.cin%TYPE,
    date_debut IN locations.date_debut%TYPE,
    date_fin IN locations.date_fin%TYPE,
    lieu_retrait IN locations.lieu_de_retrait%TYPE,
    lieu_restitution IN locations.lieu_de_restitution%TYPE
)
IS
BEGIN
    IF ( dispo_voiture(mat) = 1 and etat_voiture(mat) = 1 and  dispo_client(cin)=1) THEN
        INSERT INTO locations (matricule, cin, date_debut, date_fin, lieu_de_retrait, lieu_de_restitution)
        VALUES (mat, cin, date_debut, date_fin, lieu_retrait, lieu_restitution);
        DBMS_OUTPUT.PUT_LINE('Insertion effectuée avec succès.');
    ELSIF (dispo_voiture(mat) = 0) THEN
        DBMS_OUTPUT.PUT_LINE('Voiture déjà louée.');
    elsif(dispo_client(cin) = 0) then
          DBMS_OUTPUT.PUT_LINE('client inexistant' );
    elsif (ETAT_VOITURE(mat) = 2) then
             DBMS_OUTPUT.PUT_LINE('Voiture n existe pas.');
    
    ELSE
        DBMS_OUTPUT.PUT_LINE('Voiture ne peut pas être louée car elle est en panne.');
    END IF;
END;














----------------------modif location_nouvelle_voiture------------------------------

create or replace procedure modif_location_nouvelle_voiture
(
     mat1 voiture.matricule%type,
     mat2 voiture.matricule%type,
     cin1 client.cin%type
)
is

begin
	
	if(dispo_voiture(mat1) = 0 and dispo_voiture(mat2) =1    ) then
		update locations 
		set matricule=mat2
		where matricule =mat1
        and cin=cin1;
		
		dbms_output.put_line('modification effectuee avec succees');
	else	
		dbms_output.put_line('operation impossible');
	end if;
	
end;



select *
from locations;


begin
   modif_location_nouvelle_voiture('XYZ125','2123');
end;









----------------------modif location_corrdonnes----------------------------------
create or replace procedure modif_location_date_fin
(
       mat voiture.matricule%type,
	   df locations.date_fin%type

)
is
   d locations.date_fin%type;

begin
	
	if(dispo_voiture(mat) = 0    ) then
	    select date_fin
		into d
		from locations
		where  matricule =mat;
	    
		if(d < df) then
	
		update locations 
		set date_fin=df
		where matricule =mat
        and cin=cin_cl ;
		
		dbms_output.put_line('modification effectuee avec succees');
		
		else
		    		dbms_output.put_line('nouvelle date erronee');
		end if;
	else	
		dbms_output.put_line('voiture n exisite pas');
	end if;
	
end;










----------delete location-------------------------------------------------------
create or replace procedure delete_location
(
    mat voiture.matricule%type,
    cin_cl client.cin%type	
)
is
    rec locations%rowtype;
begin
	 select *
	 into rec
	 from locations
	 where matricule =mat and cin = cin_cl;
	 
	 delete from locations
	 where matricule =mat and cin = cin_cl;
      dbms_output.put_line('operation effectue avec succes'); 
	 
exception
	when no_data_found then
	     dbms_output.put_line('donne invalide, il n y a pas de locations avec ces parametres');
end;



select *
from locations;

begin
  delete_location('DEF56',987654321); 
end;







-------------------------function verif penalite--------------------------------------
create or replace function verif_penalite
(
    mat in voiture.matricule%type,
    cin in client.cin%type
) 
return number
is 
    duree number;

begin  
    select (date_fin - date_debut) 
    into duree
    from locations
    where matricule = mat and cin = cin;

    if (duree > 30) then
        return (1);
    else
        return (0);
    end if;

exception
    when no_data_found then
        return (2);
end;



---------------------------function prix totale--------------------------------
create or replace function prix_total(
    mat voiture.matricule%type,
    cin_cl client.cin%type
)return NUMBER

is
    duree number;
    p voiture.prix_par_jour%type;
begin
    select (date_fin - date_debut),prix_par_jour
    into duree,p
    from locations inner join Voiture
    on locations.matricule=voiture.matricule
    where locations.matricule = mat and locations.cin=cin_cl;
    if(duree <30) THEN
         return(duree*p);
    else
         return(duree*p*1.5);
    end if;




exception
     when no_data_found THEN
           return 0;
end;











---------------------afficher etat des voitures----------------------------
create or replace procedure  affiche_tout_voiture

is
cursor c1 is
select matricule ,marque ,modele  ,etat 
from voiture;


begin

for ligne in c1 loop
  if(ligne.etat =0) then
     dbms_output.put_line('matricule:' || ligne.matricule || ' marque: '||ligne.marque || ' modele: ' || ligne.modele || ' etat: en panne ' );
  else
	     dbms_output.put_line('matricule:' || ligne.matricule || ' marque: '||ligne.marque || ' modele: ' || ligne.modele || ' etat: en marche ' );
  end if;
end loop;
end;












------------------------affiche_dispo_tot----------------------------------
create or replace procedure afficher_dispo_tot

is

cursor c1 is
select matricule ,marque ,modele  ,etat 
from voiture 
where voiture.matricule not in(select matricule from locations);

cursor c2 is
select matricule  ,marque ,modele  ,etat 
from voiture 
where voiture.matricule in(select matricule from locations);


begin
	 dbms_output.put_line('Voitures disponibles:');
for ligne in c1 loop
    dbms_output.put_line('matricule:' || ligne.matricule || ' marque: ' || ligne.marque || ' modele: ' || ligne.modele );
end loop;

 dbms_output.put_line('Voitures non disponibles:');
for ligne in c2 loop
    dbms_output.put_line('matricule:' || ligne.matricule || ' marque:  '|| ligne.marque || ' modele: ' ||ligne.modele );
end loop;
end;











-------------------------affiche meilleur-----------------------------
create or replace procedure affiche_meilleur_voiture

is 


cursor c1 is
select matricule,count(*) 
from locations
group by matricule
order by count(*) desc
fetch first 3 rows only;

i number :=1;
begin
for ligne in c1 loop
   
    dbms_output.put_line('voiture numero '||i||' ; matricule:' || ligne.matricule  );
	i:=i+1;
end loop;
end;














------------client regulier >3 fois--------------------
create or replace procedure client_regulier
(
   cin_cl  client.cin%type
   
)
is
b number;
begin
     select count(*)
	 into b
	 from locations
	 where cin =cin_cl;
	 if(b >= 3) then
		dbms_output.put_line('vous etes un client regulier');
	elsif(b> 0) then
		dbms_output.put_line('vous n etes pas un client regulier');
	 
    else
	   dbms_output.put_line('vous n avez pas effectue des locations');
	 end if;
end;


























------------question 5--------------------
create or replace procedure client_info
(
   cin_cl  client.cin%type
   
)
is
b number;

cursor c1
is select *
from LOCATIONS
where cin = cin_cl;
begin
     select count(*)
	 into b
	 from locations
	 where cin =cin_cl;
    dbms_output.put_line('nombre de fois:' || b);
     for ligne in c1 loop
          dbms_output.put_line('Voiture:' || ligne.matricule || '       duree' || (ligne.date_debut-ligne.date_fin) );

     end loop;
	 
end;