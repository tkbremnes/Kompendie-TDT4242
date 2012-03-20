## Formell inspeksjon
Den formelle kodeinspeksjonen består av fem deler:

* Planlegging
* Kick-off
* Individuell kontroll
* Loggføring
* Redigering og oppfølging

### Planlegging
Hvem skal delta i inspeksjonen? Hvem er interessert? Hvem har tid? Hvem har kunnskap om språk, applikasjon, verktøy og metoder?

Verdiområde: 	3-5%
Typisk verdi: 	4%



### Kick-off
Distribuering av nødvendige dokumenter er viktig her. Relevante dokumenter er de dokumenter som skal inspiseres, krav, samt relevante standarder og sjekklister. Andre ting som skal med her er rolle- og arbeidsfordeling. En vil også sette mål for ressursbruk, deadlines, etc.

Verdiområde:	4-7%
Typisk verdi:	6%



### Individuell kontroll
Individuell kontroll er hovedaktiviteten ved inspeksjonen. Hver av inspeksjonens deltakere leser gjennom alle relevante dokumenter for å lete etter:

* Potensielle feil
	* Inkonsistens med kravsspesifikasjon eller felles applikasjonsopplevelse.
* Mangel på etterlevelse i forhold til firmas standarder, eller god arbeidsskikk

Verdiområde: 	20-30%
Typisk verdi: 	?



### Loggføring
En ønsker å loggføre de feil som de enkelte deltakere finner, feil som oppdages gjennom diskusjoner og den faktiske loggføringen (eks. mismatch mellom deltakeres oppfattelse av applikasjonen), samt vil en identifisere potensielle forbedringer til inspeksjons- og/eller utviklingsprosessen.

Verdiområde: 	20-30%
Typisk verdi: 	25%


### Redigering og oppfølging
Alle loggens oppføringer kategoriseres som enten:

* Feil i forfatters dokument
	* Gjør nødvendige korrigeringer
* Feil i andres dokument
	* Informere dokumentets eier
* Misforståelser innad i inspeksjonsteamet
	* Forbedre dokument for å forhindre fremtidige misforståelser

Inspeksjonsleder er ansvarlig for at hver oppføring i loggen gjøres noe med på en tilstrekkelig god nok måte. 

Verdiområde: 	15-30
Typisk verdi: 	20


### Fordeler og ulemper ved formell inspeksjon
* Fordeler
	* Kan brukes for å formelt akseptere dokumenter
	* Inkluderer prosessforbedringer
* Ulemper
	* Krever mye tid
	* Dyrt
	* Behøver ekstensiv planlegging for å lykkes




## Testing

* Enhetstesting
* Systemtesting (aka. verifikasjonstesting av funksjoner)
* Akseptansetesting (aka. verifikasjonstesting av systemet)


### Enhetstesting

#### Fordeler og ulemper
* Fordeler: 
	* Enkel måte å kontrollere at kode fungerer som den skal
	* Kan iterativt bli til sammen med kode
* Ulemper
	* Tester kun utviklerens forståelse av spesifikasjon
	* Kan kreve stubber eller drivere for å kunne teste
	

### Systemtesting
1. Basert på krav, identifisere
	* Tester for hvert enkelt krav, inklusiv feilhåndtering
	* Initiell tilstand, forventet resultat og sluttilstand
2. Identifisere avhengigheter mellom tester
3. Identifisere akseptansekriterier for hver test-suite
4. Utføre tester og kontrollere resultater opp mot
	* Akseptansekriterier for hver test
	* Akseptansekriterier for hele test-suiten


#### Fordeler og ulemper
* Fordeler
	* Tester systemets oppførsel opp mot kundes krav
* Ulemper
	* Black-box. Finner man en feil må der ekstensiv debugging til å for å finne hvor feilen oppstår.
	
	
	
### Akseptansetesting
Akseptansetesting har som regel tre aktiviteter, og involverer både kunde eller dens representanter:

* Utføre systemtesting på kundens område
* Bruke systemet for å utføre realistiske oppgaver
* Forsøke å brekke systemet gjennom bruk av store mengder data og ulovlig inndata.

#### Fordeler og ulemper
* Fordeler
	* Skaper en tillit til systemet er brukbart for kunde
	* Viser systemets evne til å operere i kundes miljø
* Ulemper
	* Kan tvinge systemet til å handle inndata som det ikke var designet for, og dermed skape et ufordelaktig inntrykk.




# Del 2

## Testing og inspeksjon - En kort dataanalyse

To viktige termer: defekt-**typer** og **-termer**


### Defekt-kategorier
Åtte ulike defektkategorier:
* Feil eller manglende data
* Feil eller manglende datavalidering
* Feil i algoritme
* Feil timing eller sekvensiering
* Interfaceproblemer
* Funksjonelle feil
* Bygging-, pakking- eller sammenslåingsproblemenr
* Dokumentasjonsproblemer



## Inspeksjonstriggere
* Konformitet til design
* Forståelse av detaljer
	* Operasjon og semantikk
	* Bivirkninger
	* Konkurrens
* Bakoverkompabilitet
* Lateral kompabilitet
* Sjeldne situasjoner
* Dokumenters konsistens og kompletthet
* Språkavhengigheter





Inspeksjonsdata
Tre utviklingsaktiviteter i fokus:

* Høynivådesign
	* Dokumentasjon - 45,10%
	* Funksjon		- 24,71%
	* Grenesnitt	- 14,12%
	* Algoritme		- 20,72%
* Lavnivådesign
	* Funksjon		- 21,17%
	* Dokumentasjon
* Implementasjon.

Testdata
Enhetstesting, systemtesting, akseptansetesting.



> Testing og inspekasjon er foskjellige aktiviteter. De behøver: Forksjellige triggere, forskjellig mindset, og finner ulike typer defekter. En trenger derfor begge aktiviteter for å skape et produkt av høy kvalitet.