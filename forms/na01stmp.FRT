   �   !                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            30100  ALES       	Times_Lat                      ..\TABELE\PORZGL.DBF           Porzgl                         Por                            ..\TABELE\PORDET.DBF           Pordet                         Por                            ..\TABELE\ORGGLV.DBF           Orgglv                         ..\TABELE\PTNGLV.DBF           Ptnglv                         ..\TABELE\VALGLV.DBF           Valglv                         Arial                          "PORUDZDBENICA  br."           Arial                          	"Red.br."                      ALLTRIM(Pordet.prz)            Arial                          Pordet.przops                  Arial                          Porzgl.nardat                  Arial                          padl(Porzgl.por,8,"0")                                        Arial                          4padl(Porzgl.org,5,"0")+"    "+alltrim(porzgl.orgops)                                           Arial                          	Times_Lat                      	"strana:"                      _pageno                        	Times_Lat                      	Pordet.jm                      Arial                          Arial                          "Za dobavljaca / per fornitore"                                 3padl(Porzgl.ptn,8,"0")+"   "+alltrim(porzgl.ptnops)                                            Arial                          Arial                          	"Artikal"                      Arial                          "Opis"                         Arial                          
"Kolicina"                     Arial                          "Jed. mere"                    Pordet.narkol                  Arial                          padl(pordet.lin,3,"0")                                        Arial                          Arial                          "Cena por."                    Porzgl.narvrd                  Arial                          Pordet.cnanar                  Arial                          Arial                          #"Buono di ordinazione         num."                             Arial                          "Za magacin / per magazzino"                                    2padl(porzgl.kup,6,"0")+"  "+alltrim(porzgl.kupops)                                             Arial                          porzgl.porops                                                 Times Roman YU                 Arial                          "Za sektor / per ufficio"      Arial                          "Napomena / descrizione"       Arial                           "Datum narudzbe / data di buono"                                Arial                          )"Datum ocek.prijema / data di ricevimeno"                       porzgl.dospdat                                                Arial                          Arial                          "Num."                         Arial                          "Codice di articolo"           Arial                          "Nome di articolo"             Arial                          
"Quantita"                     Arial                          "Unita"                        Arial                          "Prezzi di mercato"            Arial                          "Ukupna vrednost naloga:"      Arial                          "Totale di ordine"             Arial                          "din"                          Arial                          "Nalog dao:"                   Arial                          "Ordinatore"                   porzgl.prev                    Times Roman YU                 Arial                          "Nalog odobrio"                Arial                          "Nalog uneo"                   Arial                          "Iscrivere"                    Arial                          "Approvare"                    repmat.nazivita                Arial                          	Times_Lat                      	"pagina:"                      3padl(porzgl.kup,6,"0")+"  "+alltrim(orgglv1.opsita)                                            Arial                          "@B"                           	Times_Lat                      Arial                          Arial                          Arial                          Arial                          Arial                          	Times_Lat                      Arial                          Times Roman YU                 Times Roman YU                 Arial                          dataenvironment                �Left = -8
Top = 102
Width = 792
Height = 415
AutoOpenTables = .T.
AutoCloseTables = .T.
InitialSelectedAlias = "Porzgl"
Name = "dataenvironment"
          �PROCEDURE Init
set deleted on
set century on
ENDPROC
PROCEDURE Destroy
*- [CONVERTER] Reset tables for compatibilityTHIS.OpenTablesTHIS.Init
ENDPROC
                                    ���   �   �                         �   %   r       �      �           �  U    G � G � U   
 ��  � �
 ��  � � U  THIS
 OPENTABLES INIT Init,     �� Destroy?     ��1 a a 2 � � 2                       .         L   �       )   �                                         cursor                        Left = 147
Top = 15
Width = 90
Height = 90
Alias = "porzgl"
CursorSource = c:\gesim\data\porzgl.dbf
Name = "Cursor1"
                                                                                                                                                                           cursor                         |Left = 301
Top = 20
Width = 90
Height = 90
Alias = "pordet"
CursorSource = c:\gesim\data\pordet.dbf
Name = "Cursor2"
      cursor                         wLeft = 136
Top = 208
Width = 90
Height = 90
Alias = "ptnglv"
CursorSource = ..\data\ptnglv.dbf
Name = "Cursor3"
           relation                       �ParentAlias = "porzgl"
RelationalExpr = "por"
ChildAlias = "pordet"
ChildOrder = "por"
OneToMany = .T.
Name = "Relation1"
                                   relation                       oParentAlias = "porzgl"
RelationalExpr = "ptn"
ChildAlias = "ptnglv"
ChildOrder = "ptn"
Name = "Relation2"
                   cursor                         wLeft = 348
Top = 198
Width = 90
Height = 90
Alias = "valglv"
CursorSource = ..\data\valglv.dbf
Name = "Cursor6"
           relation                       oParentAlias = "porzgl"
RelationalExpr = "val"
ChildAlias = "valglv"
ChildOrder = "val"
Name = "Relation4"
                   cursor                         |Left = 470
Top = 76
Width = 90
Height = 90
Alias = "repmat"
CursorSource = c:\gesim\data\repmat.dbf
Name = "Cursor5"
      relation                       qParentAlias = "pordet"
RelationalExpr = "prz"
ChildAlias = "repmat"
ChildOrder = "sifra"
Name = "Relation5"
                 cursor                         |Left = 10
Top = 140
Width = 90
Height = 90
Alias = "orgglv"
CursorSource = c:\gesim\data\orgglv.dbf
Name = "Cursor4"
      cursor                         ~Left = 492
Top = 224
Width = 90
Height = 90
Alias = "orgglv1"
CursorSource = c:\gesim\data\orgglv.dbf
Name = "Cursor7"
                                     relation                       pParentAlias = "porzgl"
RelationalExpr = "kup"
ChildAlias = "orgglv1"
ChildOrder = "org"
Name = "Relation3"
                  relation                       oParentAlias = "porzgl"
RelationalExpr = "org"
ChildAlias = "orgglv"
ChildOrder = "org"
Name = "Relation6"
                    