# soa-priklad
SOA (Service-Oriented Architecture) - priklad

priklad sluzieb pre umyvaren aut
- vyber ponuky sluzieb, vyber vozidla, vytvorenie vozidla

Nastroje, ktore som pouzil pri vytvarani prikladu na lokalnom PC:
- Oracle SOA Suite 12.2.1.3.0 QuickStart
- Oracle WebLogic Server 12cR2 (12.2.1.3)
- Oracle JDeveloper 12c
- Oracle Database Express Edition (XE) Release 18.4.0.0.0 (18c)

SOA aplikacia: soa-priklad<br>
SOA projekt: soa-autoumyvaren

V projekte pouzivam vyssie uvedenu databazu Oracle Database Express Edition
- vytvoril som noveho pouzivatela C##MARIO
- hostname: localhost
- port: 1521
- SID: xe
- username: C##MARIO
- connection: C##MARIO@//localhost:1521/xe
- skripty na vytvorenie tabuliek Vozidla a Ponuka su v adresari soa-priklad/db

XML Schema
- vozidlo.xsd
- ponuka.xsd

WSDL
- rozhranie: synchronne
- VytvorVozidloService.wsdl
- VyberVozidloService.wsdl
- VyberPonukaService.wsdl

BPEL Process
- specifikacia: BPEL 2.0
- typ: Web Service
- exponovane ako SOAP sluzba
- VytvorVozidloBPELProcess.bpel
- VyberVozidloBPELProcess.bpel
- VyberPonukaBPELProcess.bpel

Database Adapter
- referencne mena: VozidlaDbReference, PonukaDbReference
- pripojenie: VozidlaConn
- meno: C##MARIO
- ovladac: oracle.jdbc.OracleDriver
- pripojovaci retazec: jdbc:oracle:thin:@localhost:1521:XE
- JNDI Name: eis/DB/VozidlaConn

Process Flow
- Assign_VlozVozidlo
- Invoke_VlozVozidlo
- Assign_Output<br><br>

- Assign_VyberVozidlo
- Invoke_VyberVozidlo
- Assign_Output<br><br>

- Assign_VyberPonuka
- Invoke_VyberPonuka
- Assign_Output

Deployment<br>
konkretne WSDL nasadene na Oracle WebLogic Server:<br> 
http://localhost:7001/soa-infra/services/default/soa-autoumyvaren/VytvorVozidloBPELProcess_ep?WSDL
http://localhost:7001/soa-infra/services/default/soa-autoumyvaren/VyberVozidloBPELProcess_ep?WSDL
http://localhost:7001/soa-infra/services/default/soa-autoumyvaren/VyberPonukaBPELProcess_ep?WSDL
