# Test vs. inspection

Noen defekter er viktige ettersom de oppstår ofte. De fleste defekter er derimot mindre viktige, da de oppstår sjeldent. Problemet er å skille disse to tilfellene fra hverandre. Hvordan gjør en det mest effektivt og så nøyaktig som mulig?



Testing kan ikke alltid gjøres – til å begynne med har en ikke kode å teste med. Vi må derfor utføre ulike typer inspeksjoner. Dette er en av de største svakhetene med tradisjonell utvikling kontra smidig utvikling.

## Fit's List

<table>
	<tr>
		<td><strong>Area of competence</strong></td>
		<td><strong>Man</strong></td>
		<td><strong>Machine</strong></td>
	</tr>

	<tr>
		<td><em>Understanding</em></td>
		<td>Good at handling variations in written material</td>
		<td>Bad at handling variations in written material</td>
	</tr>
	<tr>
		<td><em>Observe</em></td>
		<td>General observations, multifunctional</td>
		<td>Specialized, good at observing quantitative data, bad at pattern recognition</td>
	</tr>
	<tr>
		<td><em>Reasoning</em></td>
		<td>Inductive, slow, imprecise but good at error correction</td>
		<td>Deductive, fast, precise but bad error correction</td>
	</tr>
	<tr>
		<td><em>Memory</em></td>
		<td>Innovative, several access mechanisms</td>
		<td>Copying, formal access</td>
	</tr>
	<tr>
		<td><em>Information handling</em></td>
		<td>Single channel, less than 10 bits per second</td>
		<td>Multi channel, several Megabits per second</td>
	</tr>
	<tr>
		<td><em>Consistency</em></td>
		<td>Unreliable, get tired, depends on learning</td>
		<td>Consistent repetition of several actions</td>
	</tr>
	<tr>
		<td><em>Power</em></td>
		<td>Low level, maximum ca. 150 watt</td>
		<td>High level over long periods of time</td>
	</tr>
	<tr>
		<td><em>Speed</em></td>
		<td>Slow – seconds</td>
		<td>Fast</td>
	</tr>
</table>

Et menneske er derfor bra når en behøver en evne til å håndtere varierte situasjoner, være innovativ og induktiv, samt når en vil gjenkjenne mønstre. Mennesker er på den andre siden mindre gode til å gjøre det samme om og om igjen på en konsistent måte. Dette gjør at menneskelig behanding av store datamengder ikke er å anbefale. Til slikt benytter en seg av maskiner.
Menneske og maskin utfyller hverandre ved å utnytte hverandres styrker, ved at maskinen hjelper mennesket å håndtere store mengder informasjon, og mennesket hjelper maskinen ved å gi den innovative inndata.


## Generell konsiderasjon

### Dokumenter
Design av arkitektur, system, sub-system og komponenter, samt pseudo-kode er eksempler på _dokumenter_, områder hvor tester enten ikke fungerer i det hele tatt, eller fungerer mindre bra. Her bør vi kun benytte oss av inspeksjoner.

Mennesker bruker sin erfaring og kunnskap til å identifisere mulige problemer, maskinen tilbyr støtte via å idetifisere relevant informasjon.

### Kode
For eksekvérbar kode kan en benytte seg av inspeksjon, testing eller en kombinasjon av begge disse, avhengig av kodens størrelse og kompleksitet. Andre viktige faktorer som farger valget av inspeksjon og test er programmeringsspråket og algoritmer som brukes for realiseringen.

En generell regel er at om en står overfor en tilstrekkelig liten kodebase vil en kunne utføre inspeksjon av hele denne basen, for så å desgne og utføre tester på bakgrunn av funnene her. I tifelle kompleks kode, vil en og starte med inspeksjon av koden, men her vil en fokusere på algoritmer og logikk. Da en i slike tilfeller ikke kan teste _hele_ kodebasen, vil en måtte utforme kompletthetskriterer for testene, som deretter designes og kjøres.

Kompletthetskriterier
: SOMETHING



## Inspeksjonsprosesser

For alle inspeksjonstyper - GIGO. Det kan og være en god idé å involvere kunderepresentanter.

### Walkthrough
Intern.
Bukes for tiwdlig beslutningstaking.

1. Skape en grov skisse av løsningen
	* Arkitektur, algoritme, etc.
2. Presentering
	* Forklare skissen til oppmøtte
3. Registrering av feeback og komme med forslag til forbedringer.

#### Fordeler
Fordeler med walkthrough av koden inkluderer at den er både enkel og billig. Dette muliggjør at en kan samle ideer på et tidlig statie i utviklingen.

#### Ulemper
Ulemper er at da prosessen er uformell er der ingen forpliktelser hos deltakerne. Prosessen skaper og mange løse og irrelevante ideer.

### Uformell inspeksjon
Intern.

![Uformell inspeksjon](Forelesning 05/img/1.png)


#### Fordeler
* Enkel og billig å gjennomføre
* Kan uføres i alle av utviklingens stadier
* Har som regel en god kostnad/nytte-ratio
* Krever kun et minimumsnivå av planlegging

#### Ulemper
Som ved bruk av [walkthrough](#walkthrough) vil det ikke være en formell forpliktelse blant deltakerne. En plukker heller ikke opp potensielle prosessforbedringer.



### Formell inspeksjon
Formell inspeksjon anbefales å være en del av den endelige akseptansetestingen av viktige dokumenter.

Som utredet av [T. Gilb og D. Graham](http://books.google.no/books?id=GO11btO0-vIC&q=%22software+inspection%22&dq=%22software+inspection%22&hl=en&sa=X&ei=KNZ1T_WcKeL64QSn99mbDw&redir_esc=y)


![Formell inspeksjon](Forelesning 05/img/2.png)


#### Distribusjon av resusser
<table>
	<tr>
		<td></td>
		<td><strong>Range (%)</strong></td>
		<td><strong>Typisk verdi (%)</strong></td>
	</tr>
	<tr>
		<td>Planning</td>
		<td>3-5</td>
		<td>4</td>
	</tr>
	<tr>
		<td>Kick-off</td>
		<td>4-7</td>
		<td>6</td>
	</tr>
	<tr>
		<td>Individual checking</td>
		<td>20-30</td>
		<td>25</td>
	</tr>
	<tr>
		<td>Logging meeting</td>
		<td>…</td>
		<td>…</td>
	</tr>
</table>

(TODO: Resten av slide 24 har falt bort)


#### Initiering av inspeksjonsprosessen
Inspeksjonsprosessen starter ved at forfatter sender en inspeksjonsforespørsel til QA-ansvarlig. Dersom dokumentet defineres å være klar for inspeksjon vil så QA-ansvarlig utnevne en inspeksjonsleder.

#### Planlegging
Viktige momenter som planlegging skal besvare er _hvem som skal delta i inspeksjonen_. De som skal delta bør ha interesse, tid og den kunnskapen som behøves for å sette seg inn i inspeksjonen.

#### Kick-off

* Distribuering av nødvendige dokumenter
* Tildeling av inspeksjonsspesifikke roller og jobber
* Sette mål for resursser, deadlines, etc.

#### Individuell kontroll
Den individuelle kontrollen er inspeksjonens hovedaktivitet. Her vil hver enkelt deltaker lese gjennom dokumentet for å se etter _potensielle feil_ – det vil si inkonistens i forhold til krav eller total applikasjonsfølelse, eller _mangel på etterlevelse_ i forhold til selskapet standarder eller godt håndtverk.

#### Loggføring av møtet

* Loggføring av _saker_ allerede funnet av inspeksjonens deltakere.
* Finne _nye_ saker, basert på diskusjoner og ny informasjon som dukker opp under loggføringen av møtet.
* Identifisering av mulige forbedringer av inspeksjons- eller utviklingsprosessen.


#### Forbedring av produktet
Etter endt inspeksjon vil dokumentets forfatter motta all loggføring av møtet. Alle oppføringer og saker som har kommet fram vil så kategoriseres som én av følgende:

* Feil i forfatters dokument
	* Gjør de nødvendige korrigeringer
* Feil i annens dokument
	* Informere dokumentets eier om mangelen
* Misforståelse innad i inspeksjonsteamet
	* Forbedre dokumentet for å hindre senerer misforståelser


#### Kontroll av forandringer
Det er inspeksjonsleders ansvar at samtlige saker i loggen avhendes på en tilfredsstillende måte. 

### Fordeler
* Kan brukes til å formelt akseptere dokumenter
* Inkluderer prosessforbedringer

### Ulemper
* Dyr og tidskonsumerende
* Behøver ekstensiv planlegging for å være vellykket


# Testprosesser

## Enhetstester
Målet med enhetstester er å verifisere at koden fungerer som foreskrevet. Dette gjøres av utvikler én eller flere ganger i løpet av utviklingen. Enhetstesting er en uformell testmetode som utføres ved at en først implementerer (en del av) en komponent. en definerer så en eller flere tester som aktiviserer denne koden. Til sist vil en kontollere resultatet mot de forventninger og nåværende forståelse av komponenten.

### Fordeler
* Enkel måte for kontrollere at koden fungerer
* Kan benyttes sammen med programmering på en iterativ måte

### Ulemper
* Vil kun teste en utviklers forståelse av spesifikasjonen.
* Kan behøve stubber eller drivere for å kunne teste.


## Fuksjonell verifikasjonstesting – Systemtesting

1. Basert på kravsspesifikasjoner, identifisér
	* Tester for hver enkelt krav, inklusiv feilhåndtering
	* Startstadie, forventet resultat og sluttstadie
2. Identifisere avhengigheter mellom tester
3. Idetifisere akseptansekriterier for testsuite
4. Kjøre tester og kontrollere resultatet opp mot
	* akseptansekriterier for hver enkelt test
	* akspetansekriterier for hele testsuiten sett under ett


### Fordeler
Tester systemets oppførsel opp mot kundens krav.

### Ulemper
Systemtesting er en black box-test. Dersom man finner en feil vil en behøve ekstensiv debugging for å lokalisere kilden til feilen.



## Systemverifikasjonstesting – Akseptansetesting

1. Kjør testene på nytt på kundens domene
2. Bruk systemet for å utføre et sett realistiske oppgaver med ekte data.
3. Forsøk på å bryte systemet, enten ved bruk av mate det med store mengder data eller med ulovlig input.

### Fordeler
* Skaper tillit til produktets evne til å være nyttig for kunde.
* Viser et systems evne til å operere i kundens miljø.

### Ulemper
Kan tvinge systemet til å håndtere data det ikke var designet for, og dermed skape et ugunstig bilde av systemet.