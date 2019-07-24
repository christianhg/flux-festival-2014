<?php

class DatabaseSeeder extends Seeder {

	/**
	 * Run the database seeds.
	 *
	 * @return void
	 */
	public function run()
	{
		Eloquent::unguard();
		
		DB::table('artists')->delete();
		DB::table('venues')->delete();
		DB::table('festivals')->delete();
		DB::table('concerts')->delete();
		DB::table('concerts_artists')->delete();
		DB::table('colors')->delete();
		DB::table('sounds')->delete();
		DB::table('sponsors')->delete();
	
		/**
		* festivals
		*/
		$festival2013 = Festival::create(array(
			'title' => 'Flux Festival 2013',
			'start' => '2013-09-19',
			'end' => '2013-09-21'
		));

		$festival2014 = Festival::create(array(
			'title' => 'Flux Festival 2014',
			'start' => '2014-08-21',
			'end' => '2014-08-23'
		));

		/**
		* artists
		*/
		$artistBirthgivingToad = Artist::create(array(
			'name' => 'Birthgiving Toad',
			'image' => 'birthgivingtoad.jpg'
		));
		$soundBirthGivingToadYouTube = Sound::create(array(
			'type' => 'youtube',
			'link' => 'o8uFNsA5ErI',
			'artist_id' => $artistBirthgivingToad->id
		));
		$color = Color::create(array(
			'hex' => '#764340',
			'primary' => '0',
			'artist_id' => $artistBirthgivingToad->id
		));
		$color = Color::create(array(
			'hex' => '#a4ad7d',
			'primary' => '1',
			'artist_id' => $artistBirthgivingToad->id
		));
		$color = Color::create(array(
			'hex' => '#614e1c',
			'primary' => '0',
			'artist_id' => $artistBirthgivingToad->id
		));


		$artistBlod = Artist::create(array(
			'name' => 'Blod',
			'image' => 'blod.jpg'
		));
		$c = Color::create(array(
			'primary' => '1',
			'hex' => '#9f2f2b',
			'artist_id' => $artistBlod->id
		));
		$c = Color::create(array(
			'primary' => '0',
			'hex' => '#401212',
			'artist_id' => $artistBlod->id
		));
		$c = Color::create(array(
			'primary' => '0',
			'hex' => '#6b1e1c',
			'artist_id' => $artistBlod->id
		));

		$artistCommunions = Artist::create(array(
			'name' => 'Communions',
			'image' => 'communions.jpg'
		));
		$soundCommunnions = Sound::create(array(
			'type' => 'youtube',
			'link' => 'FQN7uacxnQY',
			'artist_id' => $artistCommunions->id
		));
		$c = Color::create(array(
			'primary' => '1',
			'hex' => '#ac7c5c',
			'artist_id' => $artistCommunions->id
		));
		$c = Color::create(array(
			'primary' => '0',
			'hex' => '#8c9c9c',
			'artist_id' => $artistCommunions->id
		));
		$c = Color::create(array(
			'primary' => '0',
			'hex' => '#a1a78a',
			'artist_id' => $artistCommunions->id
		));

		$artistGlowKit = Artist::create(array(
			'name' => 'Glow Kit',
			'image' => 'glowkit.jpg'
		));
		$soundGlowKit = Sound::create(array(
			'type' => 'youtube',
			'link' => 'RuvxSztUt3M',
			'artist_id' => $artistGlowKit->id
		));
		$c = Color::create(array(
			'primary' => '1',
			'hex' => '#474747',
			'artist_id' => $artistGlowKit->id
		));
		$c = Color::create(array(
			'primary' => '0',
			'hex' => '#5f5f5f',
			'artist_id' => $artistGlowKit->id
		));
		$c = Color::create(array(
			'primary' => '0',
			'hex' => '#949494',
			'artist_id' => $artistGlowKit->id
		));

		$artistGooms = Artist::create(array(
			'name' => 'Gooms',
			'image' => 'gooms.jpg'
		));
		$soundGooms = Sound::create(array(
			'type' => 'youtube',
			'link' => 'lqGNeZYVrQ8',
			'artist_id' => $artistGooms->id
		));
		$c = Color::create(array(
			'primary' => '1',
			'hex' => '#4c505e',
			'artist_id' => $artistGooms->id
		));
		$c = Color::create(array(
			'primary' => '0',
			'hex' => '#a6b580',
			'artist_id' => $artistGooms->id
		));
		$c = Color::create(array(
			'primary' => '0',
			'hex' => '#b6914c',
			'artist_id' => $artistGooms->id
		));

		$artistHahnKult = Artist::create(array(
			'name' => 'Hahn Kult',
			'image' => 'hahnkult.jpg'
		));
		$soundHahnKult = Sound::create(array(
			'type' => 'youtube',
			'link' => 'BcbMgzW3_1U',
			'artist_id' => $artistHahnKult->id
		));
		$c = Color::create(array(
			'primary' => '1',
			'hex' => '#677c84',
			'artist_id' => $artistHahnKult->id
		));
		$c = Color::create(array(
			'primary' => '0',
			'hex' => '#5a6564',
			'artist_id' => $artistHahnKult->id
		));
		$c = Color::create(array(
			'primary' => '0',
			'hex' => '#8c8c8b',
			'artist_id' => $artistHahnKult->id
		));

		$artistLower = Artist::create(array(
			'name' => 'Lower',
			'image' => 'lower.jpg'
		));
		$c = Color::create(array(
			'primary' => '1',
			'hex' => '#ddcfc7',
			'artist_id' => $artistLower->id
		));
		$c = Color::create(array(
			'primary' => '0',
			'hex' => '#886357',
			'artist_id' => $artistLower->id
		));
		$c = Color::create(array(
			'primary' => '0',
			'hex' => '#79858d',
			'artist_id' => $artistLower->id
		));

		$artistPlants = Artist::create(array(
			'name' => 'Plants',
			'image' => 'plants.jpg'
		));
		$sound = Sound::create(array(
			'type' => 'youtube',
			'link' => '9hXnvD69pdg',
			'artist_id' => $artistPlants->id));
		$c = Color::create(array(
			'primary' => '1',
			'hex' => '#924650',
			'artist_id' => $artistPlants->id
		));
		$c = Color::create(array(
			'primary' => '0',
			'hex' => '#6b1841',
			'artist_id' => $artistPlants->id
		));
		$c = Color::create(array(
			'primary' => '0',
			'hex' => '#bb8676',
			'artist_id' => $artistPlants->id
		));


		$artistPuceMary = Artist::create(array(
			'name' => 'Puce Mary',
			'image' => 'pucemary.jpg'
		));
		$soundPuceMary = Sound::create(array(
			'type' => 'youtube',
			'link' => 'VWFybzy32A4',
			'artist_id' => $artistPuceMary->id
		));
		$c = Color::create(array(
			'primary' => '1',
			'hex' => '#3c3c3c',
			'artist_id' => $artistPuceMary->id
		));
		$c = Color::create(array(
			'primary' => '0',
			'hex' => '#5f5f5f',
			'artist_id' => $artistPuceMary->id
		));
		$c = Color::create(array(
			'primary' => '0',
			'hex' => '#bdbdbd',
			'artist_id' => $artistPuceMary->id
		));

		$artistShiggajon = Artist::create(array(
			'name' => 'Shiggajon',
			'image' => 'shiggajon.jpg'
		));
		$soundShiggajon = Sound::create(array(
			'type' => 'youtube',
			'link' => '3le5N06mz7Y',
			'artist_id' => $artistShiggajon->id
		));
		$c = Color::create(array(
			'primary' => '1',
			'hex' => '#8c9c9c',
			'artist_id' => $artistShiggajon->id
		));
		$c = Color::create(array(
			'primary' => '0',
			'hex' => '#a4495a',
			'artist_id' => $artistShiggajon->id
		));
		$c = Color::create(array(
			'primary' => '0',
			'hex' => '#c6a687',
			'artist_id' => $artistShiggajon->id
		));

		$artistSlaengs = Artist::create(array(
			'name' => 'Slængs',
			'image' => 'slaengs.jpg'
		));
		$soundSlængs = Sound::create(array(
			'type' => 'youtube',
			'link' => 'HONr2dy5HbY',
			'artist_id' => $artistSlaengs->id
		));
		$c = Color::create(array(
			'primary' => '1',
			'hex' => '#444444',
			'artist_id' => $artistSlaengs->id
		));
		$c = Color::create(array(
			'primary' => '0',
			'hex' => '#848484',
			'artist_id' => $artistSlaengs->id
		));
		$c = Color::create(array(
			'primary' => '0',
			'hex' => '#a0a0a0',
			'artist_id' => $artistSlaengs->id
		));

		$artistSol = Artist::create(array(
			'name' => 'Sol',
			'image' => 'sol.jpg'
		));
		$soundSol = Sound::create(array(
			'type' => 'youtube',
			'link' => '6BTE9-TsG3Q',
			'artist_id' => $artistSol->id
		));
		$c = Color::create(array(
			'primary' => '1',
			'hex' => '#505050',
			'artist_id' => $artistSol->id
		));
		$c = Color::create(array(
			'primary' => '0',
			'hex' => '#7a7a7a',
			'artist_id' => $artistSol->id
		));
		$c = Color::create(array(
			'primary' => '0',
			'hex' => '#c3c3c3',
			'artist_id' => $artistSol->id
		));

		$artistTeenBeams = Artist::create(array(
			'name' => 'Teen Beams',
			'image' => 'teenbeams.png'
		));
		$soundTeenBeams = Sound::create(array(
			'type' => 'youtube',
			'link' => '8fYLt32VEoo',
			'artist_id' => $artistTeenBeams->id
		));
		$c = Color::create(array(
			'primary' => '1',
			'hex' => '#424e45',
			'artist_id' => $artistTeenBeams->id
		));
		$c = Color::create(array(
			'primary' => '0',
			'hex' => '#d73341',
			'artist_id' => $artistTeenBeams->id
		));
		$c = Color::create(array(
			'primary' => '0',
			'hex' => '#4b937b',
			'artist_id' => $artistTeenBeams->id
		));

		$artistTheWands = Artist::create(array(
			'name' => 'The Wands',
			'image' => 'thewands.jpg'
		));
		$soundTheWands = Sound::create(array(
			'type' => 'youtube',
			'link' => 'ssXCrrAQHGU',
			'artist_id' => $artistTheWands->id
		));
		$c = Color::create(array(
			'primary' => '1',
			'hex' => '#6da785',
			'artist_id' => $artistTheWands->id
		));
		$c = Color::create(array(
			'primary' => '0',
			'hex' => '#d0413a',
			'artist_id' => $artistTheWands->id
		));
		$c = Color::create(array(
			'primary' => '0',
			'hex' => '#6f8997',
			'artist_id' => $artistTheWands->id
		));

		$artistYung = Artist::create(array(
			'name' => 'Yung',
			'image' => 'yung.jpg'
		));
		$soundYungSoundcloud = Sound::create(array(
			'type' => 'soundcloud',
			'link' => '133520892',
			'artist_id' => $artistYung->id
		));
		$c = Color::create(array(
			'primary' => '1',
			'hex' => '#bfbbb6',
			'artist_id' => $artistYung->id
		));
		$c = Color::create(array(
			'primary' => '0',
			'hex' => '#8c969c',
			'artist_id' => $artistYung->id
		));
		$c = Color::create(array(
			'primary' => '0',
			'hex' => '#bb9e84',
			'artist_id' => $artistYung->id
		));

		$artistLoveCoffin = Artist::create(array(
			'name' => 'The Love Coffin'
		));
		$artistScaredCrow = Artist::create(array(
			'name' => 'Scared Crow'
		));
		
		
		/**
		* venues
		*/
		$venueRadar = Venue::create(array(
			'name' => 'Radar',
			'color' => '#5c727b'
		));
		$venueAHuset = Venue::create(array(
			'name' => 'A-Huset',
			'color' => '#bb9e84'
		));
		$venueBHuset = Venue::create(array(
			'name' => 'B-Huset',
			'color' => '#a4495a'
		));
		$venueTroejborg = Venue::create(array(
			'name' => 'Trøjborg Beboerhus'
		));

		/**
		* concerts
		*/
		$torsdag = '2014-08-21 '; 
		$fredag = '2014-08-22 ';
		$loerdag = '2014-08-23 ';
		$soendag = '2014-08-24 ';

 		$c = Concert::create(array(
 			'day' => 'torsdag',
			'time' => $torsdag.'21:00:00',
			'venue_id' => $venueRadar->id,
			'festival_id' => $festival2014->id,
			'info' => 'Multi-instrumentalisten Lasse Bækby står bag dette projekt, der i udtrykket virker uhyre skizofrent, da det genremæssigt er én stor leg med blandt andet jazz, lo-fi, stoner, og rock’n’roll. Men lad dig ikke skræmme - det ender ud i en virkelig frisk og farverig cocktail. Birthgiving Toad har tre båndudgivelser - For Awkward Company, As Fruit Hat og Music for Young Centaurs - bag sig og er pt. aktuel med sit fjerde album Served in its Juices, hvor Bækby synes er været nået ind til kernen i sit udsyrede og tiltrækkende univers. Lasse Bækby præsenterer projektet i en 5-mands konstellation når Birthgiving Toad gæster årets Flux Festival.'
		));
		$c->artists()->attach($artistBirthgivingToad->id);

		$c = Concert::create(array(
			'day' => 'torsdag',
			'time' => $torsdag.'22:00:00',
			'venue_id' => $venueRadar->id,
			'festival_id' => $festival2014->id,
			'info' => 'Aarhusianske Teen Beams er Niklas Langeland Pedersens soloprojekt, men bliver nu akkompagneret af et liveband denne sommer. Teen Beams udgav forrige år sit debutalbum ”Cathedral Volume” via københavnske Subsuburban (Town Portal, Fluorescent Heights, m.fl.), der bød på luftig og stærkt melodisk chill-pop med stærke associationer til bl.a. 80’er bands såsom Cocteau Twins og den lidt nyere strømning af svensk indie, såsom The Radio Dept, The Embassy og The Tough Alliance. Med dét sagt er Teen Beams ingen anden end sin egen, og Cathedral Volume en på mange måder en dybt personlig affære.

Soundvenue om Cathedral Volume:
“Pedersens fjerne hviskevokaler lægger et slør af mystik over de ellers så nøgterne, vaniljesøde og ligefrem catchy sange, mens rumklang og flanger-effekter sørger for en drømmende, introspektiv atmosfære.”'));
		$c->artists()->attach($artistTeenBeams->id);

		$c = Concert::create(array(
			'day' => 'torsdag',
			'time' => $torsdag.'23:00:00',
			'venue_id' => $venueRadar->id,
			'festival_id' => $festival2014->id,
			'info' => 'Den københavnske trio Gooms består af Aske Zidore fra hedengangne Oh No Ono, Suni a Argjaboda og Jens Ramon (Figurines). Det er en større udfordring at indkapsle, hvad der definerer Gooms lyd ud fra deres indtil videre to musikvideoer, men musikken emmer af lige dele psych, surf-pop og meget mere. Gooms har varslet deres debutalbum til engang i år, og det er ikke for lidt sagt, at vi oprigtigt glæder os til at opleve, hvordan Gooms med god sandsynlighed kommer til at rykke på den danske befolknings opfattelse af, hvad der definerer den ideelle popsang.'));
		$c->artists()->attach($artistGooms->id);

		$c = Concert::create(array(
			'day' => 'fredag',
			'time' => $fredag.'18:00:00',
			'venue_id' => $venueAHuset->id,
			'festival_id' => $festival2014->id,
			'info' => ''));

		$c = Concert::create(array(
			'day' => 'fredag',
			'time' => $fredag.'18:45:00',
			'venue_id' => $venueBHuset->id,
			'festival_id' => $festival2014->id,
			'info' => 'Slængs blev dannet tilbage i 1982, hvor de blev berygtede for deres beskidte minimal wave/ punkmusik. Bandet blev opløst i starten af 1990’erne, men rejste sig i 2011 fra asken og blev atter liveaktuelle. Slængs er det levende bevis på, at punken ikke dør hen med alderen, hvilket blot er én ud af flere grunde til, at Slængs bør tages imod med åbne arme (og knyttede næver).'));
		$c->artists()->attach($artistSlaengs->id);
		
		$c = Concert::create(array(
			'day' => 'fredag',
			'time' => $fredag.'19:30:00',
			'venue_id' => $venueAHuset->id,
			'festival_id' => $festival2014->id,
			'info' => 'Hahn Kult består af Antonius Marcussen, Christian Qvortrup og i flere tilfælde også Mikkel Stenholt på bas. Senest var Hahn Kult aktuelle med albummet ”Jydsk Mudder” og udgivet af det ligeledes aarhusianske pladeselskab Mastermind Records (Yung, Love Potion, Narcosatanicos, m.fl.). Hahn Kult har gennem deres levetid siden 2007 bevæget sig på tværs af stil og genrer, men Jydsk Mudder lyder af, hvad mange formentlig forbinder med blackmetal. Hahn Kult er dog på ingen måde et tribute band til en specifik genre, men et personligt projekt, der lyrisk set kredser om alt fra misantropi, spiritualitet og negativitet. 
Undertoner om Jydsk Mudder:
“Jydsk mudder er et velstruktureret, originalt album, der lyder som resultatet af to fyre med mentaliteten ‘hey, lad os lave noget smadder,’ og produktet leverer en instinktiv oplevelse, hvis lige jeg sjældent har oplevet.”'));
		$c->artists()->attach($artistHahnKult->id);

		$c = Concert::create(array(
			'day' => 'fredag',
			'time' => $fredag . '20:15:00',
			'venue_id' => $venueBHuset->id,
			'festival_id' => $festival2014->id,
			'info' => 'Communions er et af de nyeste skud på den evigt voksende scene af rock- og noise-musik fra København. Bandet adskiller sig dog markant fra størstedelen af de bands, de ofte bliver sat i en kontekst med (Lower, Iceage, m.fl.), ved et mere umiddelbart og poppet udtryk, der i langt højere grad skaber associationer til 90’ernes britpop, end 70’ernes postpunk, som ellers er tilfældet for førnævnte, m.fl. Communions var senest aktuelle med deres debut-EP, ”Coublestones”, der vækkede international opvækst med dets fire fængende popnumre.'));
		$c->artists()->attach($artistCommunions->id);

		$c = Concert::create(array(
			'day' => 'fredag',
			'time' => $fredag.'21:15:00',
			'venue_id' => $venueAHuset->id,
			'festival_id' => $festival2014->id,
			'info' => 'Den aarhusianske impro-freejazz gruppe Shiggajon udgav tilbage i 2012 den suveræne lp, Dansen, på Mastermind, hvor der arbejdes med et spirituelt udtryk mellem freejazz, noise og drone. 
Shiggajon startede ud som en duo tilbage i 2005 bestående af Mikkel Reher-Langberg og Nikolai Brix Vartenberg, men er med tiden blevet en mere løs størrelse med utallige medspillere. Både live og musikalsk er bandet en uhåndterlig størrelse som befinder sig i et grænseland, hvis eneste fællesnævner er improvisation, der på en måde sørger mod den rituelle ekstase, hvor fokus er på frihed til at skabe forløb der går uden om skabeloner og prædefinition, og hvor man befinder sig i et lydligt nu og her.
Det er en sjældenhed at fange Shiggajon live (bandet seneste koncert var i 2012 på Fanø Free Folk Festival), derfor er vi ret stolte over at bandet har valgt at springe ud af dvale for at optrædende på Flux Festival.'));
		$c->artists()->attach($artistShiggajon->id);

		$c = Concert::create(array(
			'day' => 'fredag',
			'time' => $fredag . '22:15:00',
			'venue_id' => $venueBHuset->id,
			'festival_id' => $festival2014->id,
			'info' => 'Puce Mary er den københavnske eksperimenterende musiker, Frederikke Hoffmeier’s solo-projekt og udgav i slutning af sidste år sin første solovinyl Succes på ligesindende posh isolation. Puce Mary er som projekt i konstant udvikling og på Succes er lyden præget af langsomme, tunge droner som blandes med distortet synth og manifesterer på den måde den totale fuckfinger på en underligt underspillet måde. 
Med sine overbevisende og kompromisløse koncerter både herhjemme, i Europa og USA med bl.a. Iceage, Pharmakon og Haxan Cloak har Frederikke Hoffmeier etableret sig som en af Danmarks mest overbevisende ambient musikere.'));
		$c->artists()->attach($artistPuceMary->id);

		$c = Concert::create(array(
			'day' => 'fredag',
			'time' => $fredag.'23:15:00',
			'venue_id' => $venueAHuset->id,
			'festival_id' => $festival2014->id,
			'info' => ''));

		$c = Concert::create(array(
			'day' => 'fredag',
			'time' => $loerdag . '00:00:00',
			'venue_id' => $venueBHuset->id,
			'festival_id' => $festival2014->id,
			'info' => 'Det københavnske rockband Lower har længe været en af de stærkeste profiler indenfor hvad 9 ud af 10 medier referer til som ”scenen centreret omkring spillestedet Mayhem”. Lower har musikalsk en vis fælleskarakteristika med en genre såsom postpunk, men deres lyd er på ingen måde præget af en forkærlighed for én bestemt nichegenre. Lowers lyd er både fri og særdeles eksplosiv, hvilket har resulteret i, at bandet nu varsler deres debutalbum, ”Seek Warmer Climes” via det mastodontiske pladeselskab Matador. Som nogle husker, blev Lower desværre nødsaget til at aflyse sidste år, men derfor er vi også yderst spændte over at have Lower på årets program, nu mere aktuelle end nogensinde før.'
		));
		$c->artists()->attach($artistLower->id);

		$c = Concert::create(array(
			'day' => 'fredag',
			'time' => $loerdag . '01:00:00',
			'venue_id' => $venueBHuset->id,
			'festival_id' => $festival2014->id,
			'info' => 'Plants består af Kasper Vang og Theis Ørntoft, der udover deres musikalske udfoldelser som denne bevidsthedsudvidende duo, også har baggrund i henholdsvis visuel kunst og litteratur. Lydmæssigt kan Plants karakteriseres som varm og repeterende syntehzeiser-kraut; en kosmisk affære, der lyder som en russisk sci-fi film, du aldrig har set. Plants udgav i 2013 båndet, ”Telemark”, via det danske båndselskab Infinite Waves, men der har også længe rumsteret rygter om en kommende 7’er. Vi krydser fingre og glæder os under alle omstændigheder til at præsentere Plants live.'));
		$c->artists()->attach($artistPlants->id);
		
		$c = Concert::create(array(
			'day' => 'lørdag',
			'time' => $loerdag.'18:00:00',
			'venue_id' => $venueAHuset->id,
			'festival_id' => $festival2014->id,
			'info' => ''));
		
		$c = Concert::create(array(
			'day' => 'lørdag',
			'time' => $loerdag.'18:45:00',
			'venue_id' => $venueBHuset->id,
			'festival_id' => $festival2014->id,
			'info' => ''));

		$c = Concert::create(array(
			'day' => 'lørdag',
			'time' => $loerdag.'19:30:00',
			'venue_id' => $venueAHuset->id,
			'festival_id' => $festival2014->id,
			'info' => ''));

		$c = Concert::create(array(
			'day' => 'lørdag',
			'time' => $loerdag . '20:15:00',
			'venue_id' => $venueBHuset->id,
			'festival_id' => $festival2014->id,
			'info' => 'Det er gået stærkt for den hjørringensiske/københavnske psych duo, The Wands, siden de i november 2012 udgav 10” Hello I Know The Blow You Grow Is Magic, som med psykedeliske klangflader og smagen af tør ørkensand har lagt store dele af Europa ned, med adskillige shows i bl.a. England, Frankring, Tyskland & Holland. The Wands’ lyd tager udgangspunkt i 60’ernes hippiepsych med improvisation og “østlig mystik”, dog med sig helt eget unikke tag, hvor bl.a. elementer fra post-punk. 
Live optræder duoen altid med flere musikere og atmosfæren er rå, men på samme tid fuld af farver imens tunge droner og skramlende fuzzguitarer kombineres med lettere naive og fængende melodier. Bandet varsler, desuden, deres debutalbum til efteråret.'));
		$c->artists()->attach($artistTheWands->id);

		$c = Concert::create(array(
			'day' => 'lørdag',
			'time' => $loerdag.'21:15:00',
			'venue_id' => $venueAHuset->id,
			'festival_id' => $festival2014->id,
			'info' => ''));

		$c = Concert::create(array(
			'day' => 'lørdag',
			'time' => $loerdag . '22:00:00',
			'venue_id' => $venueBHuset->id,
			'festival_id' => $festival2014->id,
			'info' => 'Det er en sjælden fornøjelse, at opleve det lokale garagepop band Glow Kit, der har gjort sig bemærket med deres udødelige melodier. Kasper Brinck og Kristoffer Kjersgaard Nohrs – kendt for keys i Cola Freaks – fik et gennembrud efter deres legendariske koncert på Rosenkrantzgade sammen med Emenkaya, Urban Achievers og Tumor Warlord, som et flertal formentlig gerne står inde for, har haft stor betydning for den aarhusianske undergrundsscene i dag. Glow Kit udgav deres selvbetitlede debut-lp i 2012 gennem Kanel Records, og har senest udgivet noget så utraditionelt som en jule-single, ”Christmas Daze”, i vinters, limiteret til 24 eksemplarer. Det er derfor med stor begejstring, at vi kan præsentere Glow Kit på årets program, der længe har været en velgemt, men skinnende perle fra/i den aarhusianske punkscene.'));
		$c->artists()->attach($artistGlowKit->id);

		$c = Concert::create(array(
			'day' => 'lørdag',
			'time' => $loerdag . '23:00:00',
			'venue_id' => $venueAHuset->id,
			'festival_id' => $festival2014->id,
			'info' => 'SOL er et aarhusiansk doom-metal band, centreret omkring Emil Brahe, der bl.a. også er kendt fra EP-aktuelle Singvogel. SOL startede ud som et studie-projekt i 2004, men blev først aktuelle som live-band i 2012, med en besætning bestående af musikere fra blandt andre Hahn Kult og Mammatus Cloud. Senest var SOL aktuelle med albummet ”And the Mouth of Time is Open” via det aarhusianske selskab Drowning, tilbage i december sidste år. SOL er et band i stadig bevægelse, og kommer eftersigende til at lyde mere som en art akustisk drone på de kommende udgivelser.'));
		$c->artists()->attach($artistSol->id);	

		$c = Concert::create(array(
			'day' => 'lørdag',
			'time' => $soendag . '00:00:00',
			'venue_id' => $venueBHuset->id,
			'festival_id' => $festival2014->id,
			'info' => 'Der er ingen tvivl om, hvor stor betydning Mikkel Holm har haft for den aarhusianske undergrund med sin optræden i bands såsom Urban Achievers, Happy Hookers For Jesus og Fright Eyes. Med Holms nye – og indtil videre mest personlige – projekt, Yung, er fokuset på den mere beskidte garagerock, hvor han i live-regi får stærk assistance af Tobias Tarp og Frederik Nybo, der begge også har gjort sig bemærket i det album-aktuelle rockband, Snaredrum. Det er sjældent, at man oplever et talent som Mikkel Holm/Yung, der formår at holde så suverænt højt et bundniveau i sit ørefængende sangmateriale, samtidigt med at produktiviteten er så høj, som tilfældet er. Det hele munder ud i et umiddelbart og oprigtigt udtryk, hvilket både bliver demonstreret på Yungs debutbånd, der allerede er ude i tredje oplag via Shordwood Records, men også bandets seneste selvbetitlede 7’er, der nu er tilgængeligt gennem Mastermind Records.'));
		$c->artists()->attach($artistYung->id);

		$c = Concert::create(array(
			'day' => 'lørdag',
			'time' => $soendag.'01:00:00',
			'venue_id' => $venueBHuset->id,
			'festival_id' => $festival2014->id,
			'info' => ''));

		$c = Concert::create(array(
			'day' => 'lørdag',
			'time' => $soendag.'02:00:00',
			'venue_id' => $venueAHuset->id,
			'festival_id' => $festival2014->id,
			'info' => ''));


		$c = Concert::create(array(
			'time' => '2014-04-12 20:00:00',
			'venue_id' => $venueTroejborg->id,
			'info' => 'The Love Coffin er en rockgruppe, der spiller forskelligartede numre, hvor den røde tråd udgøres af en insisterende, potent vokal og strengespillet. De hver for sig smukke guitarfigurer væver sig på medrivende vis ind mellem hinanden til et kaotisk og brutalt virvar, der vælter fremad tvunget af en kold bas og bragende trommer. Med inspiration fra alt mellem Australien og New Zealands firsere over ørkenrock til mørk folk skaber The Love Coffin et skramlet univers af vold og skønhed.'
		));
		$c->artists()->attach($artistBlod->id);
		$c->artists()->attach($artistLoveCoffin->id);
		$c->artists()->attach($artistScaredCrow->id);

		/**
		* sponsors
		*/
		$aarhus = Sponsor::create(array(
			'name' => 'Aarhus Kommune',
			'image' => 'aarhuskommune.png',
			'url' => 'http://www.aarhus.dk/'
		));

		$radar = Sponsor::create(array(
			'name' => 'Radar',
			'image' => 'radar.png',
			'url' => 'http://www.radarlive.dk/'
		));

		$tuborg = Sponsor::create(array(
			'name' => 'Tuborg',
			'image' => 'tuborg.png',
			'url' => 'http://www.tuborg.dk/'
		));

		$bhuset = Sponsor::create(array(
			'name' => 'B-Huset',
			'image' => 'lydrum.png'
		));
	}

}