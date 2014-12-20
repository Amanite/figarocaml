let element_from_array t = 
	let n = Random.int max_int in
	let longueur = Array.length t in
		t.(n mod longueur)
		
let utilisateurs = [|"ouvrier";"paysan";"patron de ma PME";"chef d'entreprise";"expatrié en Suisse";"militaire"|]

let gentils_pluriel = [|"les bons français";"les vrais français"; "les français de souche";"les honnêtes français";"les vrais patriotes";"les français qui aiment leur pays"|]

let gentils_singulier = [|"Nicolas Sarkozy";"Jean-François Copé";"Nadine Morano";"Alain Juppé";"Marine Le Pen";"Claude Guéant";"Patrick Balkany";"Eric Zemmour";"Alain Soral"; "le général De Gaulle";"Jacques Chirac";"François Fillon"|]

let nous = [|"la France qui se lève tôt";"la France qui bosse";"la vraie France";"la France chrétienne";"la France traditionelle"|]

let gentils_groupes = [|"de l'UMP";"du FN";"du MEDEF";"de ma PME"|]

let mechants_pluriel = [|"les gauchistes";"les bobos";"les gauchos";"les arabes";"les français de papiers";"les assistés";"les chômeurs";"les bien-pensants";"les musulmans";"les gauchos bobos"|]

let mechants_singulier = [|"Hollande";"Taubira";"Royal";"Mohammed";"l'immigré";"la france qui fout rien";"la racaille";"la banlieue"|]

let mechants_groupes = [|"du PS";"de la LICRA";"du gouvernement";"de la gauche"|]


let intro1() = 
	let nous = element_from_array (nous)
	and eux = element_from_array(mechants_pluriel)
	and autres = element_from_array(mechants_pluriel)
	and groupe = element_from_array(mechants_groupes) in
Printf.printf "BRAVO!!! On voit où part l'argent de %s !! Pour aider %s et %s grâce aux idiots %s!!!!" nous eux autres groupe

let intro2() = 
	let user = element_from_array(utilisateurs)
	and gentils = element_from_array(gentils_singulier) in
	Printf.printf "En tant que %s, ça me fait mal de voir ce qui arrive a %s" user gentils

let intro3() = 
	let user = element_from_array(utilisateurs)
	and gentils = element_from_array(gentils_pluriel) in
	Printf.printf "En tant que %s, je n'aime pas voir à quel point on persécute %s" user gentils
	

let intro4() = 
		let user = element_from_array(utilisateurs)
		and groupe = element_from_array(mechants_groupes) in
		Printf.printf "Je suis %s et la position %s me dégoute profondément" user groupe

let intro5() = 
		let user = element_from_array(utilisateurs)
		and groupe = element_from_array(gentils_groupes) in
		Printf.printf "je suis %s et je soutiens les idées %s dans cette histoire" user groupe

let intros = [|intro1;intro2;intro3;intro4;intro5|]

let conclusion1() = 
	let gentil = element_from_array gentils_singulier in 
	Printf.printf " VIVEMENT que %s vienne faire le ménage !!!!!!" gentil

let conclusion2() =
		let gentil = element_from_array gentils_singulier in 
		Printf.printf " %s VITE!!!" gentil

let conclusion3() = 
	let mechant = element_from_array mechants_singulier in
	Printf.printf " RAS LE BOL DE %s" mechant

let conclusion4() =
	let gentil = element_from_array (gentils_singulier) in
	Printf.printf " %s 2017!!!!!!! ON EN A BESOIN !!!" gentil
	
let conclusions = [|conclusion1;conclusion2;conclusion3;conclusion4|] ;;

Random.self_init() ;;
		
let print_intro() = 
	(element_from_array intros) ()
	
let print_conclusion() = 
	element_from_array conclusions () ;;

let rec fonctionnement() = 
	print_intro() ; 
	Printf.printf "\n";
	print_conclusion() ;
	Printf.printf "\n" ;
	Printf.printf "Un autre ? (y/n) \n" ;
	let reponse = read_line() in
	if reponse = "y" then
		fonctionnement()

let _ = 
	fonctionnement();
