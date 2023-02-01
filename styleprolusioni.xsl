<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:tei="http://www.tei-c.org/ns/1.0"
	xmlns="http://www.w3.org/1999/xhtml">
<xsl:output method="html" encoding="UTF-8" omit-xml-declaration= "yes" indent="yes"/>
<xsl:template match="/">

    <html>
            <head>
            <title>F. De Saussure - Progetto di Codifica dei Testi</title>
            <xsl:value-of select="tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"></xsl:value-of> <!-- restituisce il contenuto del nodo selezionato secondo l'espressione XPtah -->
            <link href="styleprolusioni.css" rel="stylesheet" type="text/css"/>
            </head> <!-- nell'xsl value of prende teiH scende in fileDesc e da qui a TitleStmt dove va a recuperare title -->
            
            <body>
                <div class="contenitore">
                <header>
                </header>
                <nav id="navbar"> <!-- ripresa da html -->
                    <ul> 
                        <li><a href = "#Introduzione">Introduzione</a></li>
                        <li><a href = "#Pagina20">Pagina 20</a></li> 
                        <li><a href = "#Pagina21">Pagina 21</a></li>
                        <li><a href = "#bibliografia">Informazioni</a></li>
                    </ul>
                </nav>

                <div id="info2">
                    <xsl:element name="img"> <!-- viene utilizzato per crea un nodo elemento nel documento di output -->
                        <xsl:attribute name="src">img/Ferdinand_de_Saussure.jpg</xsl:attribute>
                    </xsl:element>

                    <xsl:element name="img">
                        <xsl:attribute name="src">img/Ferdinand_de_Saussure2.jpg</xsl:attribute>
                    </xsl:element>

                    <xsl:element name="img">
                        <xsl:attribute name="src">img/FDS3.jpeg</xsl:attribute>
                    </xsl:element>
                </div>

                <div class="container" id="introduzione">
                    <h3 id="introduzioneTitolo">Informazioni principali</h3>
                    <p>Autore del manoscritto: <b><xsl:value-of select="//tei:titleStmt/tei:author"></xsl:value-of></b>.</p> <!-- percorso XPath all'interno dell'attributo select -->
                    <p>Titolo: <b><xsl:value-of select="//tei:titleStmt/tei:title"></xsl:value-of></b></p> <!-- xsl select:of restituisce il contenuto del nodo che viene selezionato tramite l'espressione XPath indicata con select -->
                    <p>Lingua: <b><xsl:value-of select="//tei:textLang"></xsl:value-of></b></p>
                    <p>Acquisito: <b><xsl:value-of select="//tei:repository"></xsl:value-of></b></p>
                    <p>Fruzione: <b><xsl:value-of select="//tei:availability"></xsl:value-of></b></p>
                </div>

                <div class="containerDescrizioneFisica">
                    <h3 id="descrizioneFisicaTitolo">Descrizione fisica</h3>
                    <p>Supporto: <b><xsl:value-of select="//tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support"></xsl:value-of></b></p>
                    <p>Numero di fogli: <b><xsl:value-of select="//tei:physDesc/tei:objectDesc/tei:supportDesc/tei:extent"></xsl:value-of></b></p>
                    <p>Condizioni: <b><xsl:value-of select="//tei:physDesc/tei:objectDesc/tei:supportDesc/tei:condition"></xsl:value-of></b></p>
                    <p>Layout: <b><xsl:value-of select="//tei:layoutDesc"></xsl:value-of></b></p>
                    <p>Mani: <b><xsl:value-of select="//tei:physDesc/tei:handDesc"></xsl:value-of></b></p>
                    <p>Grafia: <b><xsl:value-of select="//tei:physDesc/tei:typeDesc"></xsl:value-of></b></p>
                </div>

                <div class="containerStoria">
                    <h3 id="storiaTitolo">Storia</h3>
                    <xsl:value-of select="//tei:history"></xsl:value-of> <!-- recupera informazioni sulla storia dall'xml -->
                </div>

                <div class="containerLgenda">
                    <h3 id="titoloLegenda">Legenda</h3>
                        <div class="legendaElementi">
                            <p><li id="giallo">Elemento terminologico
                                <input type="checkbox" id="term"/></li></p>
                            <p><li id="arancione">Esempio linguistico (francesismo)
                            <input type="checkbox" id="esempioling"/></li></p>
                            <p><li class="aggiunte">Aggiunte del curatore
                            <input type="checkbox" id="aggiuntecur"/></li></p>
                            <p><li class="aggiunteAutore">Aggiunte dell'autore
                            <input type="checkbox" id="aggiunteaut"/></li></p>
                            <p><li class="abbreviazionili">Abbreviazioni
                            <input type="checkbox" id="abbreviazioni"/></li></p>
                            <p><li class="cancellazioniGap">Cancellazioni
                            <input type="checkbox" id="cancellazioni"/></li></p>
                            <p><li class="correzionili">Correzioni
                            <input type="checkbox" id="correzioni"/></li></p>
                            <p><li class="glottonimi">Glottonimi
                            <input type="checkbox" id="glottonimi"/></li></p> <!-- checkbox lo troviamo su css -->
                        </div>
                </div>

                <div class="containerP20" id="Pagina20">
                    <div class="titolo">
                        <h3>Pagina 20</h3>
                    </div>
                        <div class="contenitoreTrascrizioneImmagine"> 
                            <div class="img-wrapper">
                                <xsl:element name="img">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="//tei:graphic[@xml:id='Pag20']/@url"/> <!-- seleziona l'elemento con attributo e valore specificato -->
                                    </xsl:attribute>
                                    <xsl:attribute name="usemap">
                                        <carattere>#mappa_M_20</carattere>
                                    </xsl:attribute>
                                    <xsl:attribute name="id">frontepag20</xsl:attribute>
                                </xsl:element>
                            </div>

                            <xsl:for-each select="//tei:facsimile">
                                <xsl:apply-templates select="tei:surface"/>
                            </xsl:for-each>


                            <div class="trascrizione">
                                <xsl:apply-templates select="//tei:text//tei:div[@n = '20']"/>
                            </div>  
                        </div>
                    
                    <div class="traduzione">
                        <div class="testoTraduzione">
                        
                            <h3>Traduzione</h3>
                        </div>
                        <xsl:apply-templates select="//tei:text//tei:div[@n = '1']/tei:ab"/>
                    </div>
                </div>
       

                <div class="containerP21" id="Pagina21">
                    <div class="titolo">
                        <h3>Pagina 21</h3>
                    </div>
                        <div class="contenitoreTrascrizioneImmagine">
                            <div class="img-wrapper">
                                <xsl:element name="img">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="//tei:graphic[@xml:id='Pag21']/@url"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="usemap">
                                        <carattere>#mappa_M_21</carattere>
                                    </xsl:attribute>
                                    <xsl:attribute name="id">frontepag21</xsl:attribute>
                                </xsl:element>
                            </div>
                            <div class="trascrizione">
                                    <xsl:apply-templates select="//tei:text//tei:div[@n = '21']"/>                
                            </div>
                        </div>
                    <div class="traduzione">
                        <div class="testoTraduzione">
                            <h3>Traduzione</h3>
                        </div>
                        <xsl:apply-templates select="//tei:text/tei:body/tei:div[@n = '2']/tei:ab"/>
                    </div>
                </div>

                <div class="containerTerm">
                    <h3 id="glossarioTitolo">Glossario</h3>
                    <xsl:apply-templates select="//tei:list"/>
                </div>

                <div class="containerBibliografia" id="bibliografia">
                    <h3 id="bibliografiaTitolo">Bibliografia</h3>
                    <xsl:apply-templates select="//tei:listBibl"/>
                </div>

                <div class="containerAbout">
                    <h3 id="about">Riferimenti</h3>
                    <xsl:apply-templates select="//tei:editionStmt"/>
                    <p>Traduzione effettuata da: <b><xsl:value-of select="//tei:fileDesc/tei:titleStmt/tei:respStmt/tei:name[@xml:id='EmaF']"></xsl:value-of></b></p>
                </div>
                </div>
            </body>
            <script type="text/javascript" src="script.js"></script>
        </html>
    </xsl:template>

    <xsl:template match="//tei:term">
					<span class="elemTerm">
						<xsl:value-of select="."/>
					</span>
	</xsl:template>

    <!-- ESEMPI LINGUISTICI -->

    <xsl:template match="//tei:foreign"> <!-- crea un modello con attributo match che designa un pattern che indica l'elemento su cui applicare il modello  -->
        <span class="menzioni">  <!-- si recupera dall'html tutti gli span con classe manzioni che sono delle sorti di div, di contenitori -->
            <xsl:value-of select="."/>
        </span> <!-- restiuisce il contenuto del nodo selezionato per mezzo di una espressione XPath, ma in questo caso seleziono ogni foreign con span menzioni -->
    </xsl:template>

    <!-- CANCELLAZIONI -->
    <xsl:template match="//tei:del"> <!-- template crea un modello che ha come attributo nmatch al cui interno troviamo una espressione XPath che recupera tutti i del all'interno dell'XML -->
					<span class="cancellazioni"> <!-- recupera span cancellazioni in HTML -->
						<xsl:value-of select="."/> <!-- restituisce il contenuto del nodo selezionato secondo XPath, ma in questo caso mi dice di selezionarli tutti attraverso select -->
					</span>
	</xsl:template>

<!-- SOTTOLINEATURE --> 
    <xsl:template match="tei:hi[@rend = 'underline']"> <!-- crea un modello che recupera tramite una espressione XPath tutti gli hi che hanno come rend, quindi come visualizzazione dell'elemento un underline-->
        <u><xsl:apply-templates /></u> <!-- applica regole del modello per l'elemento corrente o per i nodi figli dell'elemento corrente  -->
    </xsl:template>

<!--ABBREVIAZIONI -->
<xsl:template match="tei:abbr"> <!-- crea un modello che presenta come attributo match in cui si rappresenta un pattern che indica l'elemento su cui applicare il modello -->
    <span class="abbreviazioni">
    <xsl:value-of select="."/></span> <!-- resttiuisce il contenuto del nodo selezionato attraverso l'espressione XPath, in questo caso chiedo di selezionarli tutti -->
</xsl:template>

<!-- ESPANSIONI -->
<xsl:template match="tei:expan"> <!-- mi permette di creare un modello. Utilizzo l'attributo match, ma possiamo avere anche name, priority ecc... al cui interno ho un pattern che indica l'elemento su cui vogliamo appplicare il modello -->
    <span class="espansioni"> <!-- si recupera lo span con quella classe da HTML -->
    <xsl:value-of select="."/></span> <!-- si selezionano tutti -->
</xsl:template>

<!-- SOSTITUZIONI -->
<xsl:template match="tei:choice"> <!-- prendiamo choice. Abbiamo la creazione di un modello- Mathc indica un pattern che indica l'elemento su cui applicare il modello -->
    <xsl:element name="span"> <!-- creiamo un elemento con name span -->
        <xsl:attribute name="class">choice</xsl:attribute> <!-- creiamo un attributo per quell'elemento che è choice -->
        <xsl:element name="span"> 
            <xsl:attribute name="class">sic</xsl:attribute> <!-- poi creiamo l'attributo per quell'elemento span ovvero sic -->
            <xsl:value-of select="tei:sic" /> <!-- value of restituisce il contenuto del nodo che ho selezionato tramite una espressione XPath-->
        </xsl:element>
        <xsl:element name="span">
            <xsl:attribute name="class">corr</xsl:attribute> <!-- poi creiamo l'attributo per l'elemento span corr -->
            <xsl:value-of select="tei:corr" /> <!-- restituisce il contenuto del nodo selezionato sulla base di una espressione XPtah, qui mi recupera corr -->
        </xsl:element>
    </xsl:element>
</xsl:template>

    <!-- LINE BEGINNING --> 
    <xsl:template match="tei:lb">
    <br/>
        <xsl:element name="span">
            <xsl:attribute name="id">
                <xsl:value-of select="@facs"/>
            </xsl:attribute>
            <xsl:value-of select="@n" /> ➛
            
        </xsl:element>
    </xsl:template>


<!-- SUPPLIED -->
<xsl:template match="tei:supplied"> <!-- creo un modello attraverso xsl:template con l'attributo match che presenta un'espressione XPath dove recupera l'elemento TEI supplied -->
    <span class="aggiunte1"> <!-- supllied è un elemento o frase aggiunto/a nel testo -->
        <xsl:apply-templates /> <!-- applica una regola di modello all'elemento corrente o ai nodi figlio dell'elemento corrente -->
    </span> <!-- span è un contenitore, una sorta di div -->
</xsl:template>

 <xsl:template match="tei:add"> <!-- add = frase o testo aggiunto dall'autore che differisce dalle aggiunte del curatore -->
    <span class="aggiunteAutore1">
        <xsl:choose> <!-- mi permette di definire condizioni multiple e il suo content model è costituito da uno o più elementi when e opzionale è otherwise -->
            <xsl:when test="current()[@place='margin']">
                <add><b>&lt;</b><i>(<xsl:apply-templates />)<b>&gt;</b></i></add>
            </xsl:when>
        <xsl:otherwise> <!-- specifica un'azione predefinita per choose e avrà luogo quando non si applica nessuna delle condizioni presenti in whem -->
         <add><b>^</b><i>(<xsl:apply-templates />)</i></add>
        </xsl:otherwise>
    </xsl:choose></span>
</xsl:template>

<!-- GLOTTONIMO --> <!-- quindi in HTML avremo span class glottonimo e span class lang assieme -->
<xsl:template match="tei:lang"> <!-- match indica un pattern di un elemento su cui applicare il modello --> <!-- glottonimo è un nome proprio --> <!-- xsl template si utilizza per creare un modello -->
    <span class="glottonimo"> <!-- si recupera dall'elemento lang della TEI presente in XML. Per fare ciò facciamo un collegamento XPath -->
    <xsl:element name="span"> <!-- si crea un elemento che prende il nome di span -->
        <xsl:attribute name="class">lang</xsl:attribute> <!-- si crea un attributo class all'elemento span che prend di riferimento lang che recupera dall'xml  -->
        <xsl:apply-templates /> <!-- applica una regola di modello all'elemento corrente o ai nodi figlio dell'elemento corrente -->
    </xsl:element></span>
</xsl:template> <!-- il vlore dell'attributo match per xsl template è una espressione XPath. Se tu avessi match="/" definirebbe l'intero documento -->

<!-- GENERARE MAPPE --> <!-- su HTML trovi parte usemap che ti prmette di creare una mappa cliccabile -->
        <xsl:template match="tei:surface"> <!-- qui diamo vita ad un modello dove con match abbiamo una espressione XPath che recupera il nostro surface, elemento TEI presente in XML -->
            <map class="Map"> <!-- recupero Map da HTML -->
                <xsl:attribute name="name"> <!-- creo un attributo per l'elemento che definisco con name -->
                    <xsl:value-of select="concat('mappa_', @xml:id)"/> <!-- M_20/M_21. Con concat "attacca 'mappa_' a xml:id e diventa 'mappa_M_20' e M_21-->
                </xsl:attribute>
                <xsl:for-each select="tei:zone"> <!-- per ogni zona che recupero dall'XML -->
                    <xsl:element name="area">   <!-- crea un elemento area, con questo funziona la mappa. QUESTO E' PER OGNI ZONA, QUINDI PER OGNI RIGA-->
                        <xsl:attribute name="id"> <!-- che ha un id-->
                            <xsl:value-of select="concat('riga_', @xml:id)"/> <!-- seleziona ciascuna riga con quel determinato id univoco per l'elemento -->       
                        </xsl:attribute>
                        <xsl:attribute name="shape"> <!-- la zona che sto creando è rettangolare-->
                            <xsl:text>rect</xsl:text> <!-- ogni zona è rettangolare -->
                        </xsl:attribute>
                        <xsl:attribute name="coords"> <!-- creo un attributo coord, che sono lecoordinate. -->
                            <xsl:value-of select="@ulx"/>,<xsl:value-of select="@uly"/>,<xsl:value-of select="@lrx"/>,<xsl:value-of select="@lry"/> <!-- seleziono le coordinate -->
                        </xsl:attribute>
                        <xsl:attribute name="onmouseover"> <!-- creo un attributo che riprenderà la funzione gestoreEvidenzia quando passo col mouse sopra -->
                            <xsl:value-of select="concat('gestoreEvidenzia( &quot;#', @xml:id, '&quot;)' )"/> <!-- questo recupera dall'HTML &34; #xml:id, &#34 -->
                        </xsl:attribute>
                        <xsl:attribute name="onmouseout"> <!-- poi abbiamo l'attributo onmouseout che richiama la funzione gestoreDisEvidenzia, quindi quando tolgo il mouse da quella riga toglie l'evidenziaqzione -->
                            <xsl:value-of select="concat('gestoreDisEvidenzia( &quot;#', @xml:id, '&quot;)' )"/>
                        </xsl:attribute>
                    </xsl:element>
                </xsl:for-each>
            </map>
        </xsl:template>   

<!--BIBLIOGRAFIA-->

    <xsl:template match="tei:listBibl"> <!-- creo un modello che tramite l'attributo match mi crei una espressione XPath che recuperi listBibl elemento TEI da XML -->
    <xsl:for-each select="current()/tei:bibl"> <!-- current ritorna un set di nodi contenente solo il nodo corrente -->
      <xsl:element name="li">
        <xsl:for-each select="current()//tei:author">
          <xsl:element name="span">
              <xsl:for-each select="current()//tei:forename">
                <xsl:apply-templates />
              </xsl:for-each>
              <xsl:text> </xsl:text> <!-- permette di inserire una stringa di testo nell'albero di output ed è molto utile per eliminare spazi e a capo -->
              <xsl:for-each select="current()//tei:surname">
              	<xsl:apply-templates /> <!-- applica regole al modello per l'elemento corrente o per i nodi figli dell'elemento corrente -->
              </xsl:for-each>
            </xsl:element>
          <xsl:text>, </xsl:text>
        </xsl:for-each>

        <xsl:element name="span"> <!-- qui viene creato un elemento span -->
          <xsl:element name="i"> <!-- al cui interno ritroveremo un altro elemento con name i-->
            <b><xsl:for-each select="current()//tei:title"> <!-- select definsce l'espressione -->
              <xsl:apply-templates /> <!-- applica le regole di modello ai all'elemento corrente o ai nodi figli dell'elemento corrente -->
              <xsl:text>, </xsl:text> <!-- xsl:text mi definisce una stringa di testo ed è utile per eliminari spazi oppure gli a capo -->
            </xsl:for-each></b>
          </xsl:element>
        </xsl:element>

        <xsl:element name="span">
          <xsl:for-each select="current()//tei:pubPlace"> <!-- per ognni pubplace che trovi all'interno di listBibl-->
            <xsl:apply-templates /> <!-- applica le regole di modello per il nodo corrente o ai nodi figli dell'elemento corrente -->
            <xsl:text>- </xsl:text> <!-- dopodiché utilizziamo questo per avere una stringa di testo. Anziché avere spazio potrai avere Roma-Bari -->
          </xsl:for-each>
        </xsl:element>

        <xsl:element name="span"> <!-- creo un elemento span -->
          <i><xsl:apply-templates select="current()//tei:date" /></i> <!-- select mi permette di dare vita ad una espressione XPath, una sorta di percorso che recupero da XML -->
          <xsl:text>. </xsl:text> <!-- xsl:text mi permette di dare vita ad una stringa di testo. Utile se si vogliono eliminare spazi o gli a capo  -->
        </xsl:element>

      </xsl:element>
    </xsl:for-each>
  </xsl:template>

  <!-- GRASSETTO -->
    <xsl:template match="tei:hi[@rend = 'bold']"> <!-- creo un modello attraverso template che ha attributo match in cui abbiamo l'espressione XPath che mi va a recuperare dall'xml tutti gli elementi generici hi che hanno rend = bold. Rend è molto simile a rendition -->
        <b> <!-- sono tutte le parole scritte in grassetto che ritrovi ad esempio nel glossario -->
        <xsl:apply-templates />
        </b>
    </xsl:template>

    <!-- RIFERIMENTI -->

    <xsl:template match="tei:editionStmt"> <!-- qui viene recuperata tramite una espressione XPath editionStmt from XML -->
        <p><b><xsl:value-of select="current()/tei:edition"></xsl:value-of></b></p> <!-- recupero edition /current() è come dire select="." -->
        <p>Progetto a cura di: <b><xsl:value-of select="current()/tei:respStmt/tei:name[@xml:id='AndreM']"></xsl:value-of></b> e <b><xsl:value-of select="current()/tei:respStmt/tei:name[@xml:id='KateB']"></xsl:value-of></b></p>
        <p>Coordinato da: <b><xsl:value-of select="current()/tei:respStmt/tei:name[@xml:id='AMarioDG']"></xsl:value-of></b></p> 
    </xsl:template> <!-- in questo caso recupera dalla resoStmt il name con quel determinato id univoco. Current() è una funzione che mi permette di fare rfierimento a quel determinato nodo corrente -->

</xsl:stylesheet>


<!-- i template XSLT possono avere due forme:
template rules: specificano una regola con pattern-matching come xsl:apply-templates
named templates: specificano regole che possono essere chiamate esplicitamente -->

<!-- XSL extensible stylesheet language: incorpora tre linguaggi: XPath (XML Path), XSL-T e XSL FORMATTING OBJECTS
XSL-T mi permette di trasformare un documento XML in qualsiasi altro formato come HTML, ODT, EPUB
XPath è una sorta di espressione che viene richiamata all'interno dell'XSL-T per selezionare le parti di un documento XML
XSL FORMATTING OBJECTS applicazione degli stili e della resa grafica -->

<!-- XSL-T è una sorta di processore che legge il documento XML e crea l'albero corrispondente
Poi percorre tutti i nodi dell'albero
Confronta ogni nodo con le regole presenti nel foglio di stile
Produce l'output
Restituisce in pratica un albero di output -->

<!-- XPath è una expression language fondamentale per realizzare fogli di stile XSL
SELEZIONA nodi di un documento XML 
Fare MATCH nell'albero SOURCE per selezionare il corretto template (xsl:template match="")
Manipola dati attraverso funzioni -->

<!-- Le espressioni XPath permettono di navigare l'albero del documento XML utilizzando ASSI DI NAVIGAZIONE -->