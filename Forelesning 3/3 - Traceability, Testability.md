# Sporbarhet av krav
Sporbarhet av krav er av Gotel og Finkelstein definert som: 

> "[…] the ability to describe and follow the life of a requirement, _in both a forwards and backwards direction_, i.e. from its origins, through its development and specification, to its subsequent deployment and use, and through periods of on-going refinement and iterastion in any of the phases."
>
> __Gotel og Finkelstein__ (1994)

En legger med andre ord vekt på at alle de krav som et prosjekt har skal være sporbare _hele veien_ helt fra insepsjonen via utvikling og spesifikasjon til utplasseing og bruk.

For å oppnå dette er det definert en rekke mål:

* Projekthåndtering
	* Status: "Når vil vi være ferdige?" og "Hva vil det koste?"
	* Kvalitet: "Hvor nære er vi å nå våre mål?"
* Håndtering av kvalitetssikring
	* Forbedre kvalitet: "Hva kan vi gjøre bedre?"
* Endringshåndtering
	* Versjonering, dokumentasjon av forandringer (Hvorfor? Hva? Når?)
	* Analyse av endingsinnvirkning
* Gjenbruk
	* Varianter og produktfamilier
	* Krav kan bli målrettet for gjenbruk
* Validering
	* Finne og fjerne konflikter mellom krav
	* Kravs grad av kompletthet
* Verifisering
	* Sikre at alle krav er oppnådd
* Systeminspeksjon
	* Identifisere alternativer og kompromisser
* Sertifisering og revisjon
	* Bevis for at standarder følges.



## Utfordringer
Det foreligger en rekke utfordringer ved ...


Blant disse er 

Spor må identifiseres og registreres blant et stort antall hetrogene entiteter, instanser, 
Det kan være vanskelig å skape betydningsfulle relasjoner i en slik kompleks kontekst.

Spor er videre i konstant forandring og bevelgelse, ettersom de vil kunne forandres ved forandringer i krav eller utviklingsartefakter.

Stor variasjon i verktøy, basert på matriser, hyperlenker, tagging, identifiers. Fortsatt må det meste av arbeidet utføres manuelt.

Sporinformasjonen er aldri komplett. Dette grunnet komplekse systemer av sporingservervelse og -vedlikehold.

Grunnet mangel på kvalitetsattributter er tillit en stor utfordringer. Det nytter eksempelvis ikke at en vet at 70% av alle sporingskoblinger er nøyaktige om en ikke samtidig vet hvilke koblinger som utgjør disse 70%.



Prosjektet har gjerne en rekke ulike interessenter. Disse har ulikt syn på prosjektet avhengig av sin rolle. Disse vil følgelig ha ulike syn på sporbarheten av krav.

Håndtering av kvalitetssikring handler om å maksimere et produkts _kvalitet_. Denne kvaliteten skal være dokumentert i kravsspesifikasjonen, og spørsmål som derfor spørres i denne sammenhengen er _"Hvor nære er vi kravsspesifikasjonen vår?"_ og _"Hva kan vi gjøre bedre?"_.

Endringshåndtering handler om å 
spore effektene av hver enkelt endring i ...

Gjenbruk
Peke ut de aspekter som 


// Lese bedre til senere





## Metamodeller

Modell
: En abstraksjon av virkeligheten.

Metamodell
: Modeller av modeller, en videre abstraksjon av virkeligheten som belyser egenskaper ved modellen.

Metamodeller for sporbarhet av krav benyttes ofte som basis for sporbarhetsmetodologier og -rammeverk. Dette for å kunne fastslå og definere hvilke typer artefakter som skal spores, samt definere hvilke typer relasjoner som kan etableres mellom disse artefaktene.

[STAKEHOLDER] --Manages--> [SOURCE] --Documents--> [OBJECT]
[STAKEHOLDER] --Has role in --> [OBJECT]
[OBJECT] --Traces to--> [OBJECT]
[STAKEHOLDER] --Has role in --> --Traces to--> [OBJECT]

Der skilles ofte mellom high-end- og low-end-sporbarhet.

// TODO - sette inn bilder her

![European EMPRESS project: Meta model for requirements traceability](img/3.png)

![PRECISE Meta-model (SINTEF)](img/4.png)



## Tilnærminger til sporbarhet
Det er en kritisk oppgave å kunne etablere koblinger, både mellom ulike krav, og mellom krav og andre artefakter. Manuell kobling og vedlikehold av slike koblinger er både dyrt og utsatt for feil. En ønsker derfor å kunne helt eller delvis automatisere denne oppgaven.


### Manell sporingskobling
Manuell sporingskobling er den enkleste formen for sporbarhet. Her benytter en seg av _sporbarhetsmatriser_, enten ved bruk av hypertekst eller regnearkprogram som for eksempel Microsoft Excel for å skape kryssreferanseskjema. Der er i hovedsak to problemer med denne tilnærmingen: over tid vil det å vedlikeholde et stort antall koblinger bli vanskelig; og da koblingene er statiske (mangel på attributter) vil mangel på automasjon av oppgaver være begrenset.

<table>
	<tr>
		<td>Unik ID</td>
		<td>Krav</td>
		<td>Kilde til krav</td>
		<td>SW-krav-spek./ Funk. krav. dok.</td>
		<td>Design-spek.</td>
		<td>Program-modul</td>
		<td>Test-case(r)</td>
		<td>Vellykket test-verifikasjon</td>
		<td>Modifikasjon av krav</td>
		<td>Bemerkninger</td>
	</tr>
	<tr>
		<td>…</td>
		<td>…</td>
		<td>…</td>
		<td>…</td>
		<td>…</td>
		<td>…</td>
		<td>…</td>
		<td>…</td>
		<td>…</td>
		<td>…</td>
	</tr>
	<tr>
		<td colspan="10" style="text-align:center;"><strong>Eksempel på manuelt kravssporingsskjema.</strong>
	</tr>
</table>


### Scenario-drevet sporbarhet
Scenario-drevet sporbarhet er en _testbasert_ tilnærming som benyttes for å avdekke relasjoner mellom krav, design og kodeartefakter. [Alexander Egyed](http://www.alexander-egyed.com/publications/A_Scenario-Driven_Approach_to_Traceability.pdf) er anerkjent som forfatteren av denne tilnærmingen.

Trikset benyttet er å observere kjøretids-oppførselen til testscenarioer. Eksempler på verktøy som benytter seg av denne tilnærmingen er [IBM Rational PureCoverage](http://www.jfind.com/listings/1711.shtml). Kjøretidsoppførselen til applikasjonen oversettes til en grafstruktur som benyttes til å indikere fellestrekk mellom entiteter assosiert med hendelsen.

Metoden benytter seg av det den kaller et _footprint_ for å oppnå sporbarhet. Dette fortsporet inneholder informasjon om det settet klasser som ble eksekvert når et spesifisert scenario testes, og antallet metoder som ble eksekvert i hver av disse klassene.

<table>
	<tr>
		<td></td>
		<td><strong>Test-scenario</strong></td>
		<td><strong>Artefakt</strong></td>
		<td><strong>Observerte Java-klasser</strong></td>
	</tr>
	<tr>
		<td>1</td>
		<td>Se liste over filmer</td>
		<td>[s3]</td>
		<td>[C, J, R, U]</td>
	</tr>
	<tr>
		<td>2</td>
		<td>Se kontekstuell informasjon om film</td>
		<td>[s4, s6] [r2]</td>
		<td>[C, E, J, N, R]</td>
	</tr>
	<tr>
		<td>3</td>
		<td>Velg/spill av film</td>
		<td>[s8, s9] [r6]</td>
		<td>[A, C, D, F, G, I, J, K, N, O, T, R, U]</td>
	</tr>
	<tr>
		<td>4</td>
		<td>Trykk stopp-knapp</td>
		<td>[s9, s11] [r8]</td>
		<td>[A, C, D, E, F, G, I, K, O, T, U]</td>
	</tr>
	<tr>
		<td>5</td>
		<td>Trykk spill-knapp</td>
		<td>[s9, s11] [r9]</td>
		<td>[A, C, D, F, G, I, K, N, O, T, R, U]</td>
	</tr>
	<tr>
		<td>6</td>
		<td>Bytt server</td>
		<td>[s5, s7]</td>
		<td>[C, R, J, S]</td>
	</tr>
	<tr>
		<td>7</td>
		<td>…</td>
		<td>…</td>
		<td>…</td>
	</tr>
	<tr>
		<td colspan="4" style="text-align:center;"><strong>Eksempel</strong></td>
	</tr>

</table>

Det er imidlertid noen problemer tilknyttet til denne tilnærmingen. Det en kan komme over er at der finnes scenarioer som ikke dekker noen krav, og der kan finnes scenarioer som hører til flere krav. Slike hendelser må markeres i en separat tabell. En benytter seg her av symbolene "F" (fixed) og "P" (probable) for å markere et tilfelle, avhengig av hvor sikre vi er på at en gitt klasse tilhører et gitt scenario.


![Eksempel](img/5.png)


### Utviklingsfotspor
Utviklingsfotspot (development footprint) er en løsning som gjør det mulig å skape sporbarhetsinformasjon, utviklet av (Inah Omoronyia)[http://www.informatik.uni-trier.de/~ley/db/indices/a-tree/o/Omoronyia:Inah.html] et al. Denne metoden krever at hver utvikler alltid identifiserer det krav/use-case som han/hun jobber med på et gitt tidspunkt. En utvikler kan kun jobbe med et enkelt use-case om gangen.

Resultatet av denne metoden vil være lik den som ved bruk av scenario-test-footpring-tabellen. Denne tabellen vil vise hvilke dokumenter, classer og lignende som har blitt aksessert gjennom arbeid med en gitt use-case.

Hovedproblemet med denne tilnærmingen er at det forekommer "falske" adganger. Dette kan skje eksempelvis ved at en utvikler ser på en del av koden som ikke tilhører det use-case som det på et gitt tidspunkt jobbes med. For å motvirke dette kan en supplere informasjonen som genereres med mer informasjon om en aksess' natur, tidspunkt og person som utførte aksesseringen.

Typer aksesseringstyper gitt i denne metoden er:

* C - Create
* U - Update
* V - View

![Eksempel på bruk av developer footprint](img/6.png)



### Ulemper ved bruk av scenario-drevet sporbarhet
Selv om scenario-drevet sporbarhet ofte er semi-automatiserte trenger de allikevel mye tid av systemingeniører som iterativt må identifisere et subsett testscenarioer og hvordan disse relaterer til kravsartefakter. Videre er det ikke alltid at krav som per metodene gitt over ikke er relaterte, ikke er relaterte i en annen form (som for eksempel deling av data, implementasjons-pattern).



## Sporing via tagging
Denne metoden er enkel både å forstå og å implementere. Ulempen er dog at den er sterkt avhengig av menneskelig innblanding. Prinsippet med tagging er at hver enkelt krav gis en _tagg_, enten manuelt eller av et verktøy. Hvert enkelt dokument, kodesnutt, etc. gis også hver sin tagg.

Ulike fremgangsmåter kan benyttes – tagger kan være enten enkeltnivå eller flernivå. Ved bruk av enkeltnivå (eks. R4) får en en enkel sporingsmatrise. Ved bruk av flernivå-tagger (eks. R4, hvor R4.1 og R4.2 er sub-nivå av R4) vil en enkelt kunne gruppere logiske samlinger krav, og dermed få mer detaljert sporingsinformasjon.

Sporbarhetens kvalitet vil bero på at vi alltid husker å (korrekt) tagge alle relevante dokumenter og artefakter. Der finnes verktøy som kan kontrollere at alle dokumenter i databasen er tagget, men korrektheten av disse taggene er derimot ikke gitt.



## Konklusjon
Det å kunne spore krav er et svært viktig aspekt ved kravshåndtering.

Prosjektets ulike interessenter har ulike behov for sporbarhetsinformasjon.

Sporbarhet kan være komplekst for ikke-trivielle prosjekter.

Sporbarhet-meta-modeller gir en insikt på typen sporbarhetsinformasjon som kreves for et prosjekt.

Der eksisterer flere automatiserte tilnærmingerfor sporing av krav. Da de ulike automatiserte tilnærmingene har ulike styrker og svakheter vil den beste måten å benytte seg av disse ligge i kombinere disse riktig og dra nytte av synergieffekter dette gir.






## Nyttige lenker
* [Requirements traceability (wikipedia.org)](http://en.wikipedia.org/wiki/Requirements_traceability)




# Kravsspesifikasjon og testing