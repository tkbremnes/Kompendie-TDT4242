
## Ansvar
Viktig å tenke på:

* Firmaet som bringer produktet til markedet har fult ansvar for produktets kvalitet
* Er bare mulig å søke om oppreisning etter en outsourcing, dersom vi kan bevise at de ikke fullførte sin kontrakt.

## Testing og selvtillit
Rollen testing har under:

* utvikling - Finne og fjerne defekter
* Akseptanse - Bygge selvtillit i komponenten

Når vi tester COTS eller komponenter hvor utviklingen har blitt outsourced/subcontracted, ønsker vi å bygge selvtillit(confidence).

### Skape tillit til produktet:
Man kan bygge tillit basert på : Produktet i seg selv, f.eks en COTS komponent. Prosessen - hvordan den ble utviklet og testet. Folket - personalet som har utviklet og testet komponenten. 
![Product trustworthiness pattern](Forelesning 09/img/2.png)

### Skape tillit til prosessen:
Tillit i prosessen stammer fra tre kilder:
Hvem gjør det? - "Teamet er kompetent" . Hvordan blir det gjort? - "Metoden adresserer problemet". Vi kan sjekke at prosessen blir brukt korrekt - "Prosessen er sporbar".

## Testing og outsourcing
Når vi outsourcer utvikling, må testingen være en integrert del av utviklingsprosessen. Testing blir da altså et kontraktsspørsmål. Fra trustworthiness mønsteret ser vi at vi må inkludere krav for:
Komponenten - Hva . Kompetansen til personalet - Hvem . Prosessen - Hvordan.

### Krav ved outsourcing. 
Når man skal tegne en outsourcing kontrakt bør man inkludere: 

* Krav til personell - riktige personer til jobben, se CV til hver person.
* Utviklingsprosessen - inkludert testing. Slik tillit kan komme fra sertifikater(f.eks ISO 9001) eller egne prosessrevisjoner. 
* Prosjektplan - når skal de gjøre hva?
* Test strategi - Hvordan vil de teste komponentkravene våre?
* Testplan - Hvordan vil testene bli kjørt?
* Testlogg - hva var resultatet av testene?

### Tillit i komponenten
Tilliten vi har til en komponent avhenger av hvor fornøyd vi er med svarene på spørsmålene over. Vi kan dog også bygge tillit på tidligere relasjoner med selskapet. Dess større denne tilliten basert på tidligere erfaringer er, jo mindre strenge behøver vi være i kontrakten. 

## Teste COTS
COTS testes ved å benytte black-box testing eller domene-partisjonstesting. Erfaringer tilsier at vi vil få mest utav innsatsen ved å fokusere på tester for : Intern robusthet, og ekstern robusthet.

### Robusthet

* Intern Robusthet : Evnen til å behandle feil i komponenten eller dens miljø. Her trenger vi wrappers, feilinjeksjon etc. Her er komponenter som kun er synlige innenfor systemets grenser. 
* Ekstern robusthet : Evnen til å behandle feil input. Her trenger vi kun komponenten "som den er". Her er komponenter som er del av brukergrensesnittet. 

Viktigheten av disse to typene vil variere , avhengig av typen komponentener vi tester. 

#### Intern robusthet
Intern robusthet er evnen til å :

* Overleve alle feilaktige situasjoner som; Minnefeil - både kode og data. Feiling av funksjonskall, inkludert kall til OS funksjoner.
* Gå til en definert , _trygg_ tilstand etter å ha gitt feilmeldingen. 
* Fortsette etter en slik feilaktig situasjonen med et minimumstap av informasjon.

#### Wrappers
En wrapper fungerer som en slags mellomtjener som gir oss et grensesnitt hvor vi kan få tilgang til tjenester andre steder i systemet. Wrapperne har som hovedoppgave å kalle andre klasser og metoder, gi oss tilgang til disse gjennom et veldefinert grensesnitt uten å berøre andre deler. Dette gir lavere kompleksitet. 
En wrapper har to essensielle karakteristikker:

1. En implementasjon som definerer funksjonaliteten vi vil ha tilgang til. Dette kan være et objekt, men trenger ikke være det(Eksempel på ikke-objekt implementasjon: Vi trenger tilgang til funksjoner til en DLL).
2. "Wrapper" klassen gir oss tilgang til implementasjonen og metoder for å administrere implementasjonen. Klienten kaller en metode på wrapperen som igjen aksesserer implementasjonen som er nødvendig for å fullføre oppgaven. 

_Hvorfor wrappers?_ : 
Vi kontrollerer komponentens input, selv om komponenten er i et ekte system. Vi kan samle og rapportere input og output fra komponenten. Vi kan manipulere feilbehandlingen på denne ene komponenten uten å berøre resten av systemet. 

#### Fault injection
En fault er en defekt eller unormal tilstand som kan føre til svikt i systemet. Ved fault injection setter vi inn feil med vilje slik at vi kan se responsen systemet gir. Målet er å ikke gjenskape omstendighetene som fører til en slik feil. Fault injection brukes ofte med stress testing, og blir sett på som en viktig del av å utvikle robuste systemer. 
To steg i fault injection: 

1. Identifiser sett med feil som kan forekomme i et system, modul, klasse, metode. Eksempel: Ikke noe vits å sette inn nettverksfeil dersom applikasjonen ikke bruker et nett.
2. Utøv disse feilene for å evaluere hvordan applikasjonen svarer. Typisk finner applikasjonen feilen, er feilen isolert og "overlever" applikasjonen? 

Se foil 9-2 for utøvende eksempel på fault injection.

#### Ekstern robusthet
Feilbehandling må bli testet for å vise at:
Feil input gir en feilmelding. Feilmeldingen skal være forståelig for de tenkte brukerne. Systemet skal fortsette etter feilen med et minimalt informasjonstap.
Ekstern robusthet er evnen til å :

* Overleve input av feilaktig data ( no crash)
* Gi en enkel-å-forstå feilmelding som hjelper brukeren til å rette på inputfeil.
	* Dette kan kun testes ved å involvere brukerne og er dermed ikke like lett å teste som de andre punktene. Vi trenger å vite hvilken info brukeren trenger for å kunne korrige feil i input og fortsette der han slapp i samme tilstand. 
	* Den enkleste måten å teste feilmeldinger på er å be en bruker om å : Begynne på en arbeidsoppgave, sette inn en feil i input underveis i oppgaven. Vi kan da observere hvordan brukeren prøver å komme seg ut av situasjonen og hvor fornøyd han er med hjelpen han får fra systemet.
* Gå til en definert tilstand
* Fortsette etter feilsituasjonen med et minimumstap av informasjon. 

#### Sekvensiell testing
Se foil for utøvende eksempel.
P = target failure rate. hvis den er p < 10^3 så trenger man et stort antall tester. Det bør derfor kun bli brukt for robusthettesting basert på automatisk generert random-input
Hvis p < 10^1 , så vil sekvensiell testing gi brukbare resultater selv om man inspiserer et forholdsvis stort antall dokumenter. 

#### Bayesian metoder
Fremfor å bygge tillit kun på test resultater, kontrakter, eller tidligere erfaring kan man kombinere disse tre faktorene, og dette kalles bayesian statistikk.

Se foil 9-2 for dybtgående eksempel på bayes og sekvensiell testing med bayes. 
