/* Verilog module written by vlog2Verilog (qflow) */

module apple_1_WozMon_PIA(
    input clk,
    input reset,
    output [15:0] AB,
    input [7:0] DI,
    output [7:0] DO,
    output WE,
    input IRQ,
    input NMI,
    input RDY,
    input kbd_rdy,
    output kbd_ack,
    input [6:0] kbd_data,
    output dsp_rdy,
    input dsp_ack,
    output [6:0] dsp_data
);

wire vdd = 1'b1;
wire gnd = 1'b0;

wire _1677_ ;
wire _1257_ ;
wire _588_ ;
wire _168_ ;
wire _800_ ;
wire _60_ ;
wire _1486_ ;
wire _1066_ ;
wire _397_ ;
wire _1295_ ;
wire \u_cpu.adj_bcd  ;
wire _2101_ ;
wire _1315__bF$buf0 ;
wire _1315__bF$buf1 ;
wire _1315__bF$buf2 ;
wire _1315__bF$buf3 ;
wire _703_ ;
wire _1389_ ;
wire _2330_ ;
wire _19_ ;
wire _1601_ ;
wire _932_ ;
wire _512_ ;
wire _1198_ ;
wire _1830_ ;
wire _1410_ ;
wire _741_ ;
wire _321_ ;
wire _57_ ;
wire _970_ ;
wire _550_ ;
wire _130_ ;
wire _2004_ ;
wire \u_cpu.CO  ;
wire _606_ ;
wire _2233_ ;
wire _1924_ ;
wire _1504_ ;
wire _835_ ;
wire _415_ ;
wire _95_ ;
wire _2042_ ;
wire _1733_ ;
wire _1313_ ;
wire _644_ ;
wire _224_ ;
wire _2271_ ;
wire _1962_ ;
wire _1542_ ;
wire _1122_ ;
wire _873_ ;
wire _453_ ;
wire _2327_ ;
wire _2080_ ;
wire _929_ ;
wire _509_ ;
wire _1771_ ;
wire _1351_ ;
wire _682_ ;
wire _262_ ;
wire _2136_ ;
wire \u_cpu.adc_sbc  ;
wire _1827_ ;
wire _1407_ ;
wire _738_ ;
wire _318_ ;
wire _1580_ ;
wire _1160_ ;
wire _491_ ;
wire _1636_ ;
wire _1216_ ;
wire _967_ ;
wire _547_ ;
wire _127_ ;
wire _2174_ ;
wire _1865_ ;
wire _1445_ ;
wire _1025_ ;
wire _776_ ;
wire _356_ ;
wire _1674_ ;
wire _1254_ ;
wire _585_ ;
wire _165_ ;
wire _2039_ ;
wire _1483_ ;
wire _1063_ ;
wire _394_ ;
wire \u_cpu.I  ;
wire _2268_ ;
wire _1959_ ;
wire _1539_ ;
wire _1119_ ;
wire _1292_ ;
wire _2077_ ;
wire _1768_ ;
wire _1348_ ;
wire [1:0] \u_cpu.dst_reg  ;
wire _679_ ;
wire _259_ ;
wire [7:0] Data_In ;
wire \u_cpu.HC  ;
wire _1997_ ;
wire _1577_ ;
wire _1157_ ;
wire _488_ ;
wire _700_ ;
wire _1386_ ;
wire _297_ ;
wire _16_ ;
wire _1195_ ;
wire _54_ ;
wire _2001_ ;
wire _603_ ;
wire _1289_ ;
wire _2230_ ;
wire _1921_ ;
wire _1501_ ;
wire _832_ ;
wire _412_ ;
wire _92_ ;
wire _1098_ ;
wire _1730_ ;
wire _1310_ ;
wire _641_ ;
wire _221_ ;
wire _870_ ;
wire _450_ ;
wire _2324_ ;
wire _926_ ;
wire _506_ ;
wire _2133_ ;
wire _1824_ ;
wire _1404_ ;
wire _735_ ;
wire _315_ ;
wire _1633_ ;
wire _1213_ ;
wire _964_ ;
wire _544_ ;
wire _124_ ;
wire _2171_ ;
wire IRQ ;
wire [7:0] \u_cpu.ADD  ;
wire _1862_ ;
wire _1442_ ;
wire _1022_ ;
wire _773_ ;
wire _353_ ;
wire _2227_ ;
wire _1918_ ;
wire _829_ ;
wire _409_ ;
wire _89_ ;
wire _1671_ ;
wire _1251_ ;
wire _582_ ;
wire _162_ ;
wire _2036_ ;
wire \u_cpu.res  ;
wire _1727_ ;
wire _1307_ ;
wire _638_ ;
wire _218_ ;
wire _1480_ ;
wire _1060_ ;
wire _391_ ;
wire _2265_ ;
wire _1956_ ;
wire _1536_ ;
wire _1116_ ;
wire \u_cpu.u_ALU8.BI7  ;
wire _867_ ;
wire _447_ ;
wire _2074_ ;
wire _1765_ ;
wire _1345_ ;
wire _676_ ;
wire _256_ ;
wire _1994_ ;
wire _1574_ ;
wire _1154_ ;
wire _485_ ;
wire WE ;
wire _1383_ ;
wire _294_ ;
wire _2168_ ;
wire \u_cpu.AZ  ;
wire _13_ ;
wire _1859_ ;
wire _1439_ ;
wire _1019_ ;
wire _1192_ ;
wire _1668_ ;
wire _1248_ ;
wire _999_ ;
wire _579_ ;
wire _159_ ;
wire _51_ ;
wire _1897_ ;
wire _1477_ ;
wire _1057_ ;
wire _388_ ;
wire \u_cpu.CI  ;
wire _600_ ;
wire _1286_ ;
wire _197_ ;
wire _1095_ ;
wire _1325__bF$buf0 ;
wire _1325__bF$buf1 ;
wire _1325__bF$buf2 ;
wire _1325__bF$buf3 ;
wire _1325__bF$buf4 ;
wire _2321_ ;
wire _7_ ;
wire RDY ;
wire _923_ ;
wire _503_ ;
wire _1189_ ;
wire _2130_ ;
wire _1821_ ;
wire _1401_ ;
wire _732_ ;
wire _312_ ;
wire _48_ ;
wire _1630_ ;
wire _1210_ ;
wire _1920__bF$buf0 ;
wire _1920__bF$buf1 ;
wire _1920__bF$buf2 ;
wire _1920__bF$buf3 ;
wire _1920__bF$buf4 ;
wire _961_ ;
wire _541_ ;
wire _121_ ;
wire _770_ ;
wire _350_ ;
wire _2224_ ;
wire _1915_ ;
wire _826_ ;
wire _406_ ;
wire _86_ ;
wire _2033_ ;
wire _1724_ ;
wire _1304_ ;
wire _635_ ;
wire _215_ ;
wire \u_cpu.C  ;
wire _2262_ ;
wire _1953_ ;
wire _1533_ ;
wire _1113_ ;
wire _2354__4_bF$buf0 ;
wire _2354__4_bF$buf1 ;
wire _2354__4_bF$buf2 ;
wire _2354__4_bF$buf3 ;
wire _2354__4_bF$buf4 ;
wire _2354__4_bF$buf5 ;
wire _2354__4_bF$buf6 ;
wire _864_ ;
wire _444_ ;
wire _2318_ ;
wire _2071_ ;
wire _1762_ ;
wire _1342_ ;
wire _673_ ;
wire _253_ ;
wire _2127_ ;
wire _1818_ ;
wire _729_ ;
wire _309_ ;
wire _1991_ ;
wire _1571_ ;
wire _1151_ ;
wire _482_ ;
wire _1627_ ;
wire _1207_ ;
wire _958_ ;
wire _538_ ;
wire _118_ ;
wire _1380_ ;
wire _291_ ;
wire _2165_ ;
wire _10_ ;
wire _1856_ ;
wire _1436_ ;
wire _1016_ ;
wire \u_cpu.u_ALU8.AI7  ;
wire _767_ ;
wire _347_ ;
wire _1665_ ;
wire _1245_ ;
wire _996_ ;
wire _576_ ;
wire _156_ ;
wire _1894_ ;
wire _1474_ ;
wire _1054_ ;
wire _385_ ;
wire _2259_ ;
wire _1283_ ;
wire _194_ ;
wire _2068_ ;
wire _1759_ ;
wire _1339_ ;
wire _1092_ ;
wire [6:0] kbd_data ;
wire _2297_ ;
wire \u_cpu.NMI_edge  ;
wire _1988_ ;
wire _1568_ ;
wire _1148_ ;
wire _899_ ;
wire _479_ ;
wire [7:0] \u_cpu.AXYS[2]  ;
wire _1797_ ;
wire _1377_ ;
wire _288_ ;
wire _4_ ;
wire _920_ ;
wire _500_ ;
wire _1186_ ;
wire \u_cpu.u_ALU8.BCD  ;
wire [7:0] \u_cpu.DIHOLD  ;
wire _45_ ;
wire _1328__bF$buf0 ;
wire _1328__bF$buf1 ;
wire _1328__bF$buf2 ;
wire _1328__bF$buf3 ;
wire _1328__bF$buf4 ;
wire _1328__bF$buf5 ;
wire _2221_ ;
wire _1912_ ;
wire _823_ ;
wire _403_ ;
wire _83_ ;
wire _1089_ ;
wire _2030_ ;
wire _1721_ ;
wire _1301_ ;
wire _632_ ;
wire _212_ ;
wire _1923__bF$buf0 ;
wire _1923__bF$buf1 ;
wire _1923__bF$buf2 ;
wire _1923__bF$buf3 ;
wire _1950_ ;
wire _1530_ ;
wire _1110_ ;
wire _861_ ;
wire _441_ ;
wire _2315_ ;
wire _917_ ;
wire _670_ ;
wire _250_ ;
wire _2124_ ;
wire _1815_ ;
wire _726_ ;
wire _306_ ;
wire \u_cpu.inc  ;
wire [7:0] _2353_ ;
wire _1624_ ;
wire _1204_ ;
wire _955_ ;
wire _535_ ;
wire _115_ ;
wire _2162_ ;
wire \u_cpu.shift  ;
wire _1853_ ;
wire _1433_ ;
wire _1013_ ;
wire _764_ ;
wire _344_ ;
wire _2218_ ;
wire _1909_ ;
wire _1662_ ;
wire _1242_ ;
wire _993_ ;
wire _573_ ;
wire _153_ ;
wire _2027_ ;
wire [3:0] \u_cpu.op  ;
wire _1718_ ;
wire _629_ ;
wire _209_ ;
wire _1891_ ;
wire _1471_ ;
wire _1051_ ;
wire _382_ ;
wire _2256_ ;
wire _1947_ ;
wire _1527_ ;
wire _1107_ ;
wire _858_ ;
wire _438_ ;
wire _1280_ ;
wire _191_ ;
wire _2065_ ;
wire _1756_ ;
wire _1336_ ;
wire _667_ ;
wire _247_ ;
wire _2294_ ;
wire _1985_ ;
wire _1565_ ;
wire _1145_ ;
wire _896_ ;
wire _476_ ;
wire clk_bF$buf0 ;
wire clk_bF$buf1 ;
wire clk_bF$buf2 ;
wire \u_cpu.bit_ins  ;
wire clk_bF$buf3 ;
wire clk_bF$buf4 ;
wire clk_bF$buf5 ;
wire clk_bF$buf6 ;
wire clk_bF$buf7 ;
wire clk_bF$buf8 ;
wire clk_bF$buf9 ;
wire _1794_ ;
wire _1374_ ;
wire \u_cpu.cli  ;
wire _285_ ;
wire _2159_ ;
wire [7:0] \u_cpu.ABL  ;
wire _1_ ;
wire _1183_ ;
wire _1659_ ;
wire _1239_ ;
wire _2197_ ;
wire _42_ ;
wire _1888_ ;
wire _1468_ ;
wire _1048_ ;
wire _799_ ;
wire _379_ ;
wire _1697_ ;
wire _1277_ ;
wire _188_ ;
wire _820_ ;
wire _400_ ;
wire _80_ ;
wire _1086_ ;
wire _2312_ ;
wire _914_ ;
wire _2121_ ;
wire _1812_ ;
wire _723_ ;
wire _303_ ;
wire _2350_ ;
wire _39_ ;
wire _1621_ ;
wire _1201_ ;
wire _952_ ;
wire _532_ ;
wire _112_ ;
wire _1850_ ;
wire _1430_ ;
wire _1010_ ;
wire _761_ ;
wire _341_ ;
wire _2215_ ;
wire clk ;
wire _1906_ ;
wire _817_ ;
wire _77_ ;
wire _990_ ;
wire _570_ ;
wire _150_ ;
wire _2024_ ;
wire _1715_ ;
wire _626_ ;
wire _206_ ;
wire _2253_ ;
wire _1944_ ;
wire _1524_ ;
wire _1104_ ;
wire _855_ ;
wire _435_ ;
wire _2309_ ;
wire _2062_ ;
wire _1753_ ;
wire _1333_ ;
wire _664_ ;
wire _244_ ;
wire _2118_ ;
wire _2291_ ;
wire _1809_ ;
wire _1982_ ;
wire _1562_ ;
wire _1142_ ;
wire _893_ ;
wire _473_ ;
wire _2347_ ;
wire _1618_ ;
wire _949_ ;
wire _529_ ;
wire _109_ ;
wire _1791_ ;
wire _1371_ ;
wire _282_ ;
wire _2156_ ;
wire _1847_ ;
wire _1427_ ;
wire _1007_ ;
wire _758_ ;
wire _338_ ;
wire _1180_ ;
wire \u_cpu.sed  ;
wire _1656_ ;
wire _1236_ ;
wire _987_ ;
wire _567_ ;
wire _147_ ;
wire \u_cpu.Z  ;
wire _1634__bF$buf0 ;
wire _1634__bF$buf1 ;
wire _1634__bF$buf2 ;
wire _1634__bF$buf3 ;
wire _1634__bF$buf4 ;
wire _1634__bF$buf5 ;
wire _2194_ ;
wire \u_cpu.backwards  ;
wire _1885_ ;
wire _1465_ ;
wire _1045_ ;
wire _796_ ;
wire _376_ ;
wire _1694_ ;
wire _1274_ ;
wire _1417__bF$buf0 ;
wire _1417__bF$buf1 ;
wire _1417__bF$buf2 ;
wire _1417__bF$buf3 ;
wire _1417__bF$buf4 ;
wire _1417__bF$buf5 ;
wire _1417__bF$buf6 ;
wire _1417__bF$buf7 ;
wire _1417__bF$buf8 ;
wire _1417__bF$buf9 ;
wire _185_ ;
wire _2059_ ;
wire _1083_ ;
wire _2288_ ;
wire _1979_ ;
wire _1559_ ;
wire _1139_ ;
wire _2097_ ;
wire _1788_ ;
wire _1368_ ;
wire _699_ ;
wire _279_ ;
wire _911_ ;
wire _1597_ ;
wire _1177_ ;
wire _720_ ;
wire _300_ ;
wire _36_ ;
wire \u_cpu.AN  ;
wire _2212_ ;
wire _1903_ ;
wire _814_ ;
wire _1196__bF$buf0 ;
wire _1196__bF$buf1 ;
wire _1196__bF$buf2 ;
wire _1196__bF$buf3 ;
wire _1196__bF$buf4 ;
wire _1196__bF$buf5 ;
wire _1196__bF$buf6 ;
wire _74_ ;
wire _1196__bF$buf7 ;
wire _1196__bF$buf8 ;
wire _2021_ ;
wire _1712_ ;
wire _623_ ;
wire _203_ ;
wire _2250_ ;
wire _1941_ ;
wire _1521_ ;
wire _1101_ ;
wire _852_ ;
wire _432_ ;
wire _2306_ ;
wire \u_cpu.index_y  ;
wire _908_ ;
wire _1750_ ;
wire _1330_ ;
wire _661_ ;
wire _241_ ;
wire _2115_ ;
wire _1806_ ;
wire _717_ ;
wire _890_ ;
wire _470_ ;
wire _2344_ ;
wire _1615_ ;
wire _946_ ;
wire _526_ ;
wire _106_ ;
wire \u_cpu.clc  ;
wire _2153_ ;
wire _1844_ ;
wire _1424_ ;
wire _1004_ ;
wire [7:0] \u_cpu.DIMUX  ;
wire _755_ ;
wire _335_ ;
wire _2209_ ;
wire _1653_ ;
wire _1233_ ;
wire _984_ ;
wire _564_ ;
wire _144_ ;
wire _2018_ ;
wire _2191_ ;
wire _1709_ ;
wire _1882_ ;
wire _1462_ ;
wire _1042_ ;
wire _793_ ;
wire _373_ ;
wire _2247_ ;
wire _1938_ ;
wire _1518_ ;
wire _849_ ;
wire _429_ ;
wire _1691_ ;
wire _1271_ ;
wire _182_ ;
wire _2056_ ;
wire _1747_ ;
wire _1327_ ;
wire _658_ ;
wire _238_ ;
wire _1080_ ;
wire _2285_ ;
wire _1976_ ;
wire _1556_ ;
wire _1136_ ;
wire _887_ ;
wire _467_ ;
wire _2094_ ;
wire _1785_ ;
wire _1365_ ;
wire _696_ ;
wire _276_ ;
wire \u_cpu.plp  ;
wire _1594_ ;
wire _1174_ ;
wire _2188_ ;
wire _33_ ;
wire _1879_ ;
wire _1459_ ;
wire _1039_ ;
wire _1688_ ;
wire _1268_ ;
wire _599_ ;
wire _179_ ;
wire _1900_ ;
wire _811_ ;
wire _71_ ;
wire _1497_ ;
wire _1077_ ;
wire _620_ ;
wire _200_ ;
wire _2303_ ;
wire _905_ ;
wire _2112_ ;
wire _1345__bF$buf0 ;
wire _1345__bF$buf1 ;
wire _1345__bF$buf2 ;
wire _1345__bF$buf3 ;
wire [7:0] \u_cpu.IRHOLD  ;
wire _1803_ ;
wire _714_ ;
wire _2341_ ;
wire _1612_ ;
wire _943_ ;
wire _523_ ;
wire _103_ ;
wire _2150_ ;
wire _1841_ ;
wire _1421_ ;
wire _1001_ ;
wire _752_ ;
wire _332_ ;
wire _2206_ ;
wire _808_ ;
wire _68_ ;
wire _1650_ ;
wire _1230_ ;
wire _981_ ;
wire _561_ ;
wire _141_ ;
wire _2015_ ;
wire _1706_ ;
wire _617_ ;
wire _790_ ;
wire _370_ ;
wire _2244_ ;
wire _1935_ ;
wire _1515_ ;
wire _846_ ;
wire _426_ ;
wire _2053_ ;
wire _1744_ ;
wire _1324_ ;
wire _655_ ;
wire _235_ ;
wire _2109_ ;
wire _2282_ ;
wire _1973_ ;
wire _1553_ ;
wire _1133_ ;
wire _884_ ;
wire _464_ ;
wire _2338_ ;
wire _2091_ ;
wire _1609_ ;
wire _1782_ ;
wire _1362_ ;
wire RDY_bF$buf0 ;
wire RDY_bF$buf1 ;
wire RDY_bF$buf2 ;
wire RDY_bF$buf3 ;
wire RDY_bF$buf4 ;
wire RDY_bF$buf5 ;
wire RDY_bF$buf6 ;
wire RDY_bF$buf7 ;
wire _693_ ;
wire _273_ ;
wire _2147_ ;
wire _1838_ ;
wire _1418_ ;
wire _749_ ;
wire _329_ ;
wire _1591_ ;
wire _1171_ ;
wire _1647_ ;
wire _1227_ ;
wire _978_ ;
wire _558_ ;
wire _138_ ;
wire _2185_ ;
wire _30_ ;
wire _1876_ ;
wire _1456_ ;
wire _1036_ ;
wire _787_ ;
wire _367_ ;
wire _1685_ ;
wire _1265_ ;
wire _596_ ;
wire _176_ ;
wire _1494_ ;
wire _1074_ ;
wire _2279_ ;
wire _2088_ ;
wire _1779_ ;
wire _1359_ ;
wire _2300_ ;
wire [2:0] \u_pia_kbd.state  ;
wire _902_ ;
wire _1588_ ;
wire _1168_ ;
wire _499_ ;
wire _1800_ ;
wire _711_ ;
wire _1397_ ;
wire _27_ ;
wire _940_ ;
wire _520_ ;
wire _100_ ;
wire _2354__6_bF$buf0 ;
wire _2354__6_bF$buf1 ;
wire _2354__6_bF$buf2 ;
wire _2354__6_bF$buf3 ;
wire _2354__6_bF$buf4 ;
wire _2203_ ;
wire _805_ ;
wire _65_ ;
wire _2012_ ;
wire _1703_ ;
wire _614_ ;
wire _2241_ ;
wire _1932_ ;
wire _1512_ ;
wire _843_ ;
wire _423_ ;
wire _2050_ ;
wire _1741_ ;
wire _1321_ ;
wire _652_ ;
wire _232_ ;
wire _2106_ ;
wire _708_ ;
wire _1970_ ;
wire _1550_ ;
wire _1130_ ;
wire _881_ ;
wire _461_ ;
wire _2335_ ;
wire [7:0] DO_woz ;
wire _1606_ ;
wire _937_ ;
wire _517_ ;
wire _690_ ;
wire _270_ ;
wire _2144_ ;
wire _1835_ ;
wire _1415_ ;
wire _746_ ;
wire _326_ ;
wire _1644_ ;
wire _1224_ ;
wire _975_ ;
wire _555_ ;
wire _135_ ;
wire _2009_ ;
wire _2182_ ;
wire _1873_ ;
wire _1453_ ;
wire _1033_ ;
wire _784_ ;
wire _364_ ;
wire _2238_ ;
wire _1929_ ;
wire _1509_ ;
wire _1682_ ;
wire _1262_ ;
wire _593_ ;
wire _173_ ;
wire _2047_ ;
wire _1738_ ;
wire _1318_ ;
wire _649_ ;
wire _229_ ;
wire _1491_ ;
wire _1071_ ;
wire _2276_ ;
wire _1967_ ;
wire _1547_ ;
wire _1127_ ;
wire _878_ ;
wire _458_ ;
wire _2085_ ;
wire _1776_ ;
wire _1356_ ;
wire _687_ ;
wire _267_ ;
wire _1585_ ;
wire _1165_ ;
wire _496_ ;
wire _1394_ ;
wire _2179_ ;
wire _24_ ;
wire [5:0] \u_cpu.state  ;
wire _1679_ ;
wire _1259_ ;
wire _2200_ ;
wire _802_ ;
wire _62_ ;
wire _1488_ ;
wire _1068_ ;
wire _399_ ;
wire \u_cpu.N  ;
wire _1700_ ;
wire _611_ ;
wire _1297_ ;
wire _840_ ;
wire _420_ ;
wire _2103_ ;
wire _705_ ;
wire _2332_ ;
wire _1603_ ;
wire _934_ ;
wire _514_ ;
wire _2141_ ;
wire _1832_ ;
wire _1412_ ;
wire _743_ ;
wire _323_ ;
wire _59_ ;
wire _1641_ ;
wire _1221_ ;
wire _972_ ;
wire _552_ ;
wire _132_ ;
wire _2006_ ;
wire _1635__bF$buf0 ;
wire _1635__bF$buf1 ;
wire _1635__bF$buf2 ;
wire _1635__bF$buf3 ;
wire _1635__bF$buf4 ;
wire _608_ ;
wire _1870_ ;
wire _1450_ ;
wire _1030_ ;
wire _781_ ;
wire _361_ ;
wire _2235_ ;
wire _1926_ ;
wire _1506_ ;
wire _2354__1_bF$buf0 ;
wire _2354__1_bF$buf1 ;
wire _2354__1_bF$buf2 ;
wire _2354__1_bF$buf3 ;
wire _2354__1_bF$buf4 ;
wire _2354__1_bF$buf5 ;
wire _837_ ;
wire _417_ ;
wire _97_ ;
wire _590_ ;
wire _170_ ;
wire _2044_ ;
wire _1735_ ;
wire _1315_ ;
wire _646_ ;
wire _226_ ;
wire _2273_ ;
wire _1964_ ;
wire _1544_ ;
wire _1124_ ;
wire _875_ ;
wire _455_ ;
wire _2329_ ;
wire _2082_ ;
wire _1773_ ;
wire _1353_ ;
wire _684_ ;
wire _264_ ;
wire _2138_ ;
wire _1829_ ;
wire _1409_ ;
wire _1582_ ;
wire _1162_ ;
wire _493_ ;
wire _1638_ ;
wire _1218_ ;
wire _969_ ;
wire _549_ ;
wire _129_ ;
wire _1391_ ;
wire _2176_ ;
wire _21_ ;
wire _1867_ ;
wire _1447_ ;
wire _1027_ ;
wire _778_ ;
wire _358_ ;
wire _1676_ ;
wire _1256_ ;
wire _587_ ;
wire _167_ ;
wire _1485_ ;
wire _1065_ ;
wire _396_ ;
wire _1294_ ;
wire _2079_ ;
wire [6:0] dsp_data ;
wire _1999_ ;
wire _1579_ ;
wire _1159_ ;
wire _2100_ ;
wire _702_ ;
wire _1388_ ;
wire _299_ ;
wire _18_ ;
wire _1600_ ;
wire _931_ ;
wire _511_ ;
wire _1197_ ;
wire _740_ ;
wire _320_ ;
wire _56_ ;
wire _2003_ ;
wire _605_ ;
wire _2232_ ;
wire _1923_ ;
wire _1503_ ;
wire _834_ ;
wire _414_ ;
wire _94_ ;
wire _2041_ ;
wire _1732_ ;
wire _1312_ ;
wire _643_ ;
wire _223_ ;
wire _2270_ ;
wire _1961_ ;
wire _1541_ ;
wire _1121_ ;
wire _1638__bF$buf0 ;
wire _1638__bF$buf1 ;
wire _1638__bF$buf2 ;
wire _1638__bF$buf3 ;
wire _872_ ;
wire _452_ ;
wire _2326_ ;
wire _928_ ;
wire _508_ ;
wire _1770_ ;
wire _1350_ ;
wire _681_ ;
wire _261_ ;
wire _2135_ ;
wire _1826_ ;
wire _1406_ ;
wire _737_ ;
wire _317_ ;
wire _490_ ;
wire _1635_ ;
wire _1215_ ;
wire _966_ ;
wire _546_ ;
wire _126_ ;
wire _2173_ ;
wire _1864_ ;
wire _1444_ ;
wire _1024_ ;
wire _775_ ;
wire _355_ ;
wire _2229_ ;
wire _1673_ ;
wire _1253_ ;
wire _584_ ;
wire _164_ ;
wire _2038_ ;
wire _1729_ ;
wire _1309_ ;
wire _1482_ ;
wire _1062_ ;
wire _393_ ;
wire _2267_ ;
wire _1958_ ;
wire _1538_ ;
wire _1118_ ;
wire _1070__bF$buf0 ;
wire _1070__bF$buf1 ;
wire _1070__bF$buf2 ;
wire _1070__bF$buf3 ;
wire _869_ ;
wire _449_ ;
wire _1291_ ;
wire _2076_ ;
wire kbd_rdy ;
wire _1767_ ;
wire _1347_ ;
wire _678_ ;
wire _258_ ;
wire _1996_ ;
wire _1576_ ;
wire _1156_ ;
wire _487_ ;
wire _1385_ ;
wire _296_ ;
wire _15_ ;
wire _1194_ ;
wire _1129__bF$buf0 ;
wire _1129__bF$buf1 ;
wire _1129__bF$buf2 ;
wire _1129__bF$buf3 ;
wire _1129__bF$buf4 ;
wire _1129__bF$buf5 ;
wire _53_ ;
wire _1899_ ;
wire _1479_ ;
wire _1059_ ;
wire _2000_ ;
wire _602_ ;
wire _1288_ ;
wire _199_ ;
wire _1920_ ;
wire _1500_ ;
wire _831_ ;
wire _411_ ;
wire _91_ ;
wire _1097_ ;
wire _640_ ;
wire _220_ ;
wire _2323_ ;
wire _9_ ;
wire _925_ ;
wire _505_ ;
wire _2132_ ;
wire _1823_ ;
wire _1403_ ;
wire _734_ ;
wire _314_ ;
wire [3:0] \u_cpu.alu_op  ;
wire _1632_ ;
wire _1212_ ;
wire _963_ ;
wire _543_ ;
wire _123_ ;
wire _2170_ ;
wire _1861_ ;
wire _1441_ ;
wire _1021_ ;
wire _772_ ;
wire _352_ ;
wire _2226_ ;
wire _1917_ ;
wire _828_ ;
wire _408_ ;
wire _88_ ;
wire _1670_ ;
wire _1250_ ;
wire _581_ ;
wire _161_ ;
wire _2035_ ;
wire _1726_ ;
wire _1306_ ;
wire _637_ ;
wire _217_ ;
wire _390_ ;
wire _2264_ ;
wire _1955_ ;
wire _1535_ ;
wire _1115_ ;
wire _866_ ;
wire _446_ ;
wire _2073_ ;
wire _1764_ ;
wire _1344_ ;
wire _675_ ;
wire _255_ ;
wire _2129_ ;
wire _1993_ ;
wire _1573_ ;
wire _1153_ ;
wire _484_ ;
wire _1629_ ;
wire _1209_ ;
wire _1382_ ;
wire _293_ ;
wire _2167_ ;
wire _12_ ;
wire _1858_ ;
wire _1438_ ;
wire _1018_ ;
wire _769_ ;
wire _349_ ;
wire _1191_ ;
wire _1667_ ;
wire _1247_ ;
wire _998_ ;
wire _578_ ;
wire _158_ ;
wire _50_ ;
wire _1896_ ;
wire _1476_ ;
wire _1056_ ;
wire _387_ ;
wire _1285_ ;
wire _196_ ;
wire dsp_rdy ;
wire _1094_ ;
wire _2299_ ;
wire _1799_ ;
wire _1379_ ;
wire _2320_ ;
wire _6_ ;
wire _922_ ;
wire _502_ ;
wire _1188_ ;
wire \u_cpu.write_back  ;
wire _1820_ ;
wire _1400_ ;
wire _731_ ;
wire _311_ ;
wire _47_ ;
wire _960_ ;
wire _540_ ;
wire _120_ ;
wire \u_cpu.compare  ;
wire _2223_ ;
wire _1914_ ;
wire _825_ ;
wire _405_ ;
wire _85_ ;
wire _2032_ ;
wire _1723_ ;
wire _1303_ ;
wire _634_ ;
wire _214_ ;
wire _2261_ ;
wire _1952_ ;
wire _1532_ ;
wire _1112_ ;
wire _863_ ;
wire _443_ ;
wire _2317_ ;
wire _2070_ ;
wire _919_ ;
wire _1761_ ;
wire _1341_ ;
wire _672_ ;
wire _252_ ;
wire _2126_ ;
wire _1817_ ;
wire _728_ ;
wire _308_ ;
wire _1990_ ;
wire _1570_ ;
wire _1150_ ;
wire _481_ ;
wire _2355_ ;
wire _1626_ ;
wire _1206_ ;
wire _957_ ;
wire _537_ ;
wire _117_ ;
wire _290_ ;
wire _2164_ ;
wire \u_cpu.AV  ;
wire _1855_ ;
wire _1435_ ;
wire _1015_ ;
wire _766_ ;
wire _346_ ;
wire _1664_ ;
wire _1244_ ;
wire _995_ ;
wire _575_ ;
wire _155_ ;
wire _2029_ ;
wire _1893_ ;
wire _1473_ ;
wire _1053_ ;
wire _384_ ;
wire _2258_ ;
wire _1949_ ;
wire _1529_ ;
wire _1109_ ;
wire _1282_ ;
wire _193_ ;
wire _2067_ ;
wire _1758_ ;
wire _1338_ ;
wire _669_ ;
wire _249_ ;
wire _1091_ ;
wire _2296_ ;
wire _1987_ ;
wire _1567_ ;
wire _1147_ ;
wire _898_ ;
wire _478_ ;
wire _1796_ ;
wire _1376_ ;
wire _287_ ;
wire _3_ ;
wire _1185_ ;
wire \u_cpu.sei  ;
wire _2199_ ;
wire _44_ ;
wire _1699_ ;
wire _1279_ ;
wire _2220_ ;
wire _1911_ ;
wire _822_ ;
wire _402_ ;
wire _82_ ;
wire _1088_ ;
wire _1720_ ;
wire _1300_ ;
wire _631_ ;
wire _211_ ;
wire _860_ ;
wire _440_ ;
wire _2314_ ;
wire _916_ ;
wire _2123_ ;
wire _1814_ ;
wire _725_ ;
wire _305_ ;
wire _2352_ ;
wire _1623_ ;
wire _1203_ ;
wire _954_ ;
wire _534_ ;
wire _114_ ;
wire _2161_ ;
wire _1852_ ;
wire _1432_ ;
wire _1012_ ;
wire _763_ ;
wire _343_ ;
wire _2217_ ;
wire _1908_ ;
wire _819_ ;
wire _79_ ;
wire _1661_ ;
wire _1241_ ;
wire _992_ ;
wire _572_ ;
wire _152_ ;
wire _2026_ ;
wire _1717_ ;
wire _628_ ;
wire _208_ ;
wire _1890_ ;
wire _1470_ ;
wire _1050_ ;
wire _381_ ;
wire _2255_ ;
wire _1946_ ;
wire _1526_ ;
wire _1106_ ;
wire _857_ ;
wire _437_ ;
wire _190_ ;
wire _2064_ ;
wire _1755_ ;
wire _1335_ ;
wire _666_ ;
wire _246_ ;
wire _2293_ ;
wire _1984_ ;
wire _1564_ ;
wire _1144_ ;
wire _895_ ;
wire _475_ ;
wire _2349_ ;
wire _1793_ ;
wire _1373_ ;
wire _284_ ;
wire _2158_ ;
wire _0_ ;
wire _1849_ ;
wire _1429_ ;
wire _1009_ ;
wire _1182_ ;
wire _1658_ ;
wire _1238_ ;
wire _989_ ;
wire _569_ ;
wire _149_ ;
wire _2196_ ;
wire _41_ ;
wire _1887_ ;
wire _1467_ ;
wire _1047_ ;
wire _798_ ;
wire _378_ ;
wire [7:0] \u_cpu.BI  ;
wire _1696_ ;
wire _1276_ ;
wire _187_ ;
wire _1085_ ;
wire _2099_ ;
wire _2311_ ;
wire _913_ ;
wire _1599_ ;
wire _1179_ ;
wire _2120_ ;
wire _2354__3_bF$buf0 ;
wire _2354__3_bF$buf1 ;
wire _2354__3_bF$buf2 ;
wire _2354__3_bF$buf3 ;
wire _2354__3_bF$buf4 ;
wire _2354__3_bF$buf5 ;
wire _2354__3_bF$buf6 ;
wire _1811_ ;
wire _722_ ;
wire _302_ ;
wire _38_ ;
wire _1620_ ;
wire _1200_ ;
wire _951_ ;
wire _531_ ;
wire _111_ ;
wire _760_ ;
wire _340_ ;
wire _2214_ ;
wire _1905_ ;
wire _816_ ;
wire _76_ ;
wire _2023_ ;
wire \u_cpu.NMI_1  ;
wire _1714_ ;
wire _625_ ;
wire _205_ ;
wire _2252_ ;
wire clk_bF$buf10 ;
wire clk_bF$buf11 ;
wire clk_bF$buf12 ;
wire _1943_ ;
wire _1523_ ;
wire _1103_ ;
wire _854_ ;
wire _434_ ;
wire _2308_ ;
wire _2061_ ;
wire _1752_ ;
wire _1332_ ;
wire _663_ ;
wire _243_ ;
wire _2117_ ;
wire _2290_ ;
wire _1808_ ;
wire _719_ ;
wire _1981_ ;
wire _1561_ ;
wire _1141_ ;
wire _892_ ;
wire _472_ ;
wire [7:0] _2346_ ;
wire _1617_ ;
wire _948_ ;
wire _528_ ;
wire _108_ ;
wire _1790_ ;
wire _1370_ ;
wire _281_ ;
wire _2155_ ;
wire [7:0] \u_cpu.ABH  ;
wire _1846_ ;
wire _1426_ ;
wire _1006_ ;
wire _757_ ;
wire _337_ ;
wire \u_cpu.sec  ;
wire _1655_ ;
wire _1235_ ;
wire _986_ ;
wire _566_ ;
wire _146_ ;
wire _2193_ ;
wire _1884_ ;
wire _1464_ ;
wire _1044_ ;
wire _795_ ;
wire _375_ ;
wire _2249_ ;
wire _1693_ ;
wire _1273_ ;
wire _184_ ;
wire _2058_ ;
wire _1749_ ;
wire _1329_ ;
wire _1082_ ;
wire _2287_ ;
wire _1978_ ;
wire _1558_ ;
wire _1138_ ;
wire _889_ ;
wire _469_ ;
wire _2096_ ;
wire [7:0] \u_cpu.AXYS[1]  ;
wire _1787_ ;
wire _1367_ ;
wire _698_ ;
wire _278_ ;
wire _1681__bF$buf0 ;
wire _1681__bF$buf1 ;
wire _1681__bF$buf2 ;
wire _1681__bF$buf3 ;
wire _910_ ;
wire _1596_ ;
wire _1176_ ;
wire _35_ ;
wire _2211_ ;
wire _1902_ ;
wire _813_ ;
wire _73_ ;
wire _1499_ ;
wire _1079_ ;
wire _2020_ ;
wire _1711_ ;
wire _622_ ;
wire _202_ ;
wire _1940_ ;
wire _1520_ ;
wire _1100_ ;
wire _851_ ;
wire _431_ ;
wire _2305_ ;
wire _907_ ;
wire _660_ ;
wire _240_ ;
wire _2114_ ;
wire _1805_ ;
wire _716_ ;
wire _2343_ ;
wire _1614_ ;
wire _945_ ;
wire _525_ ;
wire _105_ ;
wire _2152_ ;
wire _1843_ ;
wire _1423_ ;
wire _1003_ ;
wire _754_ ;
wire _334_ ;
wire _2208_ ;
wire _1652_ ;
wire _1232_ ;
wire _983_ ;
wire _563_ ;
wire _143_ ;
wire _2017_ ;
wire \u_cpu.V  ;
wire _2190_ ;
wire _1708_ ;
wire _619_ ;
wire _1881_ ;
wire _1461_ ;
wire _1041_ ;
wire _792_ ;
wire _372_ ;
wire _2246_ ;
wire _1937_ ;
wire _1517_ ;
wire _848_ ;
wire _428_ ;
wire _1690_ ;
wire _1270_ ;
wire _181_ ;
wire _2055_ ;
wire _1746_ ;
wire _1326_ ;
wire _657_ ;
wire _237_ ;
wire _2284_ ;
wire _1975_ ;
wire _1555_ ;
wire _1135_ ;
wire _886_ ;
wire _466_ ;
wire _2093_ ;
wire _1784_ ;
wire _1364_ ;
wire _695_ ;
wire _275_ ;
wire _2149_ ;
wire _1593_ ;
wire _1173_ ;
wire _1649_ ;
wire _1229_ ;
wire _2187_ ;
wire _32_ ;
wire _1878_ ;
wire _1458_ ;
wire _1038_ ;
wire _789_ ;
wire _369_ ;
wire _1687_ ;
wire _1267_ ;
wire _598_ ;
wire _178_ ;
wire _810_ ;
wire _70_ ;
wire _1496_ ;
wire _1076_ ;
wire _2302_ ;
wire [3:0] \u_pia_dsp.state  ;
wire _904_ ;
wire _2111_ ;
wire _1802_ ;
wire _713_ ;
wire _1399_ ;
wire _2340_ ;
wire _29_ ;
wire _1611_ ;
wire _942_ ;
wire _522_ ;
wire _102_ ;
wire _1037__bF$buf0 ;
wire _1037__bF$buf1 ;
wire _1037__bF$buf2 ;
wire _1037__bF$buf3 ;
wire _1840_ ;
wire _1420_ ;
wire _1000_ ;
wire _751_ ;
wire _331_ ;
wire _2205_ ;
wire _807_ ;
wire _67_ ;
wire _980_ ;
wire _560_ ;
wire _140_ ;
wire _2014_ ;
wire _1705_ ;
wire _616_ ;
wire _2243_ ;
wire _1934_ ;
wire _1514_ ;
wire _845_ ;
wire _425_ ;
wire _2052_ ;
wire _1743_ ;
wire _1323_ ;
wire _654_ ;
wire _234_ ;
wire _2108_ ;
wire _2281_ ;
wire \u_cpu.store  ;
wire _1972_ ;
wire _1552_ ;
wire _1132_ ;
wire _883_ ;
wire _463_ ;
wire _2337_ ;
wire _2090_ ;
wire _1608_ ;
wire _939_ ;
wire _519_ ;
wire _1781_ ;
wire _1361_ ;
wire _692_ ;
wire _272_ ;
wire _2146_ ;
wire _1837_ ;
wire _1417_ ;
wire _748_ ;
wire _328_ ;
wire _1590_ ;
wire _1170_ ;
wire _1646_ ;
wire _1226_ ;
wire _977_ ;
wire _557_ ;
wire _137_ ;
wire _2184_ ;
wire [7:0] DI ;
wire [7:0] DO ;
wire _1875_ ;
wire _1455_ ;
wire _1035_ ;
wire _786_ ;
wire _366_ ;
wire _1684_ ;
wire _1264_ ;
wire _595_ ;
wire _175_ ;
wire _2049_ ;
wire _1493_ ;
wire _1073_ ;
wire _2278_ ;
wire _1969_ ;
wire _1549_ ;
wire _1129_ ;
wire _2087_ ;
wire _1778_ ;
wire _1358_ ;
wire _689_ ;
wire _269_ ;
wire _901_ ;
wire _1587_ ;
wire _1167_ ;
wire _498_ ;
wire _710_ ;
wire _1396_ ;
wire _26_ ;
wire _2202_ ;
wire _804_ ;
wire _64_ ;
wire _2011_ ;
wire _1702_ ;
wire _613_ ;
wire _1299_ ;
wire _2240_ ;
wire _1931_ ;
wire _1511_ ;
wire _842_ ;
wire _422_ ;
wire _1740_ ;
wire _1320_ ;
wire _651_ ;
wire _231_ ;
wire _2105_ ;
wire [2:0] \u_cpu.cond_code  ;
wire _707_ ;
wire _880_ ;
wire _460_ ;
wire _2334_ ;
wire _1605_ ;
wire _936_ ;
wire _516_ ;
wire _2143_ ;
wire _1834_ ;
wire _1414_ ;
wire _745_ ;
wire _325_ ;
wire _1643_ ;
wire _1223_ ;
wire _974_ ;
wire _554_ ;
wire _134_ ;
wire _2008_ ;
wire _2181_ ;
wire [15:0] AB ;
wire _1872_ ;
wire _1452_ ;
wire _1032_ ;
wire _783_ ;
wire _363_ ;
wire _2237_ ;
wire _1928_ ;
wire _1508_ ;
wire _839_ ;
wire _419_ ;
wire _99_ ;
wire _1681_ ;
wire _1261_ ;
wire _592_ ;
wire _172_ ;
wire _2046_ ;
wire _1737_ ;
wire _1317_ ;
wire _648_ ;
wire _228_ ;
wire _1490_ ;
wire _1070_ ;
wire _2275_ ;
wire _1966_ ;
wire _1546_ ;
wire _1126_ ;
wire _877_ ;
wire _457_ ;
wire _2084_ ;
wire _1775_ ;
wire _1355_ ;
wire _686_ ;
wire _266_ ;
wire _1584_ ;
wire _1164_ ;
wire _1417__bF$buf10 ;
wire _495_ ;
wire _1393_ ;
wire _2178_ ;
wire _23_ ;
wire _1869_ ;
wire _1449_ ;
wire _1029_ ;
wire _1678_ ;
wire _1258_ ;
wire _589_ ;
wire _169_ ;
wire _801_ ;
wire _61_ ;
wire _1487_ ;
wire _1067_ ;
wire _398_ ;
wire _610_ ;
wire _1296_ ;
wire _2102_ ;
wire _704_ ;
wire _2331_ ;
wire _1602_ ;
wire _933_ ;
wire _513_ ;
wire _1199_ ;
wire _2140_ ;
wire _1831_ ;
wire _1411_ ;
wire _742_ ;
wire _322_ ;
wire _58_ ;
wire _1640_ ;
wire _1220_ ;
wire _971_ ;
wire _551_ ;
wire _131_ ;
wire _2005_ ;
wire [15:0] \u_cpu.PC  ;
wire _607_ ;
wire _780_ ;
wire _360_ ;
wire _2234_ ;
wire _1925_ ;
wire _1505_ ;
wire _836_ ;
wire _416_ ;
wire _96_ ;
wire _2043_ ;
wire NMI ;
wire _1734_ ;
wire _1314_ ;
wire _645_ ;
wire _225_ ;
wire _2272_ ;
wire _1963_ ;
wire _1543_ ;
wire _1123_ ;
wire \u_cpu.clv  ;
wire _874_ ;
wire _454_ ;
wire _2328_ ;
wire _2081_ ;
wire _1772_ ;
wire _1352_ ;
wire _683_ ;
wire _263_ ;
wire _2137_ ;
wire _1828_ ;
wire _1408_ ;
wire _739_ ;
wire _319_ ;
wire _1581_ ;
wire _1161_ ;
wire _492_ ;
wire _1637_ ;
wire _1217_ ;
wire _968_ ;
wire _548_ ;
wire _128_ ;
wire _1390_ ;
wire _2175_ ;
wire _20_ ;
wire _1866_ ;
wire _1446_ ;
wire _1026_ ;
wire _777_ ;
wire _357_ ;
wire _1675_ ;
wire _1255_ ;
wire _586_ ;
wire _166_ ;
wire _2354__5_bF$buf0 ;
wire _2354__5_bF$buf1 ;
wire _2354__5_bF$buf2 ;
wire _2354__5_bF$buf3 ;
wire _2354__5_bF$buf4 ;
wire _1484_ ;
wire _1064_ ;
wire _395_ ;
wire _2269_ ;
wire _1293_ ;
wire _2078_ ;
wire \u_cpu.rotate  ;
wire _1769_ ;
wire _1349_ ;
wire _1998_ ;
wire _1578_ ;
wire _1158_ ;
wire _489_ ;
wire _701_ ;
wire [7:0] \u_cpu.AXYS[3]  ;
wire _1387_ ;
wire _298_ ;
wire _17_ ;
wire _930_ ;
wire _510_ ;
wire _1196_ ;
wire _55_ ;
wire _2002_ ;
wire _604_ ;
wire _2231_ ;
wire _1922_ ;
wire _1502_ ;
wire _833_ ;
wire _413_ ;
wire _93_ ;
wire _1099_ ;
wire _2040_ ;
wire _1731_ ;
wire _1311_ ;
wire _642_ ;
wire _222_ ;
wire _1960_ ;
wire _1540_ ;
wire _1120_ ;
wire _871_ ;
wire _451_ ;
wire _2325_ ;
wire _927_ ;
wire _507_ ;
wire _680_ ;
wire _260_ ;
wire _2134_ ;
wire _1825_ ;
wire _1405_ ;
wire _736_ ;
wire _316_ ;
wire _1634_ ;
wire _1214_ ;
wire _965_ ;
wire _545_ ;
wire _125_ ;
wire _2172_ ;
wire _1863_ ;
wire _1443_ ;
wire _1023_ ;
wire _774_ ;
wire _354_ ;
wire _2228_ ;
wire _1919_ ;
wire _1672_ ;
wire _1252_ ;
wire _583_ ;
wire _163_ ;
wire _2037_ ;
wire _1728_ ;
wire _1308_ ;
wire _639_ ;
wire _219_ ;
wire _1481_ ;
wire _1061_ ;
wire _392_ ;
wire _2266_ ;
wire _1957_ ;
wire _1537_ ;
wire _1117_ ;
wire _868_ ;
wire _448_ ;
wire _1290_ ;
wire _2075_ ;
wire _1766_ ;
wire _1346_ ;
wire _677_ ;
wire _257_ ;
wire _1995_ ;
wire _1575_ ;
wire _1155_ ;
wire _486_ ;
wire _1384_ ;
wire _295_ ;
wire _2169_ ;
wire _14_ ;
wire _1193_ ;
wire \u_cpu.load_reg  ;
wire _1669_ ;
wire _1249_ ;
wire _52_ ;
wire _1898_ ;
wire _1478_ ;
wire _1058_ ;
wire _389_ ;
wire _601_ ;
wire _1287_ ;
wire _198_ ;
wire _830_ ;
wire _410_ ;
wire _90_ ;
wire _1096_ ;
wire _2354__0_bF$buf0 ;
wire _2354__0_bF$buf1 ;
wire _2354__0_bF$buf2 ;
wire _2354__0_bF$buf3 ;
wire _2354__0_bF$buf4 ;
wire _2354__0_bF$buf5 ;
wire _2322_ ;
wire _8_ ;
wire _924_ ;
wire _504_ ;
wire _2131_ ;
wire _1822_ ;
wire _1402_ ;
wire _733_ ;
wire _313_ ;
wire _49_ ;
wire _1631_ ;
wire _1211_ ;
wire _962_ ;
wire _542_ ;
wire _122_ ;
wire _1860_ ;
wire _1440_ ;
wire _1020_ ;
wire _771_ ;
wire _351_ ;
wire _2225_ ;
wire _1916_ ;
wire _827_ ;
wire _407_ ;
wire _87_ ;
wire _580_ ;
wire _160_ ;
wire _2034_ ;
wire _1725_ ;
wire _1305_ ;
wire _636_ ;
wire _216_ ;
wire \u_cpu.D  ;
wire _2263_ ;
wire _1954_ ;
wire _1534_ ;
wire _1114_ ;
wire _865_ ;
wire _445_ ;
wire _2319_ ;
wire _2072_ ;
wire _1763_ ;
wire _1343_ ;
wire _674_ ;
wire _254_ ;
wire _2128_ ;
wire _1819_ ;
wire _1992_ ;
wire _1572_ ;
wire _1152_ ;
wire _483_ ;
wire _1628_ ;
wire _1208_ ;
wire _959_ ;
wire _539_ ;
wire _119_ ;
wire _1381_ ;
wire _292_ ;
wire _2166_ ;
wire _11_ ;
wire _1857_ ;
wire _1437_ ;
wire _1017_ ;
wire _768_ ;
wire _348_ ;
wire _1190_ ;
wire _1666_ ;
wire _1246_ ;
wire _997_ ;
wire _577_ ;
wire _157_ ;
wire _1895_ ;
wire _1475_ ;
wire _1055_ ;
wire _386_ ;
wire \u_cpu.shift_right  ;
wire _1284_ ;
wire _195_ ;
wire _2069_ ;
wire _1093_ ;
wire _2298_ ;
wire _1989_ ;
wire _1569_ ;
wire _1149_ ;
wire _1798_ ;
wire _1378_ ;
wire _289_ ;
wire _5_ ;
wire _921_ ;
wire _501_ ;
wire _1636__bF$buf0 ;
wire _1636__bF$buf1 ;
wire _1636__bF$buf2 ;
wire _1636__bF$buf3 ;
wire _1636__bF$buf4 ;
wire _1187_ ;
wire _730_ ;
wire _310_ ;
wire _46_ ;
wire _2222_ ;
wire _1913_ ;
wire _824_ ;
wire _404_ ;
wire _84_ ;
wire _2031_ ;
wire _1722_ ;
wire _1302_ ;
wire _633_ ;
wire _213_ ;
wire _2260_ ;
wire _1951_ ;
wire _1531_ ;
wire _1111_ ;
wire _862_ ;
wire _442_ ;
wire _2316_ ;
wire _918_ ;
wire _1760_ ;
wire _1340_ ;
wire _671_ ;
wire _251_ ;
wire _2125_ ;
wire _1816_ ;
wire _727_ ;
wire _307_ ;
wire _480_ ;
wire [15:0] _2354_ ;
wire _1625_ ;
wire _1205_ ;
wire _956_ ;
wire _536_ ;
wire _116_ ;
wire _2163_ ;
wire _1854_ ;
wire _1434_ ;
wire _1014_ ;
wire _765_ ;
wire _345_ ;
wire _2219_ ;
wire _1663_ ;
wire _1243_ ;
wire _994_ ;
wire _574_ ;
wire _154_ ;
wire _2028_ ;
wire _1719_ ;
wire _1892_ ;
wire _1472_ ;
wire _1052_ ;
wire _383_ ;
wire _2257_ ;
wire _1948_ ;
wire _1528_ ;
wire _1108_ ;
wire _859_ ;
wire _439_ ;
wire _1281_ ;
wire _192_ ;
wire _2066_ ;
wire _1757_ ;
wire _1337_ ;
wire _668_ ;
wire _248_ ;
wire _1090_ ;
wire _2295_ ;
wire _1986_ ;
wire _1566_ ;
wire _1146_ ;
wire _897_ ;
wire _477_ ;
wire _1795_ ;
wire _1375_ ;
wire _286_ ;
wire _2_ ;
wire _1184_ ;
wire _2198_ ;
wire _43_ ;
wire _1889_ ;
wire _1469_ ;
wire _1049_ ;
wire [7:0] DO_kbd ;
wire _1698_ ;
wire _1278_ ;
wire _189_ ;
wire _1910_ ;
wire _821_ ;
wire _401_ ;
wire _81_ ;
wire _1087_ ;
wire _1643__bF$buf0 ;
wire _1643__bF$buf1 ;
wire _1643__bF$buf2 ;
wire _1643__bF$buf3 ;
wire _1643__bF$buf4 ;
wire _1643__bF$buf5 ;
wire _630_ ;
wire _210_ ;
wire [15:0] _Addr_Bus ;
wire _2313_ ;
wire _915_ ;
wire _2122_ ;
wire _1813_ ;
wire _724_ ;
wire _304_ ;
wire _2351_ ;
wire _1622_ ;
wire _1202_ ;
wire _953_ ;
wire _533_ ;
wire _113_ ;
wire _2160_ ;
wire _1851_ ;
wire _1431_ ;
wire _1011_ ;
wire _762_ ;
wire _342_ ;
wire _2216_ ;
wire _1907_ ;
wire _818_ ;
wire _78_ ;
wire _1660_ ;
wire _1240_ ;
wire _991_ ;
wire _571_ ;
wire _151_ ;
wire _2025_ ;
wire _1716_ ;
wire _627_ ;
wire _207_ ;
wire _380_ ;
wire _2254_ ;
wire _1945_ ;
wire _1525_ ;
wire _1105_ ;
wire _856_ ;
wire _436_ ;
wire _2063_ ;
wire _1754_ ;
wire _1334_ ;
wire _665_ ;
wire _245_ ;
wire _2119_ ;
wire _2292_ ;
wire _1983_ ;
wire _1563_ ;
wire _1143_ ;
wire _894_ ;
wire _474_ ;
wire _2348_ ;
wire _1619_ ;
wire _1792_ ;
wire _1372_ ;
wire _283_ ;
wire _2157_ ;
wire _1848_ ;
wire _1428_ ;
wire _1008_ ;
wire _759_ ;
wire _339_ ;
wire _1181_ ;
wire _1657_ ;
wire _1237_ ;
wire _988_ ;
wire _568_ ;
wire _148_ ;
wire _2195_ ;
wire _40_ ;
wire _1886_ ;
wire _1466_ ;
wire _1046_ ;
wire _797_ ;
wire _377_ ;
wire _1695_ ;
wire _1275_ ;
wire _186_ ;
wire _1084_ ;
wire _2289_ ;
wire _2098_ ;
wire _1789_ ;
wire _1369_ ;
wire _2310_ ;
wire _912_ ;
wire _1598_ ;
wire _1178_ ;
wire _1810_ ;
wire _721_ ;
wire _301_ ;
wire _37_ ;
wire _950_ ;
wire _530_ ;
wire _110_ ;
wire _2213_ ;
wire _1904_ ;
wire _815_ ;
wire _75_ ;
wire _2022_ ;
wire _1713_ ;
wire _624_ ;
wire _204_ ;
wire _2251_ ;
wire _1942_ ;
wire _1522_ ;
wire _1102_ ;
wire \u_cpu.IRHOLD_valid  ;
wire _853_ ;
wire _433_ ;
wire _2307_ ;
wire _2060_ ;
wire [1:0] \u_cpu.src_reg  ;
wire _909_ ;
wire _1751_ ;
wire _1331_ ;
wire _662_ ;
wire _242_ ;
wire _2116_ ;
wire _1807_ ;
wire _718_ ;
wire _2354__7_bF$buf0 ;
wire _2354__7_bF$buf1 ;
wire _2354__7_bF$buf2 ;
wire _2354__7_bF$buf3 ;
wire _1980_ ;
wire _1560_ ;
wire _1140_ ;
wire _891_ ;
wire _471_ ;
wire _2345_ ;
wire _1616_ ;
wire _947_ ;
wire _527_ ;
wire _107_ ;
wire \u_cpu.cld  ;
wire _280_ ;
wire _2154_ ;
wire _1845_ ;
wire _1425_ ;
wire _1005_ ;
wire _756_ ;
wire _336_ ;
wire _1654_ ;
wire _1234_ ;
wire _985_ ;
wire _565_ ;
wire _145_ ;
wire _2019_ ;
wire _2192_ ;
wire _1883_ ;
wire _1463_ ;
wire _1043_ ;
wire _794_ ;
wire _374_ ;
wire _2248_ ;
wire _1939_ ;
wire _1519_ ;
wire _1692_ ;
wire _1272_ ;
wire _183_ ;
wire _2057_ ;
wire _1748_ ;
wire _1328_ ;
wire _659_ ;
wire _239_ ;
wire _1081_ ;
wire _2286_ ;
wire kbd_ack ;
wire _1977_ ;
wire _1557_ ;
wire _1137_ ;
wire _888_ ;
wire _468_ ;
wire _2095_ ;
wire _1786_ ;
wire _1366_ ;
wire _697_ ;
wire _277_ ;
wire _1595_ ;
wire _1175_ ;
wire \u_cpu.load_only  ;
wire _2189_ ;
wire \u_cpu.alu_shift_right  ;
wire _34_ ;
wire _1689_ ;
wire _1269_ ;
wire _2210_ ;
wire _1901_ ;
wire _812_ ;
wire _72_ ;
wire _1498_ ;
wire _1078_ ;
wire _1710_ ;
wire _621_ ;
wire _201_ ;
wire _850_ ;
wire _430_ ;
wire _2304_ ;
wire _906_ ;
wire _2113_ ;
wire _1804_ ;
wire _715_ ;
wire _2342_ ;
wire _1613_ ;
wire _944_ ;
wire _524_ ;
wire _104_ ;
wire _2151_ ;
wire _1842_ ;
wire _1422_ ;
wire _1002_ ;
wire _753_ ;
wire _333_ ;
wire _2207_ ;
wire _809_ ;
wire _69_ ;
wire _1651_ ;
wire _1231_ ;
wire _982_ ;
wire _562_ ;
wire _142_ ;
wire _2016_ ;
wire _1707_ ;
wire _618_ ;
wire _1880_ ;
wire _1460_ ;
wire _1040_ ;
wire _791_ ;
wire _371_ ;
wire _2245_ ;
wire _1936_ ;
wire _1516_ ;
wire _847_ ;
wire _427_ ;
wire _180_ ;
wire _2054_ ;
wire _1745_ ;
wire _1325_ ;
wire _656_ ;
wire _236_ ;
wire _2283_ ;
wire [7:0] DO_dsp ;
wire \u_cpu.php  ;
wire _1974_ ;
wire _1554_ ;
wire _1134_ ;
wire _885_ ;
wire _465_ ;
wire _2339_ ;
wire _2092_ ;
wire _1783_ ;
wire _1363_ ;
wire _694_ ;
wire _274_ ;
wire _2148_ ;
wire _1839_ ;
wire _1419_ ;
wire _1592_ ;
wire _1172_ ;
wire _1648_ ;
wire _1228_ ;
wire _979_ ;
wire _559_ ;
wire _139_ ;
wire _2186_ ;
wire _2354__2_bF$buf0 ;
wire _2354__2_bF$buf1 ;
wire _2354__2_bF$buf2 ;
wire _2354__2_bF$buf3 ;
wire _2354__2_bF$buf4 ;
wire _2354__2_bF$buf5 ;
wire _31_ ;
wire _1877_ ;
wire _1457_ ;
wire _1037_ ;
wire _788_ ;
wire _368_ ;
wire [7:0] \u_cpu.AI  ;
wire _1686_ ;
wire _1266_ ;
wire _597_ ;
wire _177_ ;
wire _1495_ ;
wire _1075_ ;
wire dsp_ack ;
wire _2089_ ;
wire _2301_ ;
wire _1305__bF$buf0 ;
wire _1305__bF$buf1 ;
wire _1305__bF$buf2 ;
wire _1305__bF$buf3 ;
wire _903_ ;
wire _1589_ ;
wire _1169_ ;
wire _2110_ ;
wire \u_cpu.adc_bcd  ;
wire _1801_ ;
wire _712_ ;
wire _1398_ ;
wire _28_ ;
wire _1610_ ;
wire _941_ ;
wire _521_ ;
wire _101_ ;
wire _750_ ;
wire _330_ ;
wire _2204_ ;
wire _806_ ;
wire _66_ ;
wire _2013_ ;
wire _1704_ ;
wire _615_ ;
wire _2242_ ;
wire _1933_ ;
wire _1513_ ;
wire _844_ ;
wire _424_ ;
wire _2051_ ;
wire _1742_ ;
wire _1322_ ;
wire _653_ ;
wire _233_ ;
wire _2107_ ;
wire _2280_ ;
wire _709_ ;
wire _1971_ ;
wire _1551_ ;
wire _1131_ ;
wire _882_ ;
wire _462_ ;
wire _2336_ ;
wire _1607_ ;
wire _938_ ;
wire _518_ ;
wire _1780_ ;
wire _1360_ ;
wire _691_ ;
wire _271_ ;
wire _2145_ ;
wire _1836_ ;
wire _1416_ ;
wire _747_ ;
wire _327_ ;
wire _1645_ ;
wire _1225_ ;
wire _976_ ;
wire _556_ ;
wire _136_ ;
wire _2183_ ;
wire _1874_ ;
wire _1454_ ;
wire _1034_ ;
wire _785_ ;
wire _365_ ;
wire _2239_ ;
wire _1683_ ;
wire _1263_ ;
wire _594_ ;
wire _174_ ;
wire _2048_ ;
wire _1739_ ;
wire _1319_ ;
wire _1492_ ;
wire _1072_ ;
wire _2277_ ;
wire _1968_ ;
wire _1548_ ;
wire _1128_ ;
wire _879_ ;
wire _459_ ;
wire _2086_ ;
wire _800__bF$buf0 ;
wire _800__bF$buf1 ;
wire _800__bF$buf2 ;
wire _800__bF$buf3 ;
wire _800__bF$buf4 ;
wire [7:0] \u_cpu.AXYS[0]  ;
wire _1777_ ;
wire _1357_ ;
wire _688_ ;
wire _268_ ;
wire _900_ ;
wire _1586_ ;
wire _1166_ ;
wire _497_ ;
wire _1395_ ;
wire _25_ ;
wire _2201_ ;
wire _803_ ;
wire _63_ ;
wire _1489_ ;
wire _1069_ ;
wire _2010_ ;
wire _1701_ ;
wire _612_ ;
wire _1298_ ;
wire reset ;
wire _1930_ ;
wire _1510_ ;
wire _841_ ;
wire _421_ ;
wire _650_ ;
wire _230_ ;
wire _2104_ ;
wire _706_ ;
wire _2333_ ;
wire _1604_ ;
wire _935_ ;
wire _515_ ;
wire _2142_ ;
wire _1833_ ;
wire _1413_ ;
wire _744_ ;
wire _324_ ;
wire _1642_ ;
wire _1222_ ;
wire _973_ ;
wire _553_ ;
wire _133_ ;
wire _2007_ ;
wire _2180_ ;
wire _609_ ;
wire _1871_ ;
wire _1451_ ;
wire _1031_ ;
wire _782_ ;
wire _362_ ;
wire _2236_ ;
wire _1927_ ;
wire _1507_ ;
wire _838_ ;
wire _418_ ;
wire _98_ ;
wire _1680_ ;
wire _1260_ ;
wire _591_ ;
wire _171_ ;
wire _2045_ ;
wire _1736_ ;
wire _1316_ ;
wire _647_ ;
wire _227_ ;
wire _2274_ ;
wire _1965_ ;
wire _1545_ ;
wire _1125_ ;
wire _876_ ;
wire _456_ ;
wire _2083_ ;
wire _1774_ ;
wire _1354_ ;
wire _685_ ;
wire _265_ ;
wire _2139_ ;
wire _1583_ ;
wire _1163_ ;
wire _494_ ;
wire _1639_ ;
wire _1219_ ;
wire _1392_ ;
wire _2177_ ;
wire _22_ ;
wire _1868_ ;
wire _1448_ ;
wire _1028_ ;
wire _779_ ;
wire _359_ ;

BUFX2 BUFX2_insert167 (
    .A(_1037_),
    .Y(_1037__bF$buf0)
);

BUFX2 BUFX2_insert166 (
    .A(_1037_),
    .Y(_1037__bF$buf1)
);

BUFX2 BUFX2_insert165 (
    .A(_1037_),
    .Y(_1037__bF$buf2)
);

BUFX2 BUFX2_insert164 (
    .A(_1037_),
    .Y(_1037__bF$buf3)
);

BUFX2 BUFX2_insert163 (
    .A(_1325_),
    .Y(_1325__bF$buf0)
);

BUFX2 BUFX2_insert162 (
    .A(_1325_),
    .Y(_1325__bF$buf1)
);

BUFX2 BUFX2_insert161 (
    .A(_1325_),
    .Y(_1325__bF$buf2)
);

BUFX2 BUFX2_insert160 (
    .A(_1325_),
    .Y(_1325__bF$buf3)
);

BUFX2 BUFX2_insert159 (
    .A(_1325_),
    .Y(_1325__bF$buf4)
);

BUFX2 BUFX2_insert158 (
    .A(_2354_[2]),
    .Y(_2354__2_bF$buf0)
);

BUFX2 BUFX2_insert157 (
    .A(_2354_[2]),
    .Y(_2354__2_bF$buf1)
);

BUFX2 BUFX2_insert156 (
    .A(_2354_[2]),
    .Y(_2354__2_bF$buf2)
);

BUFX2 BUFX2_insert155 (
    .A(_2354_[2]),
    .Y(_2354__2_bF$buf3)
);

BUFX2 BUFX2_insert154 (
    .A(_2354_[2]),
    .Y(_2354__2_bF$buf4)
);

BUFX2 BUFX2_insert153 (
    .A(_2354_[2]),
    .Y(_2354__2_bF$buf5)
);

BUFX2 BUFX2_insert152 (
    .A(_1328_),
    .Y(_1328__bF$buf0)
);

BUFX2 BUFX2_insert151 (
    .A(_1328_),
    .Y(_1328__bF$buf1)
);

BUFX2 BUFX2_insert150 (
    .A(_1328_),
    .Y(_1328__bF$buf2)
);

BUFX2 BUFX2_insert149 (
    .A(_1328_),
    .Y(_1328__bF$buf3)
);

BUFX2 BUFX2_insert148 (
    .A(_1328_),
    .Y(_1328__bF$buf4)
);

BUFX2 BUFX2_insert147 (
    .A(_1328_),
    .Y(_1328__bF$buf5)
);

BUFX2 BUFX2_insert146 (
    .A(_2354_[5]),
    .Y(_2354__5_bF$buf0)
);

BUFX2 BUFX2_insert145 (
    .A(_2354_[5]),
    .Y(_2354__5_bF$buf1)
);

BUFX2 BUFX2_insert144 (
    .A(_2354_[5]),
    .Y(_2354__5_bF$buf2)
);

BUFX2 BUFX2_insert143 (
    .A(_2354_[5]),
    .Y(_2354__5_bF$buf3)
);

BUFX2 BUFX2_insert142 (
    .A(_2354_[5]),
    .Y(_2354__5_bF$buf4)
);

BUFX2 BUFX2_insert141 (
    .A(_1305_),
    .Y(_1305__bF$buf0)
);

BUFX2 BUFX2_insert140 (
    .A(_1305_),
    .Y(_1305__bF$buf1)
);

BUFX2 BUFX2_insert139 (
    .A(_1305_),
    .Y(_1305__bF$buf2)
);

BUFX2 BUFX2_insert138 (
    .A(_1305_),
    .Y(_1305__bF$buf3)
);

BUFX2 BUFX2_insert137 (
    .A(_1634_),
    .Y(_1634__bF$buf0)
);

BUFX2 BUFX2_insert136 (
    .A(_1634_),
    .Y(_1634__bF$buf1)
);

BUFX2 BUFX2_insert135 (
    .A(_1634_),
    .Y(_1634__bF$buf2)
);

BUFX2 BUFX2_insert134 (
    .A(_1634_),
    .Y(_1634__bF$buf3)
);

BUFX2 BUFX2_insert133 (
    .A(_1634_),
    .Y(_1634__bF$buf4)
);

BUFX2 BUFX2_insert132 (
    .A(_1634_),
    .Y(_1634__bF$buf5)
);

BUFX2 BUFX2_insert131 (
    .A(_1196_),
    .Y(_1196__bF$buf0)
);

BUFX2 BUFX2_insert130 (
    .A(_1196_),
    .Y(_1196__bF$buf1)
);

BUFX2 BUFX2_insert129 (
    .A(_1196_),
    .Y(_1196__bF$buf2)
);

BUFX2 BUFX2_insert128 (
    .A(_1196_),
    .Y(_1196__bF$buf3)
);

BUFX2 BUFX2_insert127 (
    .A(_1196_),
    .Y(_1196__bF$buf4)
);

BUFX2 BUFX2_insert126 (
    .A(_1196_),
    .Y(_1196__bF$buf5)
);

BUFX2 BUFX2_insert125 (
    .A(_1196_),
    .Y(_1196__bF$buf6)
);

BUFX2 BUFX2_insert124 (
    .A(_1196_),
    .Y(_1196__bF$buf7)
);

BUFX2 BUFX2_insert123 (
    .A(_1196_),
    .Y(_1196__bF$buf8)
);

BUFX2 BUFX2_insert122 (
    .A(_1070_),
    .Y(_1070__bF$buf0)
);

BUFX2 BUFX2_insert121 (
    .A(_1070_),
    .Y(_1070__bF$buf1)
);

BUFX2 BUFX2_insert120 (
    .A(_1070_),
    .Y(_1070__bF$buf2)
);

BUFX2 BUFX2_insert119 (
    .A(_1070_),
    .Y(_1070__bF$buf3)
);

BUFX2 BUFX2_insert118 (
    .A(_1681_),
    .Y(_1681__bF$buf0)
);

BUFX2 BUFX2_insert117 (
    .A(_1681_),
    .Y(_1681__bF$buf1)
);

BUFX2 BUFX2_insert116 (
    .A(_1681_),
    .Y(_1681__bF$buf2)
);

BUFX2 BUFX2_insert115 (
    .A(_1681_),
    .Y(_1681__bF$buf3)
);

BUFX2 BUFX2_insert114 (
    .A(_1643_),
    .Y(_1643__bF$buf0)
);

BUFX2 BUFX2_insert113 (
    .A(_1643_),
    .Y(_1643__bF$buf1)
);

BUFX2 BUFX2_insert112 (
    .A(_1643_),
    .Y(_1643__bF$buf2)
);

BUFX2 BUFX2_insert111 (
    .A(_1643_),
    .Y(_1643__bF$buf3)
);

BUFX2 BUFX2_insert110 (
    .A(_1643_),
    .Y(_1643__bF$buf4)
);

BUFX2 BUFX2_insert109 (
    .A(_1643_),
    .Y(_1643__bF$buf5)
);

BUFX2 BUFX2_insert108 (
    .A(_1129_),
    .Y(_1129__bF$buf0)
);

BUFX2 BUFX2_insert107 (
    .A(_1129_),
    .Y(_1129__bF$buf1)
);

BUFX2 BUFX2_insert106 (
    .A(_1129_),
    .Y(_1129__bF$buf2)
);

BUFX2 BUFX2_insert105 (
    .A(_1129_),
    .Y(_1129__bF$buf3)
);

BUFX2 BUFX2_insert104 (
    .A(_1129_),
    .Y(_1129__bF$buf4)
);

BUFX2 BUFX2_insert103 (
    .A(_1129_),
    .Y(_1129__bF$buf5)
);

BUFX2 BUFX2_insert102 (
    .A(_1417_),
    .Y(_1417__bF$buf0)
);

BUFX2 BUFX2_insert101 (
    .A(_1417_),
    .Y(_1417__bF$buf1)
);

BUFX2 BUFX2_insert100 (
    .A(_1417_),
    .Y(_1417__bF$buf2)
);

BUFX2 BUFX2_insert99 (
    .A(_1417_),
    .Y(_1417__bF$buf3)
);

BUFX2 BUFX2_insert98 (
    .A(_1417_),
    .Y(_1417__bF$buf4)
);

BUFX2 BUFX2_insert97 (
    .A(_1417_),
    .Y(_1417__bF$buf5)
);

BUFX2 BUFX2_insert96 (
    .A(_1417_),
    .Y(_1417__bF$buf6)
);

BUFX2 BUFX2_insert95 (
    .A(_1417_),
    .Y(_1417__bF$buf7)
);

BUFX2 BUFX2_insert94 (
    .A(_1417_),
    .Y(_1417__bF$buf8)
);

BUFX2 BUFX2_insert93 (
    .A(_1417_),
    .Y(_1417__bF$buf9)
);

BUFX2 BUFX2_insert92 (
    .A(_1417_),
    .Y(_1417__bF$buf10)
);

BUFX2 BUFX2_insert91 (
    .A(_2354_[0]),
    .Y(_2354__0_bF$buf0)
);

BUFX2 BUFX2_insert90 (
    .A(_2354_[0]),
    .Y(_2354__0_bF$buf1)
);

BUFX2 BUFX2_insert89 (
    .A(_2354_[0]),
    .Y(_2354__0_bF$buf2)
);

BUFX2 BUFX2_insert88 (
    .A(_2354_[0]),
    .Y(_2354__0_bF$buf3)
);

BUFX2 BUFX2_insert87 (
    .A(_2354_[0]),
    .Y(_2354__0_bF$buf4)
);

BUFX2 BUFX2_insert86 (
    .A(_2354_[0]),
    .Y(_2354__0_bF$buf5)
);

BUFX2 BUFX2_insert85 (
    .A(_2354_[3]),
    .Y(_2354__3_bF$buf0)
);

BUFX2 BUFX2_insert84 (
    .A(_2354_[3]),
    .Y(_2354__3_bF$buf1)
);

BUFX2 BUFX2_insert83 (
    .A(_2354_[3]),
    .Y(_2354__3_bF$buf2)
);

BUFX2 BUFX2_insert82 (
    .A(_2354_[3]),
    .Y(_2354__3_bF$buf3)
);

BUFX2 BUFX2_insert81 (
    .A(_2354_[3]),
    .Y(_2354__3_bF$buf4)
);

BUFX2 BUFX2_insert80 (
    .A(_2354_[3]),
    .Y(_2354__3_bF$buf5)
);

BUFX2 BUFX2_insert79 (
    .A(_2354_[3]),
    .Y(_2354__3_bF$buf6)
);

BUFX2 BUFX2_insert78 (
    .A(_2354_[6]),
    .Y(_2354__6_bF$buf0)
);

BUFX2 BUFX2_insert77 (
    .A(_2354_[6]),
    .Y(_2354__6_bF$buf1)
);

BUFX2 BUFX2_insert76 (
    .A(_2354_[6]),
    .Y(_2354__6_bF$buf2)
);

BUFX2 BUFX2_insert75 (
    .A(_2354_[6]),
    .Y(_2354__6_bF$buf3)
);

BUFX2 BUFX2_insert74 (
    .A(_2354_[6]),
    .Y(_2354__6_bF$buf4)
);

BUFX2 BUFX2_insert73 (
    .A(_1920_),
    .Y(_1920__bF$buf0)
);

BUFX2 BUFX2_insert72 (
    .A(_1920_),
    .Y(_1920__bF$buf1)
);

BUFX2 BUFX2_insert71 (
    .A(_1920_),
    .Y(_1920__bF$buf2)
);

BUFX2 BUFX2_insert70 (
    .A(_1920_),
    .Y(_1920__bF$buf3)
);

BUFX2 BUFX2_insert69 (
    .A(_1920_),
    .Y(_1920__bF$buf4)
);

BUFX2 BUFX2_insert68 (
    .A(_1635_),
    .Y(_1635__bF$buf0)
);

BUFX2 BUFX2_insert67 (
    .A(_1635_),
    .Y(_1635__bF$buf1)
);

BUFX2 BUFX2_insert66 (
    .A(_1635_),
    .Y(_1635__bF$buf2)
);

BUFX2 BUFX2_insert65 (
    .A(_1635_),
    .Y(_1635__bF$buf3)
);

BUFX2 BUFX2_insert64 (
    .A(_1635_),
    .Y(_1635__bF$buf4)
);

BUFX2 BUFX2_insert63 (
    .A(_1923_),
    .Y(_1923__bF$buf0)
);

BUFX2 BUFX2_insert62 (
    .A(_1923_),
    .Y(_1923__bF$buf1)
);

BUFX2 BUFX2_insert61 (
    .A(_1923_),
    .Y(_1923__bF$buf2)
);

BUFX2 BUFX2_insert60 (
    .A(_1923_),
    .Y(_1923__bF$buf3)
);

BUFX2 BUFX2_insert59 (
    .A(_1638_),
    .Y(_1638__bF$buf0)
);

BUFX2 BUFX2_insert58 (
    .A(_1638_),
    .Y(_1638__bF$buf1)
);

BUFX2 BUFX2_insert57 (
    .A(_1638_),
    .Y(_1638__bF$buf2)
);

BUFX2 BUFX2_insert56 (
    .A(_1638_),
    .Y(_1638__bF$buf3)
);

BUFX2 BUFX2_insert55 (
    .A(_1315_),
    .Y(_1315__bF$buf0)
);

BUFX2 BUFX2_insert54 (
    .A(_1315_),
    .Y(_1315__bF$buf1)
);

BUFX2 BUFX2_insert53 (
    .A(_1315_),
    .Y(_1315__bF$buf2)
);

BUFX2 BUFX2_insert52 (
    .A(_1315_),
    .Y(_1315__bF$buf3)
);

BUFX2 BUFX2_insert51 (
    .A(_2354_[1]),
    .Y(_2354__1_bF$buf0)
);

BUFX2 BUFX2_insert50 (
    .A(_2354_[1]),
    .Y(_2354__1_bF$buf1)
);

BUFX2 BUFX2_insert49 (
    .A(_2354_[1]),
    .Y(_2354__1_bF$buf2)
);

BUFX2 BUFX2_insert48 (
    .A(_2354_[1]),
    .Y(_2354__1_bF$buf3)
);

BUFX2 BUFX2_insert47 (
    .A(_2354_[1]),
    .Y(_2354__1_bF$buf4)
);

BUFX2 BUFX2_insert46 (
    .A(_2354_[1]),
    .Y(_2354__1_bF$buf5)
);

BUFX2 BUFX2_insert45 (
    .A(_2354_[4]),
    .Y(_2354__4_bF$buf0)
);

BUFX2 BUFX2_insert44 (
    .A(_2354_[4]),
    .Y(_2354__4_bF$buf1)
);

BUFX2 BUFX2_insert43 (
    .A(_2354_[4]),
    .Y(_2354__4_bF$buf2)
);

BUFX2 BUFX2_insert42 (
    .A(_2354_[4]),
    .Y(_2354__4_bF$buf3)
);

BUFX2 BUFX2_insert41 (
    .A(_2354_[4]),
    .Y(_2354__4_bF$buf4)
);

BUFX2 BUFX2_insert40 (
    .A(_2354_[4]),
    .Y(_2354__4_bF$buf5)
);

BUFX2 BUFX2_insert39 (
    .A(_2354_[4]),
    .Y(_2354__4_bF$buf6)
);

CLKBUF1 CLKBUF1_insert38 (
    .A(clk),
    .Y(clk_bF$buf0)
);

CLKBUF1 CLKBUF1_insert37 (
    .A(clk),
    .Y(clk_bF$buf1)
);

CLKBUF1 CLKBUF1_insert36 (
    .A(clk),
    .Y(clk_bF$buf2)
);

CLKBUF1 CLKBUF1_insert35 (
    .A(clk),
    .Y(clk_bF$buf3)
);

CLKBUF1 CLKBUF1_insert34 (
    .A(clk),
    .Y(clk_bF$buf4)
);

CLKBUF1 CLKBUF1_insert33 (
    .A(clk),
    .Y(clk_bF$buf5)
);

CLKBUF1 CLKBUF1_insert32 (
    .A(clk),
    .Y(clk_bF$buf6)
);

CLKBUF1 CLKBUF1_insert31 (
    .A(clk),
    .Y(clk_bF$buf7)
);

CLKBUF1 CLKBUF1_insert30 (
    .A(clk),
    .Y(clk_bF$buf8)
);

CLKBUF1 CLKBUF1_insert29 (
    .A(clk),
    .Y(clk_bF$buf9)
);

CLKBUF1 CLKBUF1_insert28 (
    .A(clk),
    .Y(clk_bF$buf10)
);

CLKBUF1 CLKBUF1_insert27 (
    .A(clk),
    .Y(clk_bF$buf11)
);

CLKBUF1 CLKBUF1_insert26 (
    .A(clk),
    .Y(clk_bF$buf12)
);

BUFX2 BUFX2_insert25 (
    .A(_2354_[7]),
    .Y(_2354__7_bF$buf0)
);

BUFX2 BUFX2_insert24 (
    .A(_2354_[7]),
    .Y(_2354__7_bF$buf1)
);

BUFX2 BUFX2_insert23 (
    .A(_2354_[7]),
    .Y(_2354__7_bF$buf2)
);

BUFX2 BUFX2_insert22 (
    .A(_2354_[7]),
    .Y(_2354__7_bF$buf3)
);

BUFX2 BUFX2_insert21 (
    .A(RDY),
    .Y(RDY_bF$buf0)
);

BUFX2 BUFX2_insert20 (
    .A(RDY),
    .Y(RDY_bF$buf1)
);

BUFX2 BUFX2_insert19 (
    .A(RDY),
    .Y(RDY_bF$buf2)
);

BUFX2 BUFX2_insert18 (
    .A(RDY),
    .Y(RDY_bF$buf3)
);

BUFX2 BUFX2_insert17 (
    .A(RDY),
    .Y(RDY_bF$buf4)
);

BUFX2 BUFX2_insert16 (
    .A(RDY),
    .Y(RDY_bF$buf5)
);

BUFX2 BUFX2_insert15 (
    .A(RDY),
    .Y(RDY_bF$buf6)
);

BUFX2 BUFX2_insert14 (
    .A(RDY),
    .Y(RDY_bF$buf7)
);

BUFX2 BUFX2_insert13 (
    .A(_1345_),
    .Y(_1345__bF$buf0)
);

BUFX2 BUFX2_insert12 (
    .A(_1345_),
    .Y(_1345__bF$buf1)
);

BUFX2 BUFX2_insert11 (
    .A(_1345_),
    .Y(_1345__bF$buf2)
);

BUFX2 BUFX2_insert10 (
    .A(_1345_),
    .Y(_1345__bF$buf3)
);

BUFX2 BUFX2_insert9 (
    .A(_1636_),
    .Y(_1636__bF$buf0)
);

BUFX2 BUFX2_insert8 (
    .A(_1636_),
    .Y(_1636__bF$buf1)
);

BUFX2 BUFX2_insert7 (
    .A(_1636_),
    .Y(_1636__bF$buf2)
);

BUFX2 BUFX2_insert6 (
    .A(_1636_),
    .Y(_1636__bF$buf3)
);

BUFX2 BUFX2_insert5 (
    .A(_1636_),
    .Y(_1636__bF$buf4)
);

BUFX2 BUFX2_insert4 (
    .A(_800_),
    .Y(_800__bF$buf0)
);

BUFX2 BUFX2_insert3 (
    .A(_800_),
    .Y(_800__bF$buf1)
);

BUFX2 BUFX2_insert2 (
    .A(_800_),
    .Y(_800__bF$buf2)
);

BUFX2 BUFX2_insert1 (
    .A(_800_),
    .Y(_800__bF$buf3)
);

BUFX2 BUFX2_insert0 (
    .A(_800_),
    .Y(_800__bF$buf4)
);

BUFX2 _2356_ (
    .A(_2354_[15]),
    .Y(AB[15])
);

BUFX2 _2357_ (
    .A(_2354_[14]),
    .Y(AB[14])
);

BUFX2 _2358_ (
    .A(_2354_[13]),
    .Y(AB[13])
);

BUFX2 _2359_ (
    .A(_2354_[12]),
    .Y(AB[12])
);

BUFX2 _2360_ (
    .A(_2354_[11]),
    .Y(AB[11])
);

BUFX2 _2361_ (
    .A(_2354_[10]),
    .Y(AB[10])
);

BUFX2 _2362_ (
    .A(_2354_[9]),
    .Y(AB[9])
);

BUFX2 _2363_ (
    .A(_2354_[8]),
    .Y(AB[8])
);

BUFX2 _2364_ (
    .A(_2354__7_bF$buf3),
    .Y(AB[7])
);

BUFX2 _2365_ (
    .A(_2354__6_bF$buf4),
    .Y(AB[6])
);

BUFX2 _2366_ (
    .A(_2354__5_bF$buf4),
    .Y(AB[5])
);

BUFX2 _2367_ (
    .A(_2354__4_bF$buf6),
    .Y(AB[4])
);

BUFX2 _2368_ (
    .A(_2354__3_bF$buf6),
    .Y(AB[3])
);

BUFX2 _2369_ (
    .A(_2354__2_bF$buf5),
    .Y(AB[2])
);

BUFX2 _2370_ (
    .A(_2354__1_bF$buf5),
    .Y(AB[1])
);

BUFX2 _2371_ (
    .A(_2354__0_bF$buf5),
    .Y(AB[0])
);

BUFX2 _2372_ (
    .A(_2353_[7]),
    .Y(DO[7])
);

BUFX2 _2373_ (
    .A(_2353_[6]),
    .Y(DO[6])
);

BUFX2 _2374_ (
    .A(_2353_[5]),
    .Y(DO[5])
);

BUFX2 _2375_ (
    .A(_2353_[4]),
    .Y(DO[4])
);

BUFX2 _2376_ (
    .A(_2353_[3]),
    .Y(DO[3])
);

BUFX2 _2377_ (
    .A(_2353_[2]),
    .Y(DO[2])
);

BUFX2 _2378_ (
    .A(_2353_[1]),
    .Y(DO[1])
);

BUFX2 _2379_ (
    .A(_2353_[0]),
    .Y(DO[0])
);

BUFX2 _2380_ (
    .A(_2352_),
    .Y(WE)
);

BUFX2 _2381_ (
    .A(_2351_),
    .Y(kbd_ack)
);

BUFX2 _2382_ (
    .A(_2350_),
    .Y(dsp_rdy)
);

BUFX2 _2383_ (
    .A(DO_dsp[6]),
    .Y(dsp_data[6])
);

BUFX2 _2384_ (
    .A(DO_dsp[5]),
    .Y(dsp_data[5])
);

BUFX2 _2385_ (
    .A(DO_dsp[4]),
    .Y(dsp_data[4])
);

BUFX2 _2386_ (
    .A(DO_dsp[3]),
    .Y(dsp_data[3])
);

BUFX2 _2387_ (
    .A(DO_dsp[2]),
    .Y(dsp_data[2])
);

BUFX2 _2388_ (
    .A(DO_dsp[1]),
    .Y(dsp_data[1])
);

BUFX2 _2389_ (
    .A(DO_dsp[0]),
    .Y(dsp_data[0])
);

DFFPOSX1 _2390_ (
    .CLK(clk_bF$buf12),
    .D(_2346_[0]),
    .Q(DO_woz[0])
);

DFFPOSX1 _2391_ (
    .CLK(clk_bF$buf11),
    .D(_2346_[1]),
    .Q(DO_woz[1])
);

DFFPOSX1 _2392_ (
    .CLK(clk_bF$buf10),
    .D(_2346_[7]),
    .Q(DO_woz[7])
);

AOI22X1 _2393_ (
    .A(_62_),
    .B(_54_),
    .C(_1427_),
    .D(_70_),
    .Y(_2346_[7])
);

AOI21X1 _2394_ (
    .A(_1426_),
    .B(_1421_),
    .C(_1973_),
    .Y(_1427_)
);

AOI21X1 _2395_ (
    .A(_1425_),
    .B(_1422_),
    .C(_2354__6_bF$buf3),
    .Y(_1426_)
);

AND2X2 _2396_ (
    .A(_1424_),
    .B(_1423_),
    .Y(_1425_)
);

AOI22X1 _2397_ (
    .A(_1660_),
    .B(_2000_),
    .C(_1654_),
    .D(_2354__4_bF$buf5),
    .Y(_1424_)
);

AOI21X1 _2398_ (
    .A(_25_),
    .B(_1634__bF$buf5),
    .C(_1920__bF$buf4),
    .Y(_1423_)
);

OAI21X1 _2399_ (
    .A(_2119_),
    .B(_2073_),
    .C(_1929_),
    .Y(_1422_)
);

OAI21X1 _2400_ (
    .A(_1419_),
    .B(_71_),
    .C(_1420_),
    .Y(_1421_)
);

AOI21X1 _2401_ (
    .A(_1644_),
    .B(_2281_),
    .C(_2354__5_bF$buf3),
    .Y(_1420_)
);

OAI21X1 _2402_ (
    .A(_1643__bF$buf5),
    .B(_2049_),
    .C(_1634__bF$buf4),
    .Y(_1419_)
);

AOI21X1 _2403_ (
    .A(_2072_),
    .B(_25_),
    .C(_2354__3_bF$buf5),
    .Y(_71_)
);

NAND3X1 _2404_ (
    .A(_2354__6_bF$buf2),
    .B(_66_),
    .C(_69_),
    .Y(_70_)
);

OAI21X1 _2405_ (
    .A(_1920__bF$buf3),
    .B(_2060_),
    .C(_68_),
    .Y(_69_)
);

AOI21X1 _2406_ (
    .A(_67_),
    .B(_2109_),
    .C(_1956_),
    .Y(_68_)
);

AOI21X1 _2407_ (
    .A(_1935_),
    .B(_1643__bF$buf4),
    .C(_2354__5_bF$buf2),
    .Y(_67_)
);

OAI21X1 _2408_ (
    .A(_65_),
    .B(_64_),
    .C(_2354__4_bF$buf4),
    .Y(_66_)
);

AOI21X1 _2409_ (
    .A(_2028_),
    .B(_2354__3_bF$buf4),
    .C(_2330_),
    .Y(_65_)
);

AOI21X1 _2410_ (
    .A(_63_),
    .B(_1642_),
    .C(_1920__bF$buf2),
    .Y(_64_)
);

OAI21X1 _2411_ (
    .A(_1961_),
    .B(_1663_),
    .C(_1643__bF$buf3),
    .Y(_63_)
);

AOI21X1 _2412_ (
    .A(_61_),
    .B(_1920__bF$buf1),
    .C(_2354__7_bF$buf2),
    .Y(_62_)
);

AOI22X1 _2413_ (
    .A(_2354__6_bF$buf1),
    .B(_60_),
    .C(_57_),
    .D(_58_),
    .Y(_61_)
);

OAI22X1 _2414_ (
    .A(_2354__0_bF$buf4),
    .B(_1658_),
    .C(_59_),
    .D(_2086_),
    .Y(_60_)
);

OAI21X1 _2415_ (
    .A(_1638__bF$buf3),
    .B(_2354__2_bF$buf4),
    .C(_2000_),
    .Y(_59_)
);

AOI21X1 _2416_ (
    .A(_2018_),
    .B(_2267_),
    .C(_2354__6_bF$buf0),
    .Y(_58_)
);

OAI21X1 _2417_ (
    .A(_2003_),
    .B(_56_),
    .C(_1634__bF$buf3),
    .Y(_57_)
);

AOI22X1 _2418_ (
    .A(_2098_),
    .B(_2037_),
    .C(_1643__bF$buf2),
    .D(_55_),
    .Y(_56_)
);

INVX1 _2419_ (
    .A(_1961_),
    .Y(_55_)
);

NAND3X1 _2420_ (
    .A(_2354__5_bF$buf1),
    .B(_53_),
    .C(_48_),
    .Y(_54_)
);

OAI21X1 _2421_ (
    .A(_2354__4_bF$buf3),
    .B(_50_),
    .C(_52_),
    .Y(_53_)
);

AOI21X1 _2422_ (
    .A(_51_),
    .B(_13_),
    .C(_1923__bF$buf3),
    .Y(_52_)
);

AOI21X1 _2423_ (
    .A(_1647_),
    .B(_1636__bF$buf4),
    .C(_1634__bF$buf2),
    .Y(_51_)
);

AOI22X1 _2424_ (
    .A(_2093_),
    .B(_2054_),
    .C(_49_),
    .D(_2354__3_bF$buf3),
    .Y(_50_)
);

AND2X2 _2425_ (
    .A(_1648_),
    .B(_1649_),
    .Y(_49_)
);

OAI21X1 _2426_ (
    .A(_2354__4_bF$buf2),
    .B(_45_),
    .C(_47_),
    .Y(_48_)
);

AOI21X1 _2427_ (
    .A(_46_),
    .B(_2082_),
    .C(_2354__6_bF$buf4),
    .Y(_47_)
);

INVX1 _2428_ (
    .A(_2301_),
    .Y(_46_)
);

AOI21X1 _2429_ (
    .A(_44_),
    .B(_2354__3_bF$buf2),
    .C(_3_),
    .Y(_45_)
);

OAI21X1 _2430_ (
    .A(_1649_),
    .B(_1651_),
    .C(_1637_),
    .Y(_44_)
);

AOI22X1 _2431_ (
    .A(_34_),
    .B(_43_),
    .C(_21_),
    .D(_1973_),
    .Y(_2346_[0])
);

AOI21X1 _2432_ (
    .A(_42_),
    .B(_39_),
    .C(_1973_),
    .Y(_43_)
);

AOI21X1 _2433_ (
    .A(_41_),
    .B(_2111_),
    .C(_1923__bF$buf2),
    .Y(_42_)
);

AOI21X1 _2434_ (
    .A(_1954_),
    .B(_40_),
    .C(_1920__bF$buf0),
    .Y(_41_)
);

OAI21X1 _2435_ (
    .A(_1638__bF$buf2),
    .B(_1636__bF$buf3),
    .C(_1967_),
    .Y(_40_)
);

OAI21X1 _2436_ (
    .A(_2354__4_bF$buf1),
    .B(_35_),
    .C(_38_),
    .Y(_39_)
);

AOI21X1 _2437_ (
    .A(_1929_),
    .B(_36_),
    .C(_37_),
    .Y(_38_)
);

OAI21X1 _2438_ (
    .A(_1658_),
    .B(_2037_),
    .C(_1920__bF$buf4),
    .Y(_37_)
);

NOR2X1 _2439_ (
    .A(_1649_),
    .B(_1651_),
    .Y(_36_)
);

AOI21X1 _2440_ (
    .A(_1673_),
    .B(_1643__bF$buf1),
    .C(_2051_),
    .Y(_35_)
);

NAND3X1 _2441_ (
    .A(_1923__bF$buf1),
    .B(_28_),
    .C(_33_),
    .Y(_34_)
);

NAND3X1 _2442_ (
    .A(_29_),
    .B(_32_),
    .C(_30_),
    .Y(_33_)
);

INVX1 _2443_ (
    .A(_31_),
    .Y(_32_)
);

NAND3X1 _2444_ (
    .A(_1920__bF$buf3),
    .B(_2258_),
    .C(_2308_),
    .Y(_31_)
);

OR2X2 _2445_ (
    .A(_2095_),
    .B(_2354__4_bF$buf0),
    .Y(_30_)
);

OAI21X1 _2446_ (
    .A(_2156_),
    .B(_2086_),
    .C(_2000_),
    .Y(_29_)
);

OAI21X1 _2447_ (
    .A(_2354__4_bF$buf6),
    .B(_24_),
    .C(_27_),
    .Y(_28_)
);

AOI21X1 _2448_ (
    .A(_2074_),
    .B(_2124_),
    .C(_26_),
    .Y(_27_)
);

OAI21X1 _2449_ (
    .A(_2150_),
    .B(_25_),
    .C(_2354__5_bF$buf0),
    .Y(_26_)
);

OAI21X1 _2450_ (
    .A(_2354__2_bF$buf3),
    .B(_1638__bF$buf1),
    .C(_1635__bF$buf4),
    .Y(_25_)
);

OAI21X1 _2451_ (
    .A(_1643__bF$buf0),
    .B(_22_),
    .C(_23_),
    .Y(_24_)
);

NAND3X1 _2452_ (
    .A(_1643__bF$buf5),
    .B(_1665_),
    .C(_1648_),
    .Y(_23_)
);

OAI21X1 _2453_ (
    .A(_1958_),
    .B(_2130_),
    .C(_1652_),
    .Y(_22_)
);

OAI22X1 _2454_ (
    .A(_16_),
    .B(_20_),
    .C(_2354__6_bF$buf3),
    .D(_11_),
    .Y(_21_)
);

NAND2X1 _2455_ (
    .A(_2354__6_bF$buf2),
    .B(_19_),
    .Y(_20_)
);

OAI21X1 _2456_ (
    .A(_1975_),
    .B(_17_),
    .C(_18_),
    .Y(_19_)
);

AOI21X1 _2457_ (
    .A(_1959_),
    .B(_2354__4_bF$buf5),
    .C(_1920__bF$buf2),
    .Y(_18_)
);

NOR2X1 _2458_ (
    .A(_1938_),
    .B(_2093_),
    .Y(_17_)
);

AOI21X1 _2459_ (
    .A(_15_),
    .B(_12_),
    .C(_2354__5_bF$buf4),
    .Y(_16_)
);

OAI22X1 _2460_ (
    .A(_14_),
    .B(_1960_),
    .C(_2354__4_bF$buf4),
    .D(_1640_),
    .Y(_15_)
);

OAI21X1 _2461_ (
    .A(_2354__1_bF$buf4),
    .B(_13_),
    .C(_2354__4_bF$buf3),
    .Y(_14_)
);

OAI21X1 _2462_ (
    .A(_2354__0_bF$buf3),
    .B(_2354__2_bF$buf2),
    .C(_1643__bF$buf4),
    .Y(_13_)
);

OAI21X1 _2463_ (
    .A(_2086_),
    .B(_2112_),
    .C(_2000_),
    .Y(_12_)
);

AOI22X1 _2464_ (
    .A(_9_),
    .B(_10_),
    .C(_1920__bF$buf1),
    .D(_6_),
    .Y(_11_)
);

AOI21X1 _2465_ (
    .A(_2119_),
    .B(_1659_),
    .C(_1920__bF$buf0),
    .Y(_10_)
);

OAI21X1 _2466_ (
    .A(_8_),
    .B(_7_),
    .C(_2129_),
    .Y(_9_)
);

OAI21X1 _2467_ (
    .A(_1653_),
    .B(_1651_),
    .C(_1634__bF$buf1),
    .Y(_8_)
);

AOI21X1 _2468_ (
    .A(_1664_),
    .B(_1976_),
    .C(_2354__3_bF$buf1),
    .Y(_7_)
);

OAI22X1 _2469_ (
    .A(_3_),
    .B(_5_),
    .C(_4_),
    .D(_2_),
    .Y(_6_)
);

OAI21X1 _2470_ (
    .A(_1653_),
    .B(_2028_),
    .C(_2354__4_bF$buf2),
    .Y(_5_)
);

OAI21X1 _2471_ (
    .A(_2354__3_bF$buf0),
    .B(_1924_),
    .C(_1634__bF$buf0),
    .Y(_4_)
);

OAI21X1 _2472_ (
    .A(_2354__3_bF$buf6),
    .B(_2354__0_bF$buf2),
    .C(_1934_),
    .Y(_3_)
);

NOR2X1 _2473_ (
    .A(_2026_),
    .B(_2028_),
    .Y(_2_)
);

AOI22X1 _2474_ (
    .A(_1_),
    .B(_2340_),
    .C(_2317_),
    .D(_2329_),
    .Y(_2346_[1])
);

AOI21X1 _2475_ (
    .A(_2347_),
    .B(_0_),
    .C(_2354__7_bF$buf1),
    .Y(_1_)
);

AOI21X1 _2476_ (
    .A(_2355_),
    .B(_2348_),
    .C(_1923__bF$buf0),
    .Y(_0_)
);

AOI21X1 _2477_ (
    .A(_2349_),
    .B(_1911_),
    .C(_1920__bF$buf4),
    .Y(_2355_)
);

OAI21X1 _2478_ (
    .A(_1638__bF$buf0),
    .B(_2081_),
    .C(_1643__bF$buf3),
    .Y(_2349_)
);

OAI21X1 _2479_ (
    .A(_1663_),
    .B(_1665_),
    .C(_2286_),
    .Y(_2348_)
);

OAI21X1 _2480_ (
    .A(_2345_),
    .B(_2343_),
    .C(_1920__bF$buf3),
    .Y(_2347_)
);

AOI21X1 _2481_ (
    .A(_2344_),
    .B(_1925_),
    .C(_2354__4_bF$buf1),
    .Y(_2345_)
);

AOI21X1 _2482_ (
    .A(_1967_),
    .B(_2354__2_bF$buf1),
    .C(_2354__0_bF$buf1),
    .Y(_2344_)
);

AND2X2 _2483_ (
    .A(_2342_),
    .B(_2341_),
    .Y(_2343_)
);

OAI21X1 _2484_ (
    .A(_1994_),
    .B(_1995_),
    .C(_2354__3_bF$buf5),
    .Y(_2342_)
);

OAI21X1 _2485_ (
    .A(_1661_),
    .B(_1660_),
    .C(_1658_),
    .Y(_2341_)
);

NAND2X1 _2486_ (
    .A(_2339_),
    .B(_2334_),
    .Y(_2340_)
);

AOI21X1 _2487_ (
    .A(_2338_),
    .B(_2337_),
    .C(_2354__6_bF$buf1),
    .Y(_2339_)
);

AND2X2 _2488_ (
    .A(_2295_),
    .B(_1634__bF$buf5),
    .Y(_2338_)
);

NAND2X1 _2489_ (
    .A(_2336_),
    .B(_2335_),
    .Y(_2337_)
);

OAI21X1 _2490_ (
    .A(_2354__3_bF$buf4),
    .B(_1928_),
    .C(_2354__5_bF$buf3),
    .Y(_2336_)
);

OAI21X1 _2491_ (
    .A(_2053_),
    .B(_1980_),
    .C(_1920__bF$buf2),
    .Y(_2335_)
);

OAI21X1 _2492_ (
    .A(_2331_),
    .B(_2333_),
    .C(_2354__4_bF$buf0),
    .Y(_2334_)
);

AOI21X1 _2493_ (
    .A(_1643__bF$buf2),
    .B(_1673_),
    .C(_2332_),
    .Y(_2333_)
);

OAI21X1 _2494_ (
    .A(_1957_),
    .B(_1958_),
    .C(_2354__5_bF$buf2),
    .Y(_2332_)
);

NOR2X1 _2495_ (
    .A(_2330_),
    .B(_2128_),
    .Y(_2331_)
);

OAI21X1 _2496_ (
    .A(_2354__3_bF$buf3),
    .B(_2354__0_bF$buf0),
    .C(_1920__bF$buf1),
    .Y(_2330_)
);

AOI21X1 _2497_ (
    .A(_2328_),
    .B(_2321_),
    .C(_1973_),
    .Y(_2329_)
);

AOI21X1 _2498_ (
    .A(_2327_),
    .B(_2323_),
    .C(_1923__bF$buf3),
    .Y(_2328_)
);

AOI21X1 _2499_ (
    .A(_1928_),
    .B(_2077_),
    .C(_2326_),
    .Y(_2327_)
);

OAI21X1 _2500_ (
    .A(_2324_),
    .B(_2325_),
    .C(_1920__bF$buf0),
    .Y(_2326_)
);

OAI21X1 _2501_ (
    .A(_1635__bF$buf3),
    .B(_1636__bF$buf2),
    .C(_2000_),
    .Y(_2325_)
);

AOI21X1 _2502_ (
    .A(_2354__1_bF$buf3),
    .B(_2354__0_bF$buf5),
    .C(_2354__2_bF$buf0),
    .Y(_2324_)
);

OAI21X1 _2503_ (
    .A(_1651_),
    .B(_1652_),
    .C(_2322_),
    .Y(_2323_)
);

AOI21X1 _2504_ (
    .A(_2002_),
    .B(_2354__2_bF$buf5),
    .C(_2150_),
    .Y(_2322_)
);

NAND3X1 _2505_ (
    .A(_2354__5_bF$buf1),
    .B(_2320_),
    .C(_2319_),
    .Y(_2321_)
);

OAI21X1 _2506_ (
    .A(_1915_),
    .B(_1918_),
    .C(_1662_),
    .Y(_2320_)
);

OAI21X1 _2507_ (
    .A(_2318_),
    .B(_2025_),
    .C(_1634__bF$buf4),
    .Y(_2319_)
);

NOR2X1 _2508_ (
    .A(_2354__0_bF$buf4),
    .B(_1949_),
    .Y(_2318_)
);

NAND2X1 _2509_ (
    .A(_1923__bF$buf2),
    .B(_2316_),
    .Y(_2317_)
);

NAND2X1 _2510_ (
    .A(_2315_),
    .B(_2310_),
    .Y(_2316_)
);

NAND3X1 _2511_ (
    .A(_2354__5_bF$buf0),
    .B(_2314_),
    .C(_2312_),
    .Y(_2315_)
);

OAI21X1 _2512_ (
    .A(_2123_),
    .B(_2065_),
    .C(_2313_),
    .Y(_2314_)
);

AOI21X1 _2513_ (
    .A(_1994_),
    .B(_1643__bF$buf1),
    .C(_2354__4_bF$buf6),
    .Y(_2313_)
);

NAND3X1 _2514_ (
    .A(_2289_),
    .B(_2311_),
    .C(_1940_),
    .Y(_2312_)
);

OAI21X1 _2515_ (
    .A(_1635__bF$buf2),
    .B(_1660_),
    .C(_2034_),
    .Y(_2311_)
);

OAI21X1 _2516_ (
    .A(_2309_),
    .B(_2305_),
    .C(_1920__bF$buf4),
    .Y(_2310_)
);

NAND3X1 _2517_ (
    .A(_2306_),
    .B(_2307_),
    .C(_2308_),
    .Y(_2309_)
);

NAND3X1 _2518_ (
    .A(_2088_),
    .B(_1929_),
    .C(_1994_),
    .Y(_2308_)
);

NAND3X1 _2519_ (
    .A(_1649_),
    .B(_1924_),
    .C(_1659_),
    .Y(_2307_)
);

OAI21X1 _2520_ (
    .A(_1961_),
    .B(_1647_),
    .C(_2000_),
    .Y(_2306_)
);

NOR2X1 _2521_ (
    .A(_2354__4_bF$buf5),
    .B(_2294_),
    .Y(_2305_)
);

OAI22X1 _2522_ (
    .A(_1973_),
    .B(_2304_),
    .C(_2274_),
    .D(_2285_),
    .Y(_2346_[2])
);

MUX2X1 _2523_ (
    .A(_2303_),
    .B(_2293_),
    .S(_2354__5_bF$buf4),
    .Y(_2304_)
);

OAI22X1 _2524_ (
    .A(_2354__6_bF$buf0),
    .B(_2297_),
    .C(_2302_),
    .D(_2300_),
    .Y(_2303_)
);

OAI21X1 _2525_ (
    .A(_2301_),
    .B(_2110_),
    .C(_2354__6_bF$buf4),
    .Y(_2302_)
);

OAI21X1 _2526_ (
    .A(_1935_),
    .B(_1936_),
    .C(_2354__4_bF$buf4),
    .Y(_2301_)
);

NAND2X1 _2527_ (
    .A(_2279_),
    .B(_2299_),
    .Y(_2300_)
);

OAI21X1 _2528_ (
    .A(_1635__bF$buf1),
    .B(_2298_),
    .C(_1634__bF$buf3),
    .Y(_2299_)
);

INVX1 _2529_ (
    .A(_2060_),
    .Y(_2298_)
);

AOI22X1 _2530_ (
    .A(_2295_),
    .B(_2296_),
    .C(_1997_),
    .D(_2294_),
    .Y(_2297_)
);

AOI21X1 _2531_ (
    .A(_2050_),
    .B(_1643__bF$buf0),
    .C(_2354__4_bF$buf3),
    .Y(_2296_)
);

NAND3X1 _2532_ (
    .A(_1635__bF$buf0),
    .B(_1935_),
    .C(_2098_),
    .Y(_2295_)
);

OAI21X1 _2533_ (
    .A(_1649_),
    .B(_1651_),
    .C(_2007_),
    .Y(_2294_)
);

MUX2X1 _2534_ (
    .A(_2288_),
    .B(_2292_),
    .S(_2354__6_bF$buf3),
    .Y(_2293_)
);

AOI22X1 _2535_ (
    .A(_2354__4_bF$buf2),
    .B(_2290_),
    .C(_2291_),
    .D(_2289_),
    .Y(_2292_)
);

NOR2X1 _2536_ (
    .A(_1916_),
    .B(_2254_),
    .Y(_2291_)
);

OAI21X1 _2537_ (
    .A(_1961_),
    .B(_1949_),
    .C(_1964_),
    .Y(_2290_)
);

NAND2X1 _2538_ (
    .A(_2354__2_bF$buf4),
    .B(_1915_),
    .Y(_2289_)
);

AOI21X1 _2539_ (
    .A(_2286_),
    .B(_1928_),
    .C(_2287_),
    .Y(_2288_)
);

AOI21X1 _2540_ (
    .A(_2354__3_bF$buf2),
    .B(_1917_),
    .C(_2254_),
    .Y(_2287_)
);

NOR2X1 _2541_ (
    .A(_1634__bF$buf2),
    .B(_2098_),
    .Y(_2286_)
);

OAI21X1 _2542_ (
    .A(_1920__bF$buf3),
    .B(_2284_),
    .C(_1973_),
    .Y(_2285_)
);

AOI22X1 _2543_ (
    .A(_2280_),
    .B(_2283_),
    .C(_2278_),
    .D(_1923__bF$buf1),
    .Y(_2284_)
);

AOI21X1 _2544_ (
    .A(_2282_),
    .B(_2281_),
    .C(_1923__bF$buf0),
    .Y(_2283_)
);

OAI21X1 _2545_ (
    .A(_2354__3_bF$buf1),
    .B(_1916_),
    .C(_1944_),
    .Y(_2282_)
);

INVX1 _2546_ (
    .A(_2116_),
    .Y(_2281_)
);

OR2X2 _2547_ (
    .A(_2279_),
    .B(_1635__bF$buf4),
    .Y(_2280_)
);

NAND2X1 _2548_ (
    .A(_2000_),
    .B(_1663_),
    .Y(_2279_)
);

OAI21X1 _2549_ (
    .A(_2275_),
    .B(_2276_),
    .C(_2277_),
    .Y(_2278_)
);

AOI22X1 _2550_ (
    .A(_1659_),
    .B(_2049_),
    .C(_2010_),
    .D(_1929_),
    .Y(_2277_)
);

OAI21X1 _2551_ (
    .A(_2354__2_bF$buf3),
    .B(_2024_),
    .C(_1634__bF$buf1),
    .Y(_2276_)
);

AOI21X1 _2552_ (
    .A(_2354__1_bF$buf2),
    .B(_1935_),
    .C(_1925_),
    .Y(_2275_)
);

AOI21X1 _2553_ (
    .A(_2273_),
    .B(_2266_),
    .C(_2354__5_bF$buf3),
    .Y(_2274_)
);

NAND2X1 _2554_ (
    .A(_2269_),
    .B(_2272_),
    .Y(_2273_)
);

AOI21X1 _2555_ (
    .A(_1659_),
    .B(_2270_),
    .C(_2271_),
    .Y(_2272_)
);

OAI21X1 _2556_ (
    .A(_2150_),
    .B(_1648_),
    .C(_1923__bF$buf3),
    .Y(_2271_)
);

OAI21X1 _2557_ (
    .A(_1636__bF$buf1),
    .B(_2001_),
    .C(_1980_),
    .Y(_2270_)
);

OAI21X1 _2558_ (
    .A(_2268_),
    .B(_1937_),
    .C(_1634__bF$buf0),
    .Y(_2269_)
);

INVX1 _2559_ (
    .A(_2267_),
    .Y(_2268_)
);

NAND3X1 _2560_ (
    .A(_2354__3_bF$buf0),
    .B(_1635__bF$buf3),
    .C(_1641_),
    .Y(_2267_)
);

NAND2X1 _2561_ (
    .A(_2354__6_bF$buf2),
    .B(_2265_),
    .Y(_2266_)
);

NAND2X1 _2562_ (
    .A(_2264_),
    .B(_2158_),
    .Y(_2265_)
);

NAND2X1 _2563_ (
    .A(_2263_),
    .B(_2019_),
    .Y(_2264_)
);

AOI21X1 _2564_ (
    .A(_1638__bF$buf3),
    .B(_2354__3_bF$buf6),
    .C(_2354__4_bF$buf1),
    .Y(_2263_)
);

AOI22X1 _2565_ (
    .A(_2155_),
    .B(_2262_),
    .C(_2127_),
    .D(_2142_),
    .Y(_2346_[3])
);

AOI21X1 _2566_ (
    .A(_2261_),
    .B(_2257_),
    .C(_2354__5_bF$buf2),
    .Y(_2262_)
);

AOI21X1 _2567_ (
    .A(_2260_),
    .B(_2258_),
    .C(_1923__bF$buf2),
    .Y(_2261_)
);

AOI21X1 _2568_ (
    .A(_1954_),
    .B(_2259_),
    .C(_1973_),
    .Y(_2260_)
);

NAND3X1 _2569_ (
    .A(_1643__bF$buf5),
    .B(_1928_),
    .C(_1664_),
    .Y(_2259_)
);

OAI21X1 _2570_ (
    .A(_1651_),
    .B(_1652_),
    .C(_1659_),
    .Y(_2258_)
);

OAI21X1 _2571_ (
    .A(_2157_),
    .B(_2158_),
    .C(_2256_),
    .Y(_2257_)
);

AOI21X1 _2572_ (
    .A(_2255_),
    .B(_2099_),
    .C(_2354__7_bF$buf0),
    .Y(_2256_)
);

NOR2X1 _2573_ (
    .A(_2254_),
    .B(_1995_),
    .Y(_2255_)
);

OAI21X1 _2574_ (
    .A(_2354__1_bF$buf1),
    .B(_1638__bF$buf2),
    .C(_1634__bF$buf5),
    .Y(_2254_)
);

OAI21X1 _2575_ (
    .A(_1643__bF$buf4),
    .B(_1980_),
    .C(_2354__4_bF$buf0),
    .Y(_2158_)
);

NOR2X1 _2576_ (
    .A(_2067_),
    .B(_2156_),
    .Y(_2157_)
);

NOR2X1 _2577_ (
    .A(_2354__2_bF$buf2),
    .B(_2001_),
    .Y(_2156_)
);

OAI21X1 _2578_ (
    .A(_2154_),
    .B(_2148_),
    .C(_1923__bF$buf1),
    .Y(_2155_)
);

AOI21X1 _2579_ (
    .A(_2153_),
    .B(_1959_),
    .C(_1973_),
    .Y(_2154_)
);

OAI21X1 _2580_ (
    .A(_2152_),
    .B(_2149_),
    .C(_2151_),
    .Y(_2153_)
);

OAI21X1 _2581_ (
    .A(_2354__2_bF$buf1),
    .B(_1638__bF$buf1),
    .C(_2354__4_bF$buf6),
    .Y(_2152_)
);

OAI21X1 _2582_ (
    .A(_2354__3_bF$buf5),
    .B(_2002_),
    .C(_2150_),
    .Y(_2151_)
);

NAND2X1 _2583_ (
    .A(_2354__4_bF$buf5),
    .B(_1643__bF$buf3),
    .Y(_2150_)
);

NOR2X1 _2584_ (
    .A(_2354__1_bF$buf0),
    .B(_1935_),
    .Y(_2149_)
);

AOI21X1 _2585_ (
    .A(_2147_),
    .B(_2145_),
    .C(_2354__7_bF$buf3),
    .Y(_2148_)
);

NOR2X1 _2586_ (
    .A(_2077_),
    .B(_2146_),
    .Y(_2147_)
);

NOR2X1 _2587_ (
    .A(_2024_),
    .B(_2130_),
    .Y(_2146_)
);

OAI21X1 _2588_ (
    .A(_2144_),
    .B(_2143_),
    .C(_1634__bF$buf4),
    .Y(_2145_)
);

NOR2X1 _2589_ (
    .A(_2354__2_bF$buf0),
    .B(_2088_),
    .Y(_2144_)
);

NOR2X1 _2590_ (
    .A(_1957_),
    .B(_1958_),
    .Y(_2143_)
);

AOI21X1 _2591_ (
    .A(_2141_),
    .B(_2135_),
    .C(_1920__bF$buf2),
    .Y(_2142_)
);

AOI21X1 _2592_ (
    .A(_2140_),
    .B(_2137_),
    .C(_2354__7_bF$buf2),
    .Y(_2141_)
);

AOI21X1 _2593_ (
    .A(_2139_),
    .B(_2138_),
    .C(_1923__bF$buf0),
    .Y(_2140_)
);

OAI21X1 _2594_ (
    .A(_1643__bF$buf2),
    .B(_2130_),
    .C(_1644_),
    .Y(_2139_)
);

NOR2X1 _2595_ (
    .A(_1634__bF$buf3),
    .B(_1663_),
    .Y(_2138_)
);

NAND2X1 _2596_ (
    .A(_1634__bF$buf2),
    .B(_2136_),
    .Y(_2137_)
);

OAI21X1 _2597_ (
    .A(_1994_),
    .B(_1964_),
    .C(_1925_),
    .Y(_2136_)
);

NAND3X1 _2598_ (
    .A(_1923__bF$buf3),
    .B(_2134_),
    .C(_2132_),
    .Y(_2135_)
);

OAI21X1 _2599_ (
    .A(_2354__1_bF$buf5),
    .B(_1961_),
    .C(_2133_),
    .Y(_2134_)
);

AND2X2 _2600_ (
    .A(_2000_),
    .B(_1641_),
    .Y(_2133_)
);

OAI22X1 _2601_ (
    .A(_2354__4_bF$buf4),
    .B(_2128_),
    .C(_2129_),
    .D(_2131_),
    .Y(_2132_)
);

NOR2X1 _2602_ (
    .A(_2043_),
    .B(_2130_),
    .Y(_2131_)
);

NOR2X1 _2603_ (
    .A(_2354__0_bF$buf3),
    .B(_1635__bF$buf2),
    .Y(_2130_)
);

OAI21X1 _2604_ (
    .A(_1647_),
    .B(_1644_),
    .C(_2354__4_bF$buf3),
    .Y(_2129_)
);

NOR2X1 _2605_ (
    .A(_2048_),
    .B(_1938_),
    .Y(_2128_)
);

NAND2X1 _2606_ (
    .A(_2126_),
    .B(_2115_),
    .Y(_2127_)
);

AOI21X1 _2607_ (
    .A(_2122_),
    .B(_2125_),
    .C(_1973_),
    .Y(_2126_)
);

AOI22X1 _2608_ (
    .A(_2123_),
    .B(_1929_),
    .C(_1924_),
    .D(_2124_),
    .Y(_2125_)
);

AOI21X1 _2609_ (
    .A(_2060_),
    .B(_1653_),
    .C(_1634__bF$buf1),
    .Y(_2124_)
);

INVX1 _2610_ (
    .A(_2006_),
    .Y(_2123_)
);

AOI21X1 _2611_ (
    .A(_2120_),
    .B(_2121_),
    .C(_2117_),
    .Y(_2122_)
);

OAI21X1 _2612_ (
    .A(_1643__bF$buf1),
    .B(_2354__0_bF$buf2),
    .C(_2081_),
    .Y(_2121_)
);

NOR2X1 _2613_ (
    .A(_2354__4_bF$buf2),
    .B(_2119_),
    .Y(_2120_)
);

OAI21X1 _2614_ (
    .A(_2354__1_bF$buf4),
    .B(_2354__0_bF$buf1),
    .C(_2118_),
    .Y(_2119_)
);

NAND2X1 _2615_ (
    .A(_2354__2_bF$buf5),
    .B(_1635__bF$buf1),
    .Y(_2118_)
);

OAI21X1 _2616_ (
    .A(_2116_),
    .B(_1934_),
    .C(_1923__bF$buf2),
    .Y(_2117_)
);

NAND2X1 _2617_ (
    .A(_2354__0_bF$buf0),
    .B(_2354__4_bF$buf1),
    .Y(_2116_)
);

NAND3X1 _2618_ (
    .A(_2354__6_bF$buf1),
    .B(_2111_),
    .C(_2114_),
    .Y(_2115_)
);

OAI21X1 _2619_ (
    .A(_1943_),
    .B(_2113_),
    .C(_1634__bF$buf0),
    .Y(_2114_)
);

AOI21X1 _2620_ (
    .A(_2354__3_bF$buf4),
    .B(_1641_),
    .C(_2112_),
    .Y(_2113_)
);

NOR2X1 _2621_ (
    .A(_1651_),
    .B(_1652_),
    .Y(_2112_)
);

OAI21X1 _2622_ (
    .A(_2110_),
    .B(_1937_),
    .C(_2354__4_bF$buf0),
    .Y(_2111_)
);

NOR2X1 _2623_ (
    .A(_1916_),
    .B(_2109_),
    .Y(_2110_)
);

NAND3X1 _2624_ (
    .A(_2354__3_bF$buf3),
    .B(_2354__0_bF$buf5),
    .C(_1944_),
    .Y(_2109_)
);

OAI21X1 _2625_ (
    .A(_2354__7_bF$buf1),
    .B(_2080_),
    .C(_2108_),
    .Y(_2346_[4])
);

NAND3X1 _2626_ (
    .A(_2354__7_bF$buf0),
    .B(_2092_),
    .C(_2107_),
    .Y(_2108_)
);

NAND3X1 _2627_ (
    .A(_1923__bF$buf1),
    .B(_2106_),
    .C(_2102_),
    .Y(_2107_)
);

NAND3X1 _2628_ (
    .A(_1920__bF$buf1),
    .B(_2104_),
    .C(_2105_),
    .Y(_2106_)
);

OAI21X1 _2629_ (
    .A(_1638__bF$buf0),
    .B(_1949_),
    .C(_1979_),
    .Y(_2105_)
);

OAI21X1 _2630_ (
    .A(_1647_),
    .B(_2103_),
    .C(_1634__bF$buf5),
    .Y(_2104_)
);

OAI21X1 _2631_ (
    .A(_2354__2_bF$buf4),
    .B(_1643__bF$buf0),
    .C(_1924_),
    .Y(_2103_)
);

NAND2X1 _2632_ (
    .A(_2101_),
    .B(_2097_),
    .Y(_2102_)
);

AOI21X1 _2633_ (
    .A(_2100_),
    .B(_2099_),
    .C(_1920__bF$buf0),
    .Y(_2101_)
);

AOI21X1 _2634_ (
    .A(_2037_),
    .B(_1963_),
    .C(_2354__4_bF$buf6),
    .Y(_2100_)
);

NAND2X1 _2635_ (
    .A(_2354__1_bF$buf3),
    .B(_2098_),
    .Y(_2099_)
);

AOI21X1 _2636_ (
    .A(_1636__bF$buf0),
    .B(_2354__0_bF$buf4),
    .C(_1643__bF$buf5),
    .Y(_2098_)
);

NAND3X1 _2637_ (
    .A(_2354__4_bF$buf5),
    .B(_2095_),
    .C(_2096_),
    .Y(_2097_)
);

NAND2X1 _2638_ (
    .A(_2054_),
    .B(_2093_),
    .Y(_2096_)
);

NAND2X1 _2639_ (
    .A(_2094_),
    .B(_2093_),
    .Y(_2095_)
);

NOR2X1 _2640_ (
    .A(_1653_),
    .B(_1651_),
    .Y(_2094_)
);

NOR2X1 _2641_ (
    .A(_1961_),
    .B(_1663_),
    .Y(_2093_)
);

NAND3X1 _2642_ (
    .A(_2354__6_bF$buf0),
    .B(_2085_),
    .C(_2091_),
    .Y(_2092_)
);

NAND3X1 _2643_ (
    .A(_2354__5_bF$buf1),
    .B(_2087_),
    .C(_2090_),
    .Y(_2091_)
);

OAI21X1 _2644_ (
    .A(_2089_),
    .B(_2060_),
    .C(_1992_),
    .Y(_2090_)
);

INVX1 _2645_ (
    .A(_2088_),
    .Y(_2089_)
);

NAND2X1 _2646_ (
    .A(_2354__0_bF$buf3),
    .B(_1635__bF$buf0),
    .Y(_2088_)
);

OAI21X1 _2647_ (
    .A(_2354__3_bF$buf2),
    .B(_2086_),
    .C(_1940_),
    .Y(_2087_)
);

AOI21X1 _2648_ (
    .A(_2002_),
    .B(_1924_),
    .C(_1636__bF$buf4),
    .Y(_2086_)
);

NAND3X1 _2649_ (
    .A(_1920__bF$buf4),
    .B(_2084_),
    .C(_2083_),
    .Y(_2085_)
);

OAI21X1 _2650_ (
    .A(_2354__0_bF$buf2),
    .B(_1928_),
    .C(_2354__4_bF$buf4),
    .Y(_2084_)
);

NAND2X1 _2651_ (
    .A(_1634__bF$buf4),
    .B(_2082_),
    .Y(_2083_)
);

OAI21X1 _2652_ (
    .A(_2354__3_bF$buf1),
    .B(_2081_),
    .C(_2026_),
    .Y(_2082_)
);

NOR2X1 _2653_ (
    .A(_2354__2_bF$buf3),
    .B(_1635__bF$buf4),
    .Y(_2081_)
);

AOI22X1 _2654_ (
    .A(_2071_),
    .B(_2079_),
    .C(_2057_),
    .D(_2064_),
    .Y(_2080_)
);

AOI21X1 _2655_ (
    .A(_2076_),
    .B(_2078_),
    .C(_1923__bF$buf0),
    .Y(_2079_)
);

AOI21X1 _2656_ (
    .A(_1918_),
    .B(_2077_),
    .C(_1920__bF$buf3),
    .Y(_2078_)
);

NOR2X1 _2657_ (
    .A(_1634__bF$buf3),
    .B(_1653_),
    .Y(_2077_)
);

OAI21X1 _2658_ (
    .A(_2354__3_bF$buf0),
    .B(_2073_),
    .C(_2075_),
    .Y(_2076_)
);

AOI21X1 _2659_ (
    .A(_2074_),
    .B(_2034_),
    .C(_2354__4_bF$buf3),
    .Y(_2075_)
);

NAND2X1 _2660_ (
    .A(_1636__bF$buf3),
    .B(_1651_),
    .Y(_2074_)
);

INVX1 _2661_ (
    .A(_2072_),
    .Y(_2073_)
);

OAI21X1 _2662_ (
    .A(_1917_),
    .B(_1651_),
    .C(_1641_),
    .Y(_2072_)
);

NAND2X1 _2663_ (
    .A(_1920__bF$buf2),
    .B(_2070_),
    .Y(_2071_)
);

OAI21X1 _2664_ (
    .A(_2069_),
    .B(_2066_),
    .C(_2068_),
    .Y(_2070_)
);

OAI21X1 _2665_ (
    .A(_1935_),
    .B(_1936_),
    .C(_1634__bF$buf2),
    .Y(_2069_)
);

NAND3X1 _2666_ (
    .A(_2354__4_bF$buf2),
    .B(_2067_),
    .C(_2035_),
    .Y(_2068_)
);

OAI21X1 _2667_ (
    .A(_2354__1_bF$buf2),
    .B(_1961_),
    .C(_1643__bF$buf4),
    .Y(_2067_)
);

INVX1 _2668_ (
    .A(_2065_),
    .Y(_2066_)
);

OAI21X1 _2669_ (
    .A(_2354__2_bF$buf2),
    .B(_1924_),
    .C(_2020_),
    .Y(_2065_)
);

AOI21X1 _2670_ (
    .A(_2062_),
    .B(_2063_),
    .C(_2354__6_bF$buf4),
    .Y(_2064_)
);

AOI21X1 _2671_ (
    .A(_1929_),
    .B(_1665_),
    .C(_2354__5_bF$buf0),
    .Y(_2063_)
);

OAI22X1 _2672_ (
    .A(_1634__bF$buf1),
    .B(_2058_),
    .C(_2059_),
    .D(_2061_),
    .Y(_2062_)
);

OAI21X1 _2673_ (
    .A(_1635__bF$buf3),
    .B(_2060_),
    .C(_2010_),
    .Y(_2061_)
);

NAND2X1 _2674_ (
    .A(_2354__3_bF$buf6),
    .B(_1636__bF$buf2),
    .Y(_2060_)
);

OAI21X1 _2675_ (
    .A(_2354__3_bF$buf5),
    .B(_1637_),
    .C(_1634__bF$buf0),
    .Y(_2059_)
);

AOI21X1 _2676_ (
    .A(_1637_),
    .B(_1909_),
    .C(_1639_),
    .Y(_2058_)
);

NAND2X1 _2677_ (
    .A(_2052_),
    .B(_2056_),
    .Y(_2057_)
);

AOI21X1 _2678_ (
    .A(_2055_),
    .B(_1655_),
    .C(_1920__bF$buf1),
    .Y(_2056_)
);

AOI21X1 _2679_ (
    .A(_2054_),
    .B(_1909_),
    .C(_1634__bF$buf5),
    .Y(_2055_)
);

INVX1 _2680_ (
    .A(_2053_),
    .Y(_2054_)
);

OAI21X1 _2681_ (
    .A(_2354__1_bF$buf1),
    .B(_2354__2_bF$buf1),
    .C(_1643__bF$buf3),
    .Y(_2053_)
);

OAI21X1 _2682_ (
    .A(_1991_),
    .B(_2051_),
    .C(_1634__bF$buf4),
    .Y(_2052_)
);

AOI21X1 _2683_ (
    .A(_2049_),
    .B(_2050_),
    .C(_1643__bF$buf2),
    .Y(_2051_)
);

OAI21X1 _2684_ (
    .A(_2354__1_bF$buf0),
    .B(_2354__2_bF$buf0),
    .C(_2354__0_bF$buf1),
    .Y(_2050_)
);

INVX1 _2685_ (
    .A(_2048_),
    .Y(_2049_)
);

AOI21X1 _2686_ (
    .A(_2354__1_bF$buf5),
    .B(_2354__2_bF$buf5),
    .C(_2354__0_bF$buf0),
    .Y(_2048_)
);

OAI21X1 _2687_ (
    .A(_2047_),
    .B(_2032_),
    .C(_2014_),
    .Y(_2346_[5])
);

OAI21X1 _2688_ (
    .A(_2046_),
    .B(_2040_),
    .C(_2354__7_bF$buf3),
    .Y(_2047_)
);

OAI21X1 _2689_ (
    .A(_2045_),
    .B(_2041_),
    .C(_2354__6_bF$buf3),
    .Y(_2046_)
);

OAI21X1 _2690_ (
    .A(_2044_),
    .B(_2042_),
    .C(_2354__5_bF$buf4),
    .Y(_2045_)
);

OAI21X1 _2691_ (
    .A(_2043_),
    .B(_1660_),
    .C(_1634__bF$buf3),
    .Y(_2044_)
);

OAI21X1 _2692_ (
    .A(_2354__2_bF$buf4),
    .B(_1638__bF$buf3),
    .C(_2354__3_bF$buf4),
    .Y(_2043_)
);

AOI21X1 _2693_ (
    .A(_1636__bF$buf1),
    .B(_1647_),
    .C(_1964_),
    .Y(_2042_)
);

AND2X2 _2694_ (
    .A(_1940_),
    .B(_1987_),
    .Y(_2041_)
);

AOI21X1 _2695_ (
    .A(_2036_),
    .B(_2039_),
    .C(_2354__5_bF$buf3),
    .Y(_2040_)
);

NAND2X1 _2696_ (
    .A(_2354__4_bF$buf1),
    .B(_2038_),
    .Y(_2039_)
);

OAI21X1 _2697_ (
    .A(_2354__0_bF$buf5),
    .B(_2037_),
    .C(_1644_),
    .Y(_2038_)
);

NAND2X1 _2698_ (
    .A(_1635__bF$buf2),
    .B(_1636__bF$buf0),
    .Y(_2037_)
);

NAND2X1 _2699_ (
    .A(_2035_),
    .B(_2033_),
    .Y(_2036_)
);

NAND3X1 _2700_ (
    .A(_1652_),
    .B(_1935_),
    .C(_2034_),
    .Y(_2035_)
);

AOI21X1 _2701_ (
    .A(_1635__bF$buf1),
    .B(_2354__2_bF$buf3),
    .C(_1643__bF$buf1),
    .Y(_2034_)
);

AOI21X1 _2702_ (
    .A(_1918_),
    .B(_1915_),
    .C(_2354__4_bF$buf0),
    .Y(_2033_)
);

NOR3X1 _2703_ (
    .A(_2354__6_bF$buf2),
    .B(_2023_),
    .C(_2031_),
    .Y(_2032_)
);

NOR2X1 _2704_ (
    .A(_1920__bF$buf0),
    .B(_2030_),
    .Y(_2031_)
);

OAI21X1 _2705_ (
    .A(_2027_),
    .B(_2025_),
    .C(_2029_),
    .Y(_2030_)
);

NAND2X1 _2706_ (
    .A(_1929_),
    .B(_2028_),
    .Y(_2029_)
);

NOR2X1 _2707_ (
    .A(_2354__2_bF$buf2),
    .B(_1924_),
    .Y(_2028_)
);

NAND2X1 _2708_ (
    .A(_1634__bF$buf2),
    .B(_2026_),
    .Y(_2027_)
);

OAI21X1 _2709_ (
    .A(_2354__0_bF$buf4),
    .B(_1944_),
    .C(_2354__3_bF$buf3),
    .Y(_2026_)
);

AOI21X1 _2710_ (
    .A(_1637_),
    .B(_1909_),
    .C(_2024_),
    .Y(_2025_)
);

OAI21X1 _2711_ (
    .A(_2354__1_bF$buf4),
    .B(_1638__bF$buf2),
    .C(_1643__bF$buf0),
    .Y(_2024_)
);

AOI21X1 _2712_ (
    .A(_2017_),
    .B(_2022_),
    .C(_2354__5_bF$buf2),
    .Y(_2023_)
);

NAND3X1 _2713_ (
    .A(_2019_),
    .B(_2018_),
    .C(_2021_),
    .Y(_2022_)
);

OAI21X1 _2714_ (
    .A(_1663_),
    .B(_1961_),
    .C(_2020_),
    .Y(_2021_)
);

INVX1 _2715_ (
    .A(_1653_),
    .Y(_2020_)
);

NAND2X1 _2716_ (
    .A(_1967_),
    .B(_1984_),
    .Y(_2019_)
);

OAI21X1 _2717_ (
    .A(_1643__bF$buf5),
    .B(_1634__bF$buf1),
    .C(_1661_),
    .Y(_2018_)
);

OAI21X1 _2718_ (
    .A(_2016_),
    .B(_2015_),
    .C(_1634__bF$buf0),
    .Y(_2017_)
);

OAI21X1 _2719_ (
    .A(_2354__0_bF$buf3),
    .B(_1643__bF$buf4),
    .C(_1924_),
    .Y(_2016_)
);

NOR2X1 _2720_ (
    .A(_1663_),
    .B(_1936_),
    .Y(_2015_)
);

NAND3X1 _2721_ (
    .A(_1973_),
    .B(_1990_),
    .C(_2013_),
    .Y(_2014_)
);

NAND3X1 _2722_ (
    .A(_2354__5_bF$buf1),
    .B(_2012_),
    .C(_1999_),
    .Y(_2013_)
);

NAND3X1 _2723_ (
    .A(_2009_),
    .B(_2011_),
    .C(_2005_),
    .Y(_2012_)
);

NAND3X1 _2724_ (
    .A(_1634__bF$buf5),
    .B(_2007_),
    .C(_2010_),
    .Y(_2011_)
);

OAI21X1 _2725_ (
    .A(_1663_),
    .B(_1917_),
    .C(_1924_),
    .Y(_2010_)
);

OAI21X1 _2726_ (
    .A(_2354__3_bF$buf2),
    .B(_2006_),
    .C(_2008_),
    .Y(_2009_)
);

AOI21X1 _2727_ (
    .A(_2007_),
    .B(_2001_),
    .C(_1634__bF$buf4),
    .Y(_2008_)
);

INVX1 _2728_ (
    .A(_1949_),
    .Y(_2007_)
);

OAI21X1 _2729_ (
    .A(_1635__bF$buf0),
    .B(_1638__bF$buf1),
    .C(_2354__2_bF$buf1),
    .Y(_2006_)
);

AOI21X1 _2730_ (
    .A(_2004_),
    .B(_2000_),
    .C(_2354__6_bF$buf1),
    .Y(_2005_)
);

AOI22X1 _2731_ (
    .A(_1636__bF$buf4),
    .B(_2002_),
    .C(_2003_),
    .D(_2001_),
    .Y(_2004_)
);

OAI21X1 _2732_ (
    .A(_2354__0_bF$buf2),
    .B(_1636__bF$buf3),
    .C(_1944_),
    .Y(_2003_)
);

NAND2X1 _2733_ (
    .A(_1635__bF$buf4),
    .B(_1638__bF$buf0),
    .Y(_2002_)
);

NAND2X1 _2734_ (
    .A(_2354__1_bF$buf3),
    .B(_1638__bF$buf3),
    .Y(_2001_)
);

NOR2X1 _2735_ (
    .A(_2354__3_bF$buf1),
    .B(_2354__4_bF$buf6),
    .Y(_2000_)
);

NAND2X1 _2736_ (
    .A(_1993_),
    .B(_1998_),
    .Y(_1999_)
);

AOI21X1 _2737_ (
    .A(_1996_),
    .B(_1997_),
    .C(_1923__bF$buf3),
    .Y(_1998_)
);

OAI21X1 _2738_ (
    .A(_1663_),
    .B(_1661_),
    .C(_1658_),
    .Y(_1997_)
);

OAI21X1 _2739_ (
    .A(_1994_),
    .B(_1995_),
    .C(_1914_),
    .Y(_1996_)
);

NOR2X1 _2740_ (
    .A(_2354__0_bF$buf1),
    .B(_1944_),
    .Y(_1995_)
);

AOI21X1 _2741_ (
    .A(_1638__bF$buf2),
    .B(_2354__1_bF$buf2),
    .C(_2354__2_bF$buf0),
    .Y(_1994_)
);

OAI21X1 _2742_ (
    .A(_1637_),
    .B(_1639_),
    .C(_1992_),
    .Y(_1993_)
);

AOI21X1 _2743_ (
    .A(_1991_),
    .B(_1636__bF$buf2),
    .C(_2354__4_bF$buf5),
    .Y(_1992_)
);

NOR2X1 _2744_ (
    .A(_2354__3_bF$buf0),
    .B(_1924_),
    .Y(_1991_)
);

NAND3X1 _2745_ (
    .A(_1920__bF$buf4),
    .B(_1989_),
    .C(_1983_),
    .Y(_1990_)
);

NAND3X1 _2746_ (
    .A(_1923__bF$buf2),
    .B(_1986_),
    .C(_1988_),
    .Y(_1989_)
);

NAND3X1 _2747_ (
    .A(_1634__bF$buf3),
    .B(_1959_),
    .C(_1987_),
    .Y(_1988_)
);

NAND3X1 _2748_ (
    .A(_1643__bF$buf3),
    .B(_2354__1_bF$buf1),
    .C(_1935_),
    .Y(_1987_)
);

OAI21X1 _2749_ (
    .A(_1984_),
    .B(_1949_),
    .C(_1985_),
    .Y(_1986_)
);

AOI21X1 _2750_ (
    .A(_1967_),
    .B(_2354__0_bF$buf0),
    .C(_1634__bF$buf2),
    .Y(_1985_)
);

NOR2X1 _2751_ (
    .A(_2354__2_bF$buf5),
    .B(_1638__bF$buf1),
    .Y(_1984_)
);

OAI21X1 _2752_ (
    .A(_1975_),
    .B(_1978_),
    .C(_1982_),
    .Y(_1983_)
);

AOI21X1 _2753_ (
    .A(_1981_),
    .B(_1979_),
    .C(_1923__bF$buf1),
    .Y(_1982_)
);

OAI21X1 _2754_ (
    .A(_2354__3_bF$buf6),
    .B(_1944_),
    .C(_1980_),
    .Y(_1981_)
);

OAI21X1 _2755_ (
    .A(_1635__bF$buf3),
    .B(_1636__bF$buf1),
    .C(_2354__0_bF$buf5),
    .Y(_1980_)
);

AOI21X1 _2756_ (
    .A(_1651_),
    .B(_1643__bF$buf2),
    .C(_1634__bF$buf1),
    .Y(_1979_)
);

INVX1 _2757_ (
    .A(_1977_),
    .Y(_1978_)
);

NAND3X1 _2758_ (
    .A(_2354__3_bF$buf5),
    .B(_1976_),
    .C(_1664_),
    .Y(_1977_)
);

OAI21X1 _2759_ (
    .A(_2354__1_bF$buf0),
    .B(_1638__bF$buf0),
    .C(_1636__bF$buf0),
    .Y(_1976_)
);

OAI21X1 _2760_ (
    .A(_1916_),
    .B(_1974_),
    .C(_1634__bF$buf0),
    .Y(_1975_)
);

OAI21X1 _2761_ (
    .A(_1635__bF$buf2),
    .B(_1636__bF$buf4),
    .C(_1915_),
    .Y(_1974_)
);

INVX2 _2762_ (
    .A(_2354__7_bF$buf2),
    .Y(_1973_)
);

OAI22X1 _2763_ (
    .A(_2354__7_bF$buf1),
    .B(_1933_),
    .C(_1972_),
    .D(_1953_),
    .Y(_2346_[6])
);

OAI21X1 _2764_ (
    .A(_1923__bF$buf0),
    .B(_1971_),
    .C(_2354__7_bF$buf0),
    .Y(_1972_)
);

AOI22X1 _2765_ (
    .A(_1955_),
    .B(_1970_),
    .C(_1966_),
    .D(_1920__bF$buf3),
    .Y(_1971_)
);

AOI21X1 _2766_ (
    .A(_1969_),
    .B(_1642_),
    .C(_1920__bF$buf2),
    .Y(_1970_)
);

AOI21X1 _2767_ (
    .A(_1967_),
    .B(_2354__2_bF$buf4),
    .C(_1968_),
    .Y(_1969_)
);

OAI21X1 _2768_ (
    .A(_2354__0_bF$buf4),
    .B(_2354__2_bF$buf3),
    .C(_2354__4_bF$buf4),
    .Y(_1968_)
);

NOR2X1 _2769_ (
    .A(_2354__3_bF$buf4),
    .B(_2354__1_bF$buf5),
    .Y(_1967_)
);

OAI22X1 _2770_ (
    .A(_1962_),
    .B(_1965_),
    .C(_1956_),
    .D(_1960_),
    .Y(_1966_)
);

OAI21X1 _2771_ (
    .A(_2354__0_bF$buf3),
    .B(_1964_),
    .C(_2354__4_bF$buf3),
    .Y(_1965_)
);

INVX1 _2772_ (
    .A(_1963_),
    .Y(_1964_)
);

AOI21X1 _2773_ (
    .A(_2354__1_bF$buf4),
    .B(_2354__2_bF$buf2),
    .C(_2354__3_bF$buf3),
    .Y(_1963_)
);

NOR2X1 _2774_ (
    .A(_1949_),
    .B(_1961_),
    .Y(_1962_)
);

NOR2X1 _2775_ (
    .A(_2354__0_bF$buf2),
    .B(_2354__2_bF$buf1),
    .Y(_1961_)
);

OAI21X1 _2776_ (
    .A(_1957_),
    .B(_1958_),
    .C(_1959_),
    .Y(_1960_)
);

NAND3X1 _2777_ (
    .A(_2354__3_bF$buf2),
    .B(_1636__bF$buf3),
    .C(_1647_),
    .Y(_1959_)
);

OAI21X1 _2778_ (
    .A(_2354__1_bF$buf3),
    .B(_1638__bF$buf3),
    .C(_2354__2_bF$buf0),
    .Y(_1958_)
);

OAI21X1 _2779_ (
    .A(_2354__0_bF$buf1),
    .B(_1635__bF$buf1),
    .C(_2354__3_bF$buf1),
    .Y(_1957_)
);

OAI21X1 _2780_ (
    .A(_2354__3_bF$buf0),
    .B(_1928_),
    .C(_1634__bF$buf5),
    .Y(_1956_)
);

OAI21X1 _2781_ (
    .A(_1644_),
    .B(_1647_),
    .C(_1954_),
    .Y(_1955_)
);

NOR2X1 _2782_ (
    .A(_2354__4_bF$buf2),
    .B(_1914_),
    .Y(_1954_)
);

AOI21X1 _2783_ (
    .A(_1942_),
    .B(_1947_),
    .C(_1952_),
    .Y(_1953_)
);

OAI21X1 _2784_ (
    .A(_1951_),
    .B(_1948_),
    .C(_1923__bF$buf3),
    .Y(_1952_)
);

OAI21X1 _2785_ (
    .A(_2354__4_bF$buf1),
    .B(_1950_),
    .C(_1920__bF$buf1),
    .Y(_1951_)
);

AOI21X1 _2786_ (
    .A(_1936_),
    .B(_1949_),
    .C(_1638__bF$buf2),
    .Y(_1950_)
);

OAI21X1 _2787_ (
    .A(_2354__1_bF$buf2),
    .B(_2354__2_bF$buf5),
    .C(_2354__3_bF$buf6),
    .Y(_1949_)
);

AND2X2 _2788_ (
    .A(_1650_),
    .B(_2354__4_bF$buf0),
    .Y(_1948_)
);

AOI21X1 _2789_ (
    .A(_1946_),
    .B(_1650_),
    .C(_1920__bF$buf0),
    .Y(_1947_)
);

NOR2X1 _2790_ (
    .A(_1945_),
    .B(_1943_),
    .Y(_1946_)
);

OAI21X1 _2791_ (
    .A(_1643__bF$buf1),
    .B(_1944_),
    .C(_1634__bF$buf4),
    .Y(_1945_)
);

NAND2X1 _2792_ (
    .A(_2354__1_bF$buf1),
    .B(_2354__2_bF$buf4),
    .Y(_1944_)
);

NOR2X1 _2793_ (
    .A(_1652_),
    .B(_1938_),
    .Y(_1943_)
);

OR2X2 _2794_ (
    .A(_1941_),
    .B(_1937_),
    .Y(_1942_)
);

OAI21X1 _2795_ (
    .A(_1938_),
    .B(_1918_),
    .C(_1940_),
    .Y(_1941_)
);

AOI21X1 _2796_ (
    .A(_1939_),
    .B(_2354__3_bF$buf5),
    .C(_1634__bF$buf3),
    .Y(_1940_)
);

NOR2X1 _2797_ (
    .A(_2354__1_bF$buf0),
    .B(_1641_),
    .Y(_1939_)
);

OAI21X1 _2798_ (
    .A(_1635__bF$buf0),
    .B(_1638__bF$buf1),
    .C(_2354__3_bF$buf4),
    .Y(_1938_)
);

OAI22X1 _2799_ (
    .A(_1935_),
    .B(_1936_),
    .C(_1638__bF$buf0),
    .D(_1934_),
    .Y(_1937_)
);

NAND2X1 _2800_ (
    .A(_1643__bF$buf0),
    .B(_1635__bF$buf4),
    .Y(_1936_)
);

NAND2X1 _2801_ (
    .A(_2354__2_bF$buf3),
    .B(_1638__bF$buf3),
    .Y(_1935_)
);

NAND3X1 _2802_ (
    .A(_2354__1_bF$buf5),
    .B(_1643__bF$buf5),
    .C(_1636__bF$buf2),
    .Y(_1934_)
);

AOI22X1 _2803_ (
    .A(_1922_),
    .B(_1932_),
    .C(_1913_),
    .D(_1657_),
    .Y(_1933_)
);

AOI21X1 _2804_ (
    .A(_1931_),
    .B(_1927_),
    .C(_1923__bF$buf2),
    .Y(_1932_)
);

AND2X2 _2805_ (
    .A(_1930_),
    .B(_1920__bF$buf4),
    .Y(_1931_)
);

OAI21X1 _2806_ (
    .A(_2354__0_bF$buf0),
    .B(_1928_),
    .C(_1929_),
    .Y(_1930_)
);

NOR2X1 _2807_ (
    .A(_2354__3_bF$buf3),
    .B(_1634__bF$buf2),
    .Y(_1929_)
);

NAND2X1 _2808_ (
    .A(_2354__1_bF$buf4),
    .B(_1636__bF$buf1),
    .Y(_1928_)
);

NAND2X1 _2809_ (
    .A(_1634__bF$buf1),
    .B(_1926_),
    .Y(_1927_)
);

OAI21X1 _2810_ (
    .A(_1647_),
    .B(_1925_),
    .C(_1924_),
    .Y(_1926_)
);

OAI21X1 _2811_ (
    .A(_2354__1_bF$buf3),
    .B(_1636__bF$buf0),
    .C(_2354__3_bF$buf2),
    .Y(_1925_)
);

NAND2X1 _2812_ (
    .A(_2354__1_bF$buf2),
    .B(_2354__0_bF$buf5),
    .Y(_1924_)
);

INVX4 _2813_ (
    .A(_2354__6_bF$buf0),
    .Y(_1923_)
);

OAI21X1 _2814_ (
    .A(_2354__4_bF$buf6),
    .B(_1919_),
    .C(_1921_),
    .Y(_1922_)
);

AOI21X1 _2815_ (
    .A(_1648_),
    .B(_1659_),
    .C(_1920__bF$buf3),
    .Y(_1921_)
);

INVX8 _2816_ (
    .A(_2354__5_bF$buf0),
    .Y(_1920_)
);

AOI22X1 _2817_ (
    .A(_1636__bF$buf4),
    .B(_1914_),
    .C(_1918_),
    .D(_1915_),
    .Y(_1919_)
);

NOR2X1 _2818_ (
    .A(_1916_),
    .B(_1917_),
    .Y(_1918_)
);

AND2X2 _2819_ (
    .A(_2354__1_bF$buf1),
    .B(_2354__2_bF$buf2),
    .Y(_1917_)
);

NOR2X1 _2820_ (
    .A(_2354__1_bF$buf0),
    .B(_2354__2_bF$buf1),
    .Y(_1916_)
);

NOR2X1 _2821_ (
    .A(_2354__3_bF$buf1),
    .B(_2354__0_bF$buf4),
    .Y(_1915_)
);

AOI21X1 _2822_ (
    .A(_1635__bF$buf3),
    .B(_2354__0_bF$buf3),
    .C(_1643__bF$buf4),
    .Y(_1914_)
);

AOI21X1 _2823_ (
    .A(_1674_),
    .B(_1912_),
    .C(_2354__6_bF$buf4),
    .Y(_1913_)
);

AOI21X1 _2824_ (
    .A(_1910_),
    .B(_1911_),
    .C(_2354__5_bF$buf4),
    .Y(_1912_)
);

AOI21X1 _2825_ (
    .A(_1665_),
    .B(_2354__3_bF$buf0),
    .C(_2354__4_bF$buf5),
    .Y(_1911_)
);

NAND3X1 _2826_ (
    .A(_1643__bF$buf3),
    .B(_1909_),
    .C(_1637_),
    .Y(_1910_)
);

NAND3X1 _2827_ (
    .A(_2354__1_bF$buf5),
    .B(_2354__2_bF$buf0),
    .C(_1638__bF$buf2),
    .Y(_1909_)
);

OAI22X1 _2828_ (
    .A(_1643__bF$buf2),
    .B(_1673_),
    .C(_1659_),
    .D(_1662_),
    .Y(_1674_)
);

OAI21X1 _2829_ (
    .A(_1663_),
    .B(_1665_),
    .C(_1664_),
    .Y(_1673_)
);

OAI21X1 _2830_ (
    .A(_2354__0_bF$buf2),
    .B(_2354__2_bF$buf5),
    .C(_2354__1_bF$buf4),
    .Y(_1665_)
);

NAND2X1 _2831_ (
    .A(_1635__bF$buf2),
    .B(_1663_),
    .Y(_1664_)
);

AND2X2 _2832_ (
    .A(_2354__0_bF$buf1),
    .B(_2354__2_bF$buf4),
    .Y(_1663_)
);

NOR2X1 _2833_ (
    .A(_1661_),
    .B(_1660_),
    .Y(_1662_)
);

OAI21X1 _2834_ (
    .A(_2354__0_bF$buf0),
    .B(_1635__bF$buf1),
    .C(_2354__4_bF$buf4),
    .Y(_1661_)
);

NOR2X1 _2835_ (
    .A(_2354__0_bF$buf5),
    .B(_1636__bF$buf3),
    .Y(_1660_)
);

INVX2 _2836_ (
    .A(_1658_),
    .Y(_1659_)
);

NAND2X1 _2837_ (
    .A(_2354__3_bF$buf6),
    .B(_2354__4_bF$buf3),
    .Y(_1658_)
);

NAND3X1 _2838_ (
    .A(_2354__5_bF$buf3),
    .B(_1656_),
    .C(_1646_),
    .Y(_1657_)
);

NAND3X1 _2839_ (
    .A(_2354__4_bF$buf2),
    .B(_1655_),
    .C(_1650_),
    .Y(_1656_)
);

OAI21X1 _2840_ (
    .A(_1651_),
    .B(_1652_),
    .C(_1654_),
    .Y(_1655_)
);

OAI21X1 _2841_ (
    .A(_1643__bF$buf1),
    .B(_2354__2_bF$buf3),
    .C(_1653_),
    .Y(_1654_)
);

OAI21X1 _2842_ (
    .A(_2354__1_bF$buf3),
    .B(_2354__0_bF$buf4),
    .C(_2354__3_bF$buf5),
    .Y(_1653_)
);

OAI21X1 _2843_ (
    .A(_2354__1_bF$buf2),
    .B(_2354__0_bF$buf3),
    .C(_1636__bF$buf2),
    .Y(_1652_)
);

AND2X2 _2844_ (
    .A(_2354__1_bF$buf1),
    .B(_2354__0_bF$buf2),
    .Y(_1651_)
);

NAND3X1 _2845_ (
    .A(_1643__bF$buf0),
    .B(_1649_),
    .C(_1648_),
    .Y(_1650_)
);

OAI21X1 _2846_ (
    .A(_2354__1_bF$buf0),
    .B(_2354__0_bF$buf1),
    .C(_2354__2_bF$buf2),
    .Y(_1649_)
);

NAND2X1 _2847_ (
    .A(_1636__bF$buf1),
    .B(_1647_),
    .Y(_1648_)
);

NOR2X1 _2848_ (
    .A(_2354__1_bF$buf5),
    .B(_2354__0_bF$buf0),
    .Y(_1647_)
);

OAI21X1 _2849_ (
    .A(_1640_),
    .B(_1645_),
    .C(_1634__bF$buf0),
    .Y(_1646_)
);

AND2X2 _2850_ (
    .A(_1642_),
    .B(_1644_),
    .Y(_1645_)
);

OAI21X1 _2851_ (
    .A(_2354__2_bF$buf1),
    .B(_1635__bF$buf0),
    .C(_1643__bF$buf5),
    .Y(_1644_)
);

INVX8 _2852_ (
    .A(_2354__3_bF$buf4),
    .Y(_1643_)
);

OAI21X1 _2853_ (
    .A(_2354__1_bF$buf4),
    .B(_1641_),
    .C(_2354__3_bF$buf3),
    .Y(_1642_)
);

NAND2X1 _2854_ (
    .A(_2354__0_bF$buf5),
    .B(_2354__2_bF$buf0),
    .Y(_1641_)
);

NOR2X1 _2855_ (
    .A(_1637_),
    .B(_1639_),
    .Y(_1640_)
);

OAI21X1 _2856_ (
    .A(_2354__1_bF$buf3),
    .B(_1638__bF$buf1),
    .C(_2354__3_bF$buf2),
    .Y(_1639_)
);

INVX8 _2857_ (
    .A(_2354__0_bF$buf4),
    .Y(_1638_)
);

OAI21X1 _2858_ (
    .A(_2354__0_bF$buf3),
    .B(_1635__bF$buf4),
    .C(_1636__bF$buf0),
    .Y(_1637_)
);

INVX8 _2859_ (
    .A(_2354__2_bF$buf5),
    .Y(_1636_)
);

INVX8 _2860_ (
    .A(_2354__1_bF$buf2),
    .Y(_1635_)
);

INVX8 _2861_ (
    .A(_2354__4_bF$buf1),
    .Y(_1634_)
);

DFFPOSX1 _2862_ (
    .CLK(clk_bF$buf9),
    .D(_2346_[4]),
    .Q(DO_woz[4])
);

DFFPOSX1 _2863_ (
    .CLK(clk_bF$buf8),
    .D(_1516_),
    .Q(_2350_)
);

DFFSR _2864_ (
    .CLK(clk_bF$buf7),
    .D(_1518_),
    .Q(DO_dsp[0]),
    .R(_1514_),
    .S(vdd)
);

DFFSR _2865_ (
    .CLK(clk_bF$buf6),
    .D(_1508_),
    .Q(DO_dsp[3]),
    .R(_1514_),
    .S(vdd)
);

DFFSR _2866_ (
    .CLK(clk_bF$buf5),
    .D(_1596_),
    .Q(\u_pia_dsp.state [2]),
    .R(_1514_),
    .S(vdd)
);

DFFSR _2867_ (
    .CLK(clk_bF$buf4),
    .D(_1517_),
    .Q(DO_dsp[7]),
    .R(_1514_),
    .S(vdd)
);

DFFSR _2868_ (
    .CLK(clk_bF$buf3),
    .D(_1593_),
    .Q(\u_pia_dsp.state [0]),
    .R(vdd),
    .S(_1514_)
);

DFFSR _2869_ (
    .CLK(clk_bF$buf2),
    .D(_1510_),
    .Q(DO_dsp[5]),
    .R(_1514_),
    .S(vdd)
);

DFFSR _2870_ (
    .CLK(clk_bF$buf1),
    .D(_1515_),
    .Q(DO_dsp[6]),
    .R(_1514_),
    .S(vdd)
);

DFFSR _2871_ (
    .CLK(clk_bF$buf0),
    .D(_1507_),
    .Q(DO_dsp[2]),
    .R(_1514_),
    .S(vdd)
);

DFFSR _2872_ (
    .CLK(clk_bF$buf12),
    .D(_1597_),
    .Q(\u_pia_dsp.state [3]),
    .R(_1514_),
    .S(vdd)
);

DFFSR _2873_ (
    .CLK(clk_bF$buf11),
    .D(_1595_),
    .Q(\u_pia_dsp.state [1]),
    .R(_1514_),
    .S(vdd)
);

DFFSR _2874_ (
    .CLK(clk_bF$buf10),
    .D(_1509_),
    .Q(DO_dsp[4]),
    .R(_1514_),
    .S(vdd)
);

OAI21X1 _2875_ (
    .A(_1581_),
    .B(_1535_),
    .C(_1582_),
    .Y(_1519_)
);

OAI21X1 _2876_ (
    .A(_1537_),
    .B(_1540_),
    .C(DO_dsp[1]),
    .Y(_1582_)
);

INVX1 _2877_ (
    .A(_2353_[1]),
    .Y(_1581_)
);

OAI21X1 _2878_ (
    .A(_1579_),
    .B(_1535_),
    .C(_1580_),
    .Y(_1518_)
);

OAI21X1 _2879_ (
    .A(_1537_),
    .B(_1540_),
    .C(DO_dsp[0]),
    .Y(_1580_)
);

INVX1 _2880_ (
    .A(_2353_[0]),
    .Y(_1579_)
);

OAI21X1 _2881_ (
    .A(_1566_),
    .B(_1577_),
    .C(_1578_),
    .Y(_1517_)
);

NAND3X1 _2882_ (
    .A(_1551_),
    .B(\u_pia_dsp.state [0]),
    .C(_1560_),
    .Y(_1578_)
);

AOI22X1 _2883_ (
    .A(_1561_),
    .B(_1576_),
    .C(_1575_),
    .D(\u_pia_dsp.state [0]),
    .Y(_1577_)
);

NAND2X1 _2884_ (
    .A(\u_pia_dsp.state [0]),
    .B(_1551_),
    .Y(_1576_)
);

NAND3X1 _2885_ (
    .A(_1569_),
    .B(_1574_),
    .C(_1525_),
    .Y(_1575_)
);

NOR2X1 _2886_ (
    .A(_1572_),
    .B(_1573_),
    .Y(_1574_)
);

NAND2X1 _2887_ (
    .A(_1529_),
    .B(_1558_),
    .Y(_1573_)
);

NAND3X1 _2888_ (
    .A(_1531_),
    .B(_1570_),
    .C(_1571_),
    .Y(_1572_)
);

INVX1 _2889_ (
    .A(_2354__7_bF$buf3),
    .Y(_1571_)
);

INVX1 _2890_ (
    .A(_2354__6_bF$buf3),
    .Y(_1570_)
);

NOR2X1 _2891_ (
    .A(_1567_),
    .B(_1568_),
    .Y(_1569_)
);

NAND2X1 _2892_ (
    .A(_2352_),
    .B(_1526_),
    .Y(_1568_)
);

NAND2X1 _2893_ (
    .A(_2354__1_bF$buf1),
    .B(_1528_),
    .Y(_1567_)
);

INVX1 _2894_ (
    .A(DO_dsp[7]),
    .Y(_1566_)
);

OAI21X1 _2895_ (
    .A(\u_pia_dsp.state [2]),
    .B(_1564_),
    .C(_1565_),
    .Y(_1516_)
);

OAI21X1 _2896_ (
    .A(_1550_),
    .B(_1564_),
    .C(_2350_),
    .Y(_1565_)
);

OAI21X1 _2897_ (
    .A(\u_pia_dsp.state [2]),
    .B(\u_pia_dsp.state [3]),
    .C(_1514_),
    .Y(_1564_)
);

OAI21X1 _2898_ (
    .A(_1562_),
    .B(_1535_),
    .C(_1563_),
    .Y(_1515_)
);

OAI21X1 _2899_ (
    .A(_1537_),
    .B(_1540_),
    .C(DO_dsp[6]),
    .Y(_1563_)
);

INVX1 _2900_ (
    .A(_2353_[6]),
    .Y(_1562_)
);

INVX4 _2901_ (
    .A(reset),
    .Y(_1514_)
);

OAI21X1 _2902_ (
    .A(_1537_),
    .B(_1560_),
    .C(_1561_),
    .Y(_1593_)
);

NAND2X1 _2903_ (
    .A(\u_pia_dsp.state [1]),
    .B(_1550_),
    .Y(_1561_)
);

NOR3X1 _2904_ (
    .A(_1559_),
    .B(_1556_),
    .C(_1554_),
    .Y(_1560_)
);

NAND3X1 _2905_ (
    .A(_1529_),
    .B(_1558_),
    .C(_1557_),
    .Y(_1559_)
);

AND2X2 _2906_ (
    .A(_2354_[14]),
    .B(_2354_[15]),
    .Y(_1558_)
);

NOR3X1 _2907_ (
    .A(_2354_[9]),
    .B(_2354__6_bF$buf2),
    .C(_2354__7_bF$buf2),
    .Y(_1557_)
);

NAND3X1 _2908_ (
    .A(_1526_),
    .B(_2352_),
    .C(_1555_),
    .Y(_1556_)
);

AND2X2 _2909_ (
    .A(_1528_),
    .B(_2354__1_bF$buf0),
    .Y(_1555_)
);

NAND3X1 _2910_ (
    .A(_1523_),
    .B(_1552_),
    .C(_1553_),
    .Y(_1554_)
);

AND2X2 _2911_ (
    .A(_1522_),
    .B(_2354__4_bF$buf0),
    .Y(_1553_)
);

AND2X2 _2912_ (
    .A(_1520_),
    .B(_2354_[12]),
    .Y(_1552_)
);

AOI21X1 _2913_ (
    .A(_1551_),
    .B(_1548_),
    .C(_1550_),
    .Y(_1595_)
);

INVX1 _2914_ (
    .A(\u_pia_dsp.state [1]),
    .Y(_1551_)
);

INVX1 _2915_ (
    .A(dsp_ack),
    .Y(_1550_)
);

OAI21X1 _2916_ (
    .A(dsp_ack),
    .B(_1548_),
    .C(_1549_),
    .Y(_1596_)
);

INVX1 _2917_ (
    .A(\u_pia_dsp.state [3]),
    .Y(_1549_)
);

INVX1 _2918_ (
    .A(\u_pia_dsp.state [2]),
    .Y(_1548_)
);

OAI21X1 _2919_ (
    .A(_1546_),
    .B(_1535_),
    .C(_1547_),
    .Y(_1510_)
);

OAI21X1 _2920_ (
    .A(_1537_),
    .B(_1540_),
    .C(DO_dsp[5]),
    .Y(_1547_)
);

INVX1 _2921_ (
    .A(_2353_[5]),
    .Y(_1546_)
);

OAI21X1 _2922_ (
    .A(_1544_),
    .B(_1535_),
    .C(_1545_),
    .Y(_1509_)
);

OAI21X1 _2923_ (
    .A(_1537_),
    .B(_1540_),
    .C(DO_dsp[4]),
    .Y(_1545_)
);

INVX1 _2924_ (
    .A(_2353_[4]),
    .Y(_1544_)
);

OAI21X1 _2925_ (
    .A(_1542_),
    .B(_1535_),
    .C(_1543_),
    .Y(_1508_)
);

OAI21X1 _2926_ (
    .A(_1537_),
    .B(_1540_),
    .C(DO_dsp[3]),
    .Y(_1543_)
);

INVX1 _2927_ (
    .A(_2353_[3]),
    .Y(_1542_)
);

OAI21X1 _2928_ (
    .A(_1536_),
    .B(_1535_),
    .C(_1541_),
    .Y(_1507_)
);

OAI21X1 _2929_ (
    .A(_1537_),
    .B(_1540_),
    .C(DO_dsp[2]),
    .Y(_1541_)
);

NAND3X1 _2930_ (
    .A(_1538_),
    .B(_1525_),
    .C(_1539_),
    .Y(_1540_)
);

NOR2X1 _2931_ (
    .A(_1530_),
    .B(_1533_),
    .Y(_1539_)
);

INVX1 _2932_ (
    .A(_1527_),
    .Y(_1538_)
);

INVX2 _2933_ (
    .A(\u_pia_dsp.state [0]),
    .Y(_1537_)
);

INVX1 _2934_ (
    .A(_2353_[2]),
    .Y(_1536_)
);

INVX1 _2935_ (
    .A(_1535_),
    .Y(_1597_)
);

NAND3X1 _2936_ (
    .A(\u_pia_dsp.state [0]),
    .B(_1525_),
    .C(_1534_),
    .Y(_1535_)
);

NOR3X1 _2937_ (
    .A(_1527_),
    .B(_1530_),
    .C(_1533_),
    .Y(_1534_)
);

NAND3X1 _2938_ (
    .A(_2354__1_bF$buf5),
    .B(_1531_),
    .C(_1532_),
    .Y(_1533_)
);

NOR2X1 _2939_ (
    .A(_2354__6_bF$buf1),
    .B(_2354__7_bF$buf1),
    .Y(_1532_)
);

INVX1 _2940_ (
    .A(_2354_[9]),
    .Y(_1531_)
);

NAND3X1 _2941_ (
    .A(_2354_[15]),
    .B(_1528_),
    .C(_1529_),
    .Y(_1530_)
);

NOR2X1 _2942_ (
    .A(_2354__2_bF$buf4),
    .B(_2354__3_bF$buf1),
    .Y(_1529_)
);

INVX1 _2943_ (
    .A(_2354__5_bF$buf2),
    .Y(_1528_)
);

NAND3X1 _2944_ (
    .A(_2354_[14]),
    .B(_2352_),
    .C(_1526_),
    .Y(_1527_)
);

INVX1 _2945_ (
    .A(_2354__0_bF$buf2),
    .Y(_1526_)
);

NOR2X1 _2946_ (
    .A(_1521_),
    .B(_1524_),
    .Y(_1525_)
);

NAND3X1 _2947_ (
    .A(_2354__4_bF$buf6),
    .B(_1522_),
    .C(_1523_),
    .Y(_1524_)
);

NOR2X1 _2948_ (
    .A(_2354_[11]),
    .B(_2354_[8]),
    .Y(_1523_)
);

INVX1 _2949_ (
    .A(_2354_[10]),
    .Y(_1522_)
);

NAND2X1 _2950_ (
    .A(_2354_[12]),
    .B(_1520_),
    .Y(_1521_)
);

INVX1 _2951_ (
    .A(_2354_[13]),
    .Y(_1520_)
);

DFFPOSX1 _2952_ (
    .CLK(clk_bF$buf9),
    .D(_2346_[3]),
    .Q(DO_woz[3])
);

DFFSR _2953_ (
    .CLK(clk_bF$buf8),
    .D(_1631_),
    .Q(\u_pia_kbd.state [2]),
    .R(_1491_),
    .S(vdd)
);

DFFSR _2954_ (
    .CLK(clk_bF$buf7),
    .D(_1495_),
    .Q(DO_kbd[7]),
    .R(_1491_),
    .S(vdd)
);

DFFSR _2955_ (
    .CLK(clk_bF$buf6),
    .D(_1630_),
    .Q(\u_pia_kbd.state [0]),
    .R(vdd),
    .S(_1491_)
);

DFFSR _2956_ (
    .CLK(clk_bF$buf5),
    .D(_1494_),
    .Q(DO_kbd[4]),
    .R(_1491_),
    .S(vdd)
);

DFFSR _2957_ (
    .CLK(clk_bF$buf4),
    .D(_1436_),
    .Q(DO_kbd[1]),
    .R(_1491_),
    .S(vdd)
);

DFFSR _2958_ (
    .CLK(clk_bF$buf3),
    .D(_1493_),
    .Q(_2351_),
    .R(_1491_),
    .S(vdd)
);

DFFSR _2959_ (
    .CLK(clk_bF$buf2),
    .D(_1434_),
    .Q(DO_kbd[6]),
    .R(_1491_),
    .S(vdd)
);

DFFSR _2960_ (
    .CLK(clk_bF$buf1),
    .D(_1492_),
    .Q(DO_kbd[3]),
    .R(_1491_),
    .S(vdd)
);

DFFSR _2961_ (
    .CLK(clk_bF$buf0),
    .D(_1435_),
    .Q(DO_kbd[0]),
    .R(_1491_),
    .S(vdd)
);

DFFSR _2962_ (
    .CLK(clk_bF$buf12),
    .D(_1437_),
    .Q(DO_kbd[2]),
    .R(_1491_),
    .S(vdd)
);

DFFSR _2963_ (
    .CLK(clk_bF$buf11),
    .D(_1496_),
    .Q(DO_kbd[5]),
    .R(_1491_),
    .S(vdd)
);

OAI21X1 _2964_ (
    .A(_1628_),
    .B(_1500_),
    .C(_1629_),
    .Y(_1496_)
);

NAND2X1 _2965_ (
    .A(kbd_data[5]),
    .B(_1500_),
    .Y(_1629_)
);

INVX1 _2966_ (
    .A(DO_kbd[5]),
    .Y(_1628_)
);

NAND2X1 _2967_ (
    .A(_1627_),
    .B(_1626_),
    .Y(_1495_)
);

NAND2X1 _2968_ (
    .A(_1512_),
    .B(_1500_),
    .Y(_1627_)
);

NAND2X1 _2969_ (
    .A(DO_kbd[7]),
    .B(_1625_),
    .Y(_1626_)
);

NAND3X1 _2970_ (
    .A(_1613_),
    .B(_1624_),
    .C(_1612_),
    .Y(_1625_)
);

INVX1 _2971_ (
    .A(_1617_),
    .Y(_1624_)
);

OAI21X1 _2972_ (
    .A(_1622_),
    .B(_1500_),
    .C(_1623_),
    .Y(_1494_)
);

NAND2X1 _2973_ (
    .A(kbd_data[4]),
    .B(_1500_),
    .Y(_1623_)
);

INVX1 _2974_ (
    .A(DO_kbd[4]),
    .Y(_1622_)
);

NAND2X1 _2975_ (
    .A(_1619_),
    .B(_1621_),
    .Y(_1493_)
);

NAND2X1 _2976_ (
    .A(_2351_),
    .B(_1620_),
    .Y(_1621_)
);

NAND3X1 _2977_ (
    .A(_1613_),
    .B(_1618_),
    .C(_1612_),
    .Y(_1620_)
);

NAND3X1 _2978_ (
    .A(\u_pia_kbd.state [2]),
    .B(_1618_),
    .C(_1616_),
    .Y(_1619_)
);

AOI21X1 _2979_ (
    .A(_1617_),
    .B(_1513_),
    .C(_1583_),
    .Y(_1618_)
);

NOR2X1 _2980_ (
    .A(\u_pia_kbd.state [2]),
    .B(\u_pia_kbd.state [0]),
    .Y(_1617_)
);

AOI22X1 _2981_ (
    .A(\u_pia_kbd.state [0]),
    .B(_1499_),
    .C(_1603_),
    .D(\u_pia_kbd.state [2]),
    .Y(_1616_)
);

OAI21X1 _2982_ (
    .A(_1614_),
    .B(_1500_),
    .C(_1615_),
    .Y(_1492_)
);

NAND2X1 _2983_ (
    .A(kbd_data[3]),
    .B(_1500_),
    .Y(_1615_)
);

INVX1 _2984_ (
    .A(DO_kbd[3]),
    .Y(_1614_)
);

INVX4 _2985_ (
    .A(reset),
    .Y(_1491_)
);

OAI21X1 _2986_ (
    .A(kbd_rdy),
    .B(_1513_),
    .C(_1613_),
    .Y(_1630_)
);

NAND2X1 _2987_ (
    .A(\u_pia_kbd.state [0]),
    .B(_1499_),
    .Y(_1613_)
);

OAI21X1 _2988_ (
    .A(_1498_),
    .B(_1499_),
    .C(_1612_),
    .Y(_1631_)
);

OAI21X1 _2989_ (
    .A(_1588_),
    .B(_1611_),
    .C(\u_pia_kbd.state [2]),
    .Y(_1612_)
);

NAND3X1 _2990_ (
    .A(_1605_),
    .B(_1608_),
    .C(_1610_),
    .Y(_1611_)
);

NOR2X1 _2991_ (
    .A(_1609_),
    .B(_1598_),
    .Y(_1610_)
);

OR2X2 _2992_ (
    .A(_2352_),
    .B(_Addr_Bus[7]),
    .Y(_1609_)
);

AND2X2 _2993_ (
    .A(_1606_),
    .B(_1607_),
    .Y(_1608_)
);

NOR2X1 _2994_ (
    .A(_Addr_Bus[6]),
    .B(_Addr_Bus[5]),
    .Y(_1607_)
);

NOR2X1 _2995_ (
    .A(_Addr_Bus[3]),
    .B(_Addr_Bus[9]),
    .Y(_1606_)
);

NOR2X1 _2996_ (
    .A(_Addr_Bus[2]),
    .B(_1604_),
    .Y(_1605_)
);

NAND2X1 _2997_ (
    .A(_Addr_Bus[0]),
    .B(_Addr_Bus[15]),
    .Y(_1604_)
);

OAI21X1 _2998_ (
    .A(_1512_),
    .B(_1603_),
    .C(_1584_),
    .Y(_1632_)
);

NAND3X1 _2999_ (
    .A(_1589_),
    .B(_1592_),
    .C(_1602_),
    .Y(_1603_)
);

NOR3X1 _3000_ (
    .A(_2352_),
    .B(_1598_),
    .C(_1601_),
    .Y(_1602_)
);

NAND2X1 _3001_ (
    .A(_1600_),
    .B(_1599_),
    .Y(_1601_)
);

NOR2X1 _3002_ (
    .A(_Addr_Bus[5]),
    .B(_Addr_Bus[2]),
    .Y(_1600_)
);

AND2X2 _3003_ (
    .A(_Addr_Bus[0]),
    .B(_Addr_Bus[15]),
    .Y(_1599_)
);

NAND2X1 _3004_ (
    .A(_Addr_Bus[14]),
    .B(_1594_),
    .Y(_1598_)
);

INVX1 _3005_ (
    .A(_Addr_Bus[1]),
    .Y(_1594_)
);

AND2X2 _3006_ (
    .A(_1590_),
    .B(_1591_),
    .Y(_1592_)
);

NOR2X1 _3007_ (
    .A(_Addr_Bus[7]),
    .B(_Addr_Bus[3]),
    .Y(_1591_)
);

NOR2X1 _3008_ (
    .A(_Addr_Bus[9]),
    .B(_Addr_Bus[6]),
    .Y(_1590_)
);

INVX1 _3009_ (
    .A(_1588_),
    .Y(_1589_)
);

NAND3X1 _3010_ (
    .A(_1586_),
    .B(_1585_),
    .C(_1587_),
    .Y(_1588_)
);

NOR2X1 _3011_ (
    .A(_Addr_Bus[11]),
    .B(_Addr_Bus[8]),
    .Y(_1587_)
);

NOR2X1 _3012_ (
    .A(_Addr_Bus[13]),
    .B(_Addr_Bus[10]),
    .Y(_1586_)
);

AND2X2 _3013_ (
    .A(_Addr_Bus[12]),
    .B(_Addr_Bus[4]),
    .Y(_1585_)
);

INVX1 _3014_ (
    .A(_1583_),
    .Y(_1584_)
);

NOR2X1 _3015_ (
    .A(_1499_),
    .B(_1513_),
    .Y(_1583_)
);

INVX1 _3016_ (
    .A(\u_pia_kbd.state [1]),
    .Y(_1513_)
);

INVX1 _3017_ (
    .A(\u_pia_kbd.state [2]),
    .Y(_1512_)
);

OAI21X1 _3018_ (
    .A(_1506_),
    .B(_1500_),
    .C(_1511_),
    .Y(_1437_)
);

NAND2X1 _3019_ (
    .A(kbd_data[2]),
    .B(_1500_),
    .Y(_1511_)
);

INVX1 _3020_ (
    .A(DO_kbd[2]),
    .Y(_1506_)
);

OAI21X1 _3021_ (
    .A(_1504_),
    .B(_1500_),
    .C(_1505_),
    .Y(_1436_)
);

NAND2X1 _3022_ (
    .A(kbd_data[1]),
    .B(_1500_),
    .Y(_1505_)
);

INVX1 _3023_ (
    .A(DO_kbd[1]),
    .Y(_1504_)
);

OAI21X1 _3024_ (
    .A(_1502_),
    .B(_1500_),
    .C(_1503_),
    .Y(_1435_)
);

NAND2X1 _3025_ (
    .A(kbd_data[0]),
    .B(_1500_),
    .Y(_1503_)
);

INVX1 _3026_ (
    .A(DO_kbd[0]),
    .Y(_1502_)
);

OAI21X1 _3027_ (
    .A(_1497_),
    .B(_1500_),
    .C(_1501_),
    .Y(_1434_)
);

NAND2X1 _3028_ (
    .A(kbd_data[6]),
    .B(_1500_),
    .Y(_1501_)
);

NOR2X1 _3029_ (
    .A(_1498_),
    .B(_1499_),
    .Y(_1500_)
);

INVX1 _3030_ (
    .A(kbd_rdy),
    .Y(_1499_)
);

INVX1 _3031_ (
    .A(\u_pia_kbd.state [0]),
    .Y(_1498_)
);

INVX1 _3032_ (
    .A(DO_kbd[6]),
    .Y(_1497_)
);

DFFPOSX1 _3033_ (
    .CLK(clk_bF$buf10),
    .D(_2346_[5]),
    .Q(DO_woz[5])
);

DFFSR _3034_ (
    .CLK(clk_bF$buf9),
    .D(_1477_),
    .Q(\u_cpu.op [3]),
    .R(_1417__bF$buf10),
    .S(vdd)
);

DFFSR _3035_ (
    .CLK(clk_bF$buf8),
    .D(_1357_),
    .Q(\u_cpu.PC [5]),
    .R(_1417__bF$buf9),
    .S(vdd)
);

DFFSR _3036_ (
    .CLK(clk_bF$buf7),
    .D(_1460_),
    .Q(\u_cpu.ABH [7]),
    .R(_1417__bF$buf8),
    .S(vdd)
);

DFFSR _3037_ (
    .CLK(clk_bF$buf6),
    .D(_1358_),
    .Q(\u_cpu.PC [4]),
    .R(_1417__bF$buf7),
    .S(vdd)
);

DFFSR _3038_ (
    .CLK(clk_bF$buf5),
    .D(_1484_),
    .Q(\u_cpu.PC [13]),
    .R(_1417__bF$buf6),
    .S(vdd)
);

DFFSR _3039_ (
    .CLK(clk_bF$buf4),
    .D(_1359_),
    .Q(\u_cpu.PC [3]),
    .R(_1417__bF$buf5),
    .S(vdd)
);

DFFSR _3040_ (
    .CLK(clk_bF$buf3),
    .D(_1461_),
    .Q(\u_cpu.AXYS[3] [4]),
    .R(_1417__bF$buf4),
    .S(vdd)
);

DFFSR _3041_ (
    .CLK(clk_bF$buf2),
    .D(_1360_),
    .Q(\u_cpu.PC [2]),
    .R(_1417__bF$buf3),
    .S(vdd)
);

DFFPOSX1 _3042_ (
    .CLK(clk_bF$buf1),
    .D(_1395_),
    .Q(\u_cpu.IRHOLD [2])
);

DFFSR _3043_ (
    .CLK(clk_bF$buf0),
    .D(_1361_),
    .Q(\u_cpu.AXYS[0] [7]),
    .R(_1417__bF$buf2),
    .S(vdd)
);

DFFSR _3044_ (
    .CLK(clk_bF$buf12),
    .D(_1462_),
    .Q(\u_cpu.AXYS[3] [3]),
    .R(_1417__bF$buf1),
    .S(vdd)
);

DFFSR _3045_ (
    .CLK(clk_bF$buf11),
    .D(_1362_),
    .Q(\u_cpu.PC [1]),
    .R(_1417__bF$buf0),
    .S(vdd)
);

DFFPOSX1 _3046_ (
    .CLK(clk_bF$buf10),
    .D(_1394_),
    .Q(\u_cpu.IRHOLD [1])
);

DFFSR _3047_ (
    .CLK(clk_bF$buf9),
    .D(_1363_),
    .Q(\u_cpu.adc_sbc ),
    .R(_1417__bF$buf10),
    .S(vdd)
);

DFFSR _3048_ (
    .CLK(clk_bF$buf8),
    .D(_1463_),
    .Q(\u_cpu.AXYS[3] [2]),
    .R(_1417__bF$buf9),
    .S(vdd)
);

DFFSR _3049_ (
    .CLK(clk_bF$buf7),
    .D(_1364_),
    .Q(\u_cpu.PC [0]),
    .R(_1417__bF$buf8),
    .S(vdd)
);

DFFPOSX1 _3050_ (
    .CLK(clk_bF$buf6),
    .D(_1393_),
    .Q(\u_cpu.IRHOLD [0])
);

DFFSR _3051_ (
    .CLK(clk_bF$buf5),
    .D(_1365_),
    .Q(\u_cpu.AXYS[3] [7]),
    .R(_1417__bF$buf7),
    .S(vdd)
);

DFFSR _3052_ (
    .CLK(clk_bF$buf4),
    .D(_1464_),
    .Q(\u_cpu.AXYS[3] [1]),
    .R(_1417__bF$buf6),
    .S(vdd)
);

DFFSR _3053_ (
    .CLK(clk_bF$buf3),
    .D(_1366_),
    .Q(\u_cpu.AXYS[1] [3]),
    .R(_1417__bF$buf5),
    .S(vdd)
);

DFFSR _3054_ (
    .CLK(clk_bF$buf2),
    .D(_1478_),
    .Q(\u_cpu.sei ),
    .R(_1417__bF$buf4),
    .S(vdd)
);

DFFSR _3055_ (
    .CLK(clk_bF$buf1),
    .D(_1367_),
    .Q(\u_cpu.AXYS[1] [2]),
    .R(_1417__bF$buf3),
    .S(vdd)
);

DFFSR _3056_ (
    .CLK(clk_bF$buf0),
    .D(_1465_),
    .Q(\u_cpu.AXYS[3] [0]),
    .R(_1417__bF$buf2),
    .S(vdd)
);

DFFSR _3057_ (
    .CLK(clk_bF$buf12),
    .D(_1368_),
    .Q(\u_cpu.AXYS[1] [1]),
    .R(_1417__bF$buf1),
    .S(vdd)
);

DFFSR _3058_ (
    .CLK(clk_bF$buf11),
    .D(_1489_),
    .Q(\u_cpu.PC [8]),
    .R(_1417__bF$buf0),
    .S(vdd)
);

DFFSR _3059_ (
    .CLK(clk_bF$buf10),
    .D(_1369_),
    .Q(\u_cpu.AXYS[1] [0]),
    .R(_1417__bF$buf10),
    .S(vdd)
);

DFFSR _3060_ (
    .CLK(clk_bF$buf9),
    .D(_1466_),
    .Q(\u_cpu.AXYS[0] [6]),
    .R(_1417__bF$buf9),
    .S(vdd)
);

DFFSR _3061_ (
    .CLK(clk_bF$buf8),
    .D(_1429_),
    .Q(\u_cpu.state [2]),
    .R(_1417__bF$buf8),
    .S(vdd)
);

DFFSR _3062_ (
    .CLK(clk_bF$buf7),
    .D(_1370_),
    .Q(\u_cpu.I ),
    .R(_1417__bF$buf7),
    .S(vdd)
);

DFFSR _3063_ (
    .CLK(clk_bF$buf6),
    .D(_1479_),
    .Q(\u_cpu.backwards ),
    .R(_1417__bF$buf6),
    .S(vdd)
);

DFFSR _3064_ (
    .CLK(clk_bF$buf5),
    .D(_1432_),
    .Q(\u_cpu.state [1]),
    .R(_1417__bF$buf5),
    .S(vdd)
);

DFFSR _3065_ (
    .CLK(clk_bF$buf4),
    .D(_1428_),
    .Q(\u_cpu.state [0]),
    .R(_1417__bF$buf4),
    .S(vdd)
);

DFFSR _3066_ (
    .CLK(clk_bF$buf3),
    .D(_1680_),
    .Q(\u_cpu.u_ALU8.AI7 ),
    .R(_1675_),
    .S(vdd)
);

DFFSR _3067_ (
    .CLK(clk_bF$buf2),
    .D(_1371_),
    .Q(\u_cpu.write_back ),
    .R(_1417__bF$buf3),
    .S(vdd)
);

DFFSR _3068_ (
    .CLK(clk_bF$buf1),
    .D(_1467_),
    .Q(\u_cpu.AXYS[0] [5]),
    .R(_1417__bF$buf2),
    .S(vdd)
);

DFFSR _3069_ (
    .CLK(clk_bF$buf0),
    .D(\u_cpu.DIMUX [5]),
    .Q(\u_cpu.DIHOLD [5]),
    .R(_1417__bF$buf1),
    .S(vdd)
);

DFFSR _3070_ (
    .CLK(clk_bF$buf12),
    .D(\u_cpu.DIMUX [6]),
    .Q(\u_cpu.DIHOLD [6]),
    .R(_1417__bF$buf0),
    .S(vdd)
);

DFFSR _3071_ (
    .CLK(clk_bF$buf11),
    .D(_1372_),
    .Q(\u_cpu.AXYS[1] [7]),
    .R(_1417__bF$buf10),
    .S(vdd)
);

DFFSR _3072_ (
    .CLK(clk_bF$buf10),
    .D(_1485_),
    .Q(\u_cpu.PC [12]),
    .R(_1417__bF$buf9),
    .S(vdd)
);

DFFSR _3073_ (
    .CLK(clk_bF$buf9),
    .D(_1373_),
    .Q(\u_cpu.ABH [6]),
    .R(_1417__bF$buf8),
    .S(vdd)
);

DFFSR _3074_ (
    .CLK(clk_bF$buf8),
    .D(_1468_),
    .Q(\u_cpu.AXYS[0] [4]),
    .R(_1417__bF$buf7),
    .S(vdd)
);

DFFSR _3075_ (
    .CLK(clk_bF$buf7),
    .D(_1374_),
    .Q(\u_cpu.load_only ),
    .R(_1417__bF$buf6),
    .S(vdd)
);

DFFSR _3076_ (
    .CLK(clk_bF$buf6),
    .D(_1480_),
    .Q(\u_cpu.bit_ins ),
    .R(_1417__bF$buf5),
    .S(vdd)
);

DFFSR _3077_ (
    .CLK(clk_bF$buf5),
    .D(_1375_),
    .Q(\u_cpu.adc_bcd ),
    .R(_1417__bF$buf4),
    .S(vdd)
);

DFFSR _3078_ (
    .CLK(clk_bF$buf4),
    .D(_1438_),
    .Q(\u_cpu.C ),
    .R(_1417__bF$buf3),
    .S(vdd)
);

DFFSR _3079_ (
    .CLK(clk_bF$buf3),
    .D(_1376_),
    .Q(\u_cpu.D ),
    .R(_1417__bF$buf2),
    .S(vdd)
);

DFFSR _3080_ (
    .CLK(clk_bF$buf2),
    .D(_1469_),
    .Q(\u_cpu.AXYS[0] [3]),
    .R(_1417__bF$buf1),
    .S(vdd)
);

DFFSR _3081_ (
    .CLK(clk_bF$buf1),
    .D(_1377_),
    .Q(\u_cpu.ABH [5]),
    .R(_1417__bF$buf0),
    .S(vdd)
);

DFFSR _3082_ (
    .CLK(clk_bF$buf0),
    .D(_1439_),
    .Q(\u_cpu.AXYS[2] [3]),
    .R(_1417__bF$buf10),
    .S(vdd)
);

DFFSR _3083_ (
    .CLK(clk_bF$buf12),
    .D(_1378_),
    .Q(\u_cpu.ABH [4]),
    .R(_1417__bF$buf9),
    .S(vdd)
);

DFFSR _3084_ (
    .CLK(clk_bF$buf11),
    .D(_1488_),
    .Q(\u_cpu.PC [9]),
    .R(_1417__bF$buf8),
    .S(vdd)
);

DFFSR _3085_ (
    .CLK(clk_bF$buf10),
    .D(_1379_),
    .Q(\u_cpu.ABH [3]),
    .R(_1417__bF$buf7),
    .S(vdd)
);

DFFSR _3086_ (
    .CLK(clk_bF$buf9),
    .D(_1440_),
    .Q(\u_cpu.load_reg ),
    .R(_1417__bF$buf6),
    .S(vdd)
);

DFFSR _3087_ (
    .CLK(clk_bF$buf8),
    .D(_1380_),
    .Q(\u_cpu.ABH [2]),
    .R(_1417__bF$buf5),
    .S(vdd)
);

DFFSR _3088_ (
    .CLK(clk_bF$buf7),
    .D(_1470_),
    .Q(\u_cpu.AXYS[0] [2]),
    .R(_1417__bF$buf4),
    .S(vdd)
);

DFFSR _3089_ (
    .CLK(clk_bF$buf6),
    .D(_1381_),
    .Q(\u_cpu.ABH [1]),
    .R(_1417__bF$buf3),
    .S(vdd)
);

DFFSR _3090_ (
    .CLK(clk_bF$buf5),
    .D(_1441_),
    .Q(\u_cpu.sec ),
    .R(_1417__bF$buf2),
    .S(vdd)
);

DFFSR _3091_ (
    .CLK(clk_bF$buf4),
    .D(_1633_),
    .Q(\u_cpu.state [5]),
    .R(_1417__bF$buf1),
    .S(vdd)
);

DFFSR _3092_ (
    .CLK(clk_bF$buf3),
    .D(_1382_),
    .Q(\u_cpu.V ),
    .R(_1417__bF$buf0),
    .S(vdd)
);

DFFSR _3093_ (
    .CLK(clk_bF$buf2),
    .D(_1481_),
    .Q(\u_cpu.AXYS[1] [4]),
    .R(_1417__bF$buf10),
    .S(vdd)
);

DFFSR _3094_ (
    .CLK(clk_bF$buf1),
    .D(_1383_),
    .Q(\u_cpu.ABH [0]),
    .R(_1417__bF$buf9),
    .S(vdd)
);

DFFSR _3095_ (
    .CLK(clk_bF$buf0),
    .D(_1442_),
    .Q(\u_cpu.Z ),
    .R(_1417__bF$buf8),
    .S(vdd)
);

DFFSR _3096_ (
    .CLK(clk_bF$buf12),
    .D(_1384_),
    .Q(\u_cpu.shift ),
    .R(_1417__bF$buf7),
    .S(vdd)
);

DFFSR _3097_ (
    .CLK(clk_bF$buf11),
    .D(_1471_),
    .Q(\u_cpu.inc ),
    .R(_1417__bF$buf6),
    .S(vdd)
);

DFFSR _3098_ (
    .CLK(clk_bF$buf10),
    .D(_1385_),
    .Q(\u_cpu.cld ),
    .R(_1417__bF$buf5),
    .S(vdd)
);

DFFSR _3099_ (
    .CLK(clk_bF$buf9),
    .D(_1443_),
    .Q(\u_cpu.rotate ),
    .R(_1417__bF$buf4),
    .S(vdd)
);

DFFSR _3100_ (
    .CLK(clk_bF$buf8),
    .D(_1386_),
    .Q(\u_cpu.ABL [6]),
    .R(_1417__bF$buf3),
    .S(vdd)
);

DFFSR _3101_ (
    .CLK(clk_bF$buf7),
    .D(_1486_),
    .Q(\u_cpu.PC [11]),
    .R(_1417__bF$buf2),
    .S(vdd)
);

DFFSR _3102_ (
    .CLK(clk_bF$buf6),
    .D(_1387_),
    .Q(\u_cpu.ABL [5]),
    .R(_1417__bF$buf1),
    .S(vdd)
);

DFFSR _3103_ (
    .CLK(clk_bF$buf5),
    .D(_1444_),
    .Q(\u_cpu.clc ),
    .R(_1417__bF$buf0),
    .S(vdd)
);

DFFSR _3104_ (
    .CLK(clk_bF$buf4),
    .D(_1388_),
    .Q(\u_cpu.ABL [4]),
    .R(_1417__bF$buf10),
    .S(vdd)
);

DFFSR _3105_ (
    .CLK(clk_bF$buf3),
    .D(_1472_),
    .Q(\u_cpu.AXYS[0] [1]),
    .R(_1417__bF$buf9),
    .S(vdd)
);

DFFSR _3106_ (
    .CLK(clk_bF$buf2),
    .D(_1433_),
    .Q(\u_cpu.adj_bcd ),
    .R(_1417__bF$buf8),
    .S(vdd)
);

DFFSR _3107_ (
    .CLK(clk_bF$buf1),
    .D(_1389_),
    .Q(\u_cpu.ABL [3]),
    .R(_1417__bF$buf7),
    .S(vdd)
);

DFFSR _3108_ (
    .CLK(clk_bF$buf0),
    .D(_1445_),
    .Q(\u_cpu.dst_reg [1]),
    .R(_1417__bF$buf6),
    .S(vdd)
);

DFFSR _3109_ (
    .CLK(clk_bF$buf12),
    .D(_1390_),
    .Q(\u_cpu.ABL [2]),
    .R(_1417__bF$buf5),
    .S(vdd)
);

DFFSR _3110_ (
    .CLK(clk_bF$buf11),
    .D(\u_cpu.DIMUX [7]),
    .Q(\u_cpu.DIHOLD [7]),
    .R(_1417__bF$buf4),
    .S(vdd)
);

DFFSR _3111_ (
    .CLK(clk_bF$buf10),
    .D(_1391_),
    .Q(\u_cpu.ABL [1]),
    .R(_1417__bF$buf3),
    .S(vdd)
);

DFFSR _3112_ (
    .CLK(clk_bF$buf9),
    .D(_1446_),
    .Q(\u_cpu.php ),
    .R(_1417__bF$buf2),
    .S(vdd)
);

DFFSR _3113_ (
    .CLK(clk_bF$buf8),
    .D(_1392_),
    .Q(\u_cpu.ABL [0]),
    .R(_1417__bF$buf1),
    .S(vdd)
);

DFFSR _3114_ (
    .CLK(clk_bF$buf7),
    .D(_1473_),
    .Q(\u_cpu.AXYS[0] [0]),
    .R(_1417__bF$buf0),
    .S(vdd)
);

DFFSR _3115_ (
    .CLK(clk_bF$buf6),
    .D(_1447_),
    .Q(\u_cpu.AXYS[2] [2]),
    .R(_1417__bF$buf10),
    .S(vdd)
);

DFFSR _3116_ (
    .CLK(clk_bF$buf5),
    .D(_1482_),
    .Q(\u_cpu.PC [14]),
    .R(_1417__bF$buf9),
    .S(vdd)
);

DFFSR _3117_ (
    .CLK(clk_bF$buf4),
    .D(_1448_),
    .Q(\u_cpu.AXYS[2] [1]),
    .R(_1417__bF$buf8),
    .S(vdd)
);

DFFSR _3118_ (
    .CLK(clk_bF$buf3),
    .D(_1399_),
    .Q(\u_cpu.store ),
    .R(_1417__bF$buf7),
    .S(vdd)
);

DFFSR _3119_ (
    .CLK(clk_bF$buf2),
    .D(_1474_),
    .Q(\u_cpu.op [2]),
    .R(_1417__bF$buf6),
    .S(vdd)
);

DFFSR _3120_ (
    .CLK(clk_bF$buf1),
    .D(_1449_),
    .Q(\u_cpu.AXYS[2] [7]),
    .R(_1417__bF$buf5),
    .S(vdd)
);

DFFSR _3121_ (
    .CLK(clk_bF$buf0),
    .D(_1490_),
    .Q(\u_cpu.PC [7]),
    .R(_1417__bF$buf4),
    .S(vdd)
);

DFFSR _3122_ (
    .CLK(clk_bF$buf12),
    .D(_1450_),
    .Q(\u_cpu.plp ),
    .R(_1417__bF$buf3),
    .S(vdd)
);

DFFSR _3123_ (
    .CLK(clk_bF$buf11),
    .D(_1475_),
    .Q(\u_cpu.op [1]),
    .R(_1417__bF$buf2),
    .S(vdd)
);

DFFSR _3124_ (
    .CLK(clk_bF$buf10),
    .D(\u_cpu.DIMUX [3]),
    .Q(\u_cpu.DIHOLD [3]),
    .R(_1417__bF$buf1),
    .S(vdd)
);

DFFSR _3125_ (
    .CLK(clk_bF$buf9),
    .D(\u_cpu.DIMUX [0]),
    .Q(\u_cpu.DIHOLD [0]),
    .R(_1417__bF$buf0),
    .S(vdd)
);

DFFSR _3126_ (
    .CLK(clk_bF$buf8),
    .D(\u_cpu.DIMUX [2]),
    .Q(\u_cpu.DIHOLD [2]),
    .R(_1417__bF$buf10),
    .S(vdd)
);

DFFSR _3127_ (
    .CLK(clk_bF$buf7),
    .D(\u_cpu.DIMUX [1]),
    .Q(\u_cpu.DIHOLD [1]),
    .R(_1417__bF$buf9),
    .S(vdd)
);

DFFSR _3128_ (
    .CLK(clk_bF$buf6),
    .D(_1430_),
    .Q(\u_cpu.state [4]),
    .R(_1417__bF$buf8),
    .S(vdd)
);

DFFSR _3129_ (
    .CLK(clk_bF$buf5),
    .D(_1431_),
    .Q(\u_cpu.state [3]),
    .R(vdd),
    .S(_1417__bF$buf7)
);

DFFSR _3130_ (
    .CLK(clk_bF$buf4),
    .D(_1401_),
    .Q(\u_cpu.res ),
    .R(vdd),
    .S(_1417__bF$buf6)
);

DFFSR _3131_ (
    .CLK(clk_bF$buf3),
    .D(_1451_),
    .Q(\u_cpu.src_reg [1]),
    .R(_1417__bF$buf5),
    .S(vdd)
);

DFFSR _3132_ (
    .CLK(clk_bF$buf2),
    .D(_1402_),
    .Q(\u_cpu.AXYS[1] [6]),
    .R(_1417__bF$buf4),
    .S(vdd)
);

DFFSR _3133_ (
    .CLK(clk_bF$buf1),
    .D(_1483_),
    .Q(\u_cpu.cli ),
    .R(_1417__bF$buf3),
    .S(vdd)
);

DFFSR _3134_ (
    .CLK(clk_bF$buf0),
    .D(_1403_),
    .Q(\u_cpu.AXYS[1] [5]),
    .R(_1417__bF$buf2),
    .S(vdd)
);

DFFSR _3135_ (
    .CLK(clk_bF$buf12),
    .D(_1452_),
    .Q(\u_cpu.cond_code [2]),
    .R(_1417__bF$buf1),
    .S(vdd)
);

DFFSR _3136_ (
    .CLK(clk_bF$buf11),
    .D(_1404_),
    .Q(\u_cpu.clv ),
    .R(_1417__bF$buf0),
    .S(vdd)
);

DFFSR _3137_ (
    .CLK(clk_bF$buf10),
    .D(_1476_),
    .Q(\u_cpu.op [0]),
    .R(_1417__bF$buf10),
    .S(vdd)
);

DFFSR _3138_ (
    .CLK(clk_bF$buf9),
    .D(_1405_),
    .Q(\u_cpu.IRHOLD_valid ),
    .R(_1417__bF$buf9),
    .S(vdd)
);

DFFSR _3139_ (
    .CLK(clk_bF$buf8),
    .D(_1453_),
    .Q(\u_cpu.N ),
    .R(_1417__bF$buf8),
    .S(vdd)
);

DFFSR _3140_ (
    .CLK(clk_bF$buf7),
    .D(_1406_),
    .Q(\u_cpu.AXYS[3] [6]),
    .R(_1417__bF$buf7),
    .S(vdd)
);

DFFSR _3141_ (
    .CLK(clk_bF$buf6),
    .D(_1487_),
    .Q(\u_cpu.PC [10]),
    .R(_1417__bF$buf6),
    .S(vdd)
);

DFFSR _3142_ (
    .CLK(clk_bF$buf5),
    .D(_1407_),
    .Q(\u_cpu.AXYS[3] [5]),
    .R(_1417__bF$buf5),
    .S(vdd)
);

DFFSR _3143_ (
    .CLK(clk_bF$buf4),
    .D(NMI),
    .Q(\u_cpu.NMI_1 ),
    .R(_1417__bF$buf4),
    .S(vdd)
);

DFFSR _3144_ (
    .CLK(clk_bF$buf3),
    .D(_1408_),
    .Q(\u_cpu.cond_code [1]),
    .R(_1417__bF$buf3),
    .S(vdd)
);

DFFSR _3145_ (
    .CLK(clk_bF$buf2),
    .D(_1454_),
    .Q(\u_cpu.index_y ),
    .R(_1417__bF$buf2),
    .S(vdd)
);

DFFSR _3146_ (
    .CLK(clk_bF$buf1),
    .D(_1409_),
    .Q(\u_cpu.compare ),
    .R(_1417__bF$buf1),
    .S(vdd)
);

DFFPOSX1 _3147_ (
    .CLK(clk_bF$buf0),
    .D(_1400_),
    .Q(\u_cpu.IRHOLD [6])
);

DFFSR _3148_ (
    .CLK(clk_bF$buf12),
    .D(_1410_),
    .Q(\u_cpu.cond_code [0]),
    .R(_1417__bF$buf0),
    .S(vdd)
);

DFFSR _3149_ (
    .CLK(clk_bF$buf11),
    .D(_1455_),
    .Q(\u_cpu.AXYS[2] [0]),
    .R(_1417__bF$buf10),
    .S(vdd)
);

DFFSR _3150_ (
    .CLK(clk_bF$buf10),
    .D(_1411_),
    .Q(\u_cpu.PC [15]),
    .R(_1417__bF$buf9),
    .S(vdd)
);

DFFSR _3151_ (
    .CLK(clk_bF$buf9),
    .D(\u_cpu.DIMUX [4]),
    .Q(\u_cpu.DIHOLD [4]),
    .R(_1417__bF$buf8),
    .S(vdd)
);

DFFSR _3152_ (
    .CLK(clk_bF$buf8),
    .D(_1412_),
    .Q(\u_cpu.src_reg [0]),
    .R(_1417__bF$buf7),
    .S(vdd)
);

DFFSR _3153_ (
    .CLK(clk_bF$buf7),
    .D(_1456_),
    .Q(\u_cpu.dst_reg [0]),
    .R(_1417__bF$buf6),
    .S(vdd)
);

DFFSR _3154_ (
    .CLK(clk_bF$buf6),
    .D(_1413_),
    .Q(\u_cpu.shift_right ),
    .R(_1417__bF$buf5),
    .S(vdd)
);

DFFPOSX1 _3155_ (
    .CLK(clk_bF$buf5),
    .D(_1398_),
    .Q(\u_cpu.IRHOLD [5])
);

DFFSR _3156_ (
    .CLK(clk_bF$buf4),
    .D(_1414_),
    .Q(\u_cpu.AXYS[2] [6]),
    .R(_1417__bF$buf4),
    .S(vdd)
);

DFFSR _3157_ (
    .CLK(clk_bF$buf3),
    .D(_1457_),
    .Q(\u_cpu.ABL [7]),
    .R(_1417__bF$buf3),
    .S(vdd)
);

DFFSR _3158_ (
    .CLK(clk_bF$buf2),
    .D(_1415_),
    .Q(\u_cpu.AXYS[2] [5]),
    .R(_1417__bF$buf2),
    .S(vdd)
);

DFFPOSX1 _3159_ (
    .CLK(clk_bF$buf1),
    .D(_1397_),
    .Q(\u_cpu.IRHOLD [4])
);

DFFSR _3160_ (
    .CLK(clk_bF$buf0),
    .D(_1416_),
    .Q(\u_cpu.AXYS[2] [4]),
    .R(_1417__bF$buf1),
    .S(vdd)
);

DFFSR _3161_ (
    .CLK(clk_bF$buf12),
    .D(_1458_),
    .Q(\u_cpu.sed ),
    .R(_1417__bF$buf0),
    .S(vdd)
);

DFFPOSX1 _3162_ (
    .CLK(clk_bF$buf11),
    .D(_1418_),
    .Q(\u_cpu.IRHOLD [7])
);

DFFPOSX1 _3163_ (
    .CLK(clk_bF$buf10),
    .D(_1396_),
    .Q(\u_cpu.IRHOLD [3])
);

DFFSR _3164_ (
    .CLK(clk_bF$buf9),
    .D(_1459_),
    .Q(\u_cpu.NMI_edge ),
    .R(_1417__bF$buf10),
    .S(vdd)
);

OAI22X1 _3165_ (
    .A(RDY_bF$buf7),
    .B(_1292_),
    .C(_73_),
    .D(_72_),
    .Y(_1356_)
);

NAND2X1 _3166_ (
    .A(RDY_bF$buf6),
    .B(_1224_),
    .Y(_72_)
);

NOR2X1 _3167_ (
    .A(_1288_),
    .B(_1213_),
    .Y(_73_)
);

OAI22X1 _3168_ (
    .A(RDY_bF$buf5),
    .B(_615_),
    .C(_75_),
    .D(_74_),
    .Y(_1357_)
);

OAI21X1 _3169_ (
    .A(_1277_),
    .B(_78_),
    .C(RDY_bF$buf4),
    .Y(_74_)
);

NOR2X1 _3170_ (
    .A(_1276_),
    .B(_1225_),
    .Y(_75_)
);

OAI21X1 _3171_ (
    .A(_1196__bF$buf8),
    .B(_76_),
    .C(_79_),
    .Y(_1358_)
);

NAND2X1 _3172_ (
    .A(_77_),
    .B(_78_),
    .Y(_76_)
);

OAI21X1 _3173_ (
    .A(_1264_),
    .B(_1226_),
    .C(_1271_),
    .Y(_77_)
);

INVX1 _3174_ (
    .A(_1225_),
    .Y(_78_)
);

NAND2X1 _3175_ (
    .A(\u_cpu.PC [4]),
    .B(_1196__bF$buf7),
    .Y(_79_)
);

OAI21X1 _3176_ (
    .A(RDY_bF$buf3),
    .B(_285_),
    .C(_80_),
    .Y(_1359_)
);

NAND3X1 _3177_ (
    .A(RDY_bF$buf2),
    .B(_81_),
    .C(_1214_),
    .Y(_80_)
);

NAND2X1 _3178_ (
    .A(_1264_),
    .B(_1226_),
    .Y(_81_)
);

OAI21X1 _3179_ (
    .A(_82_),
    .B(_83_),
    .C(_84_),
    .Y(_1360_)
);

NAND2X1 _3180_ (
    .A(RDY_bF$buf1),
    .B(_1226_),
    .Y(_82_)
);

NOR2X1 _3181_ (
    .A(_1258_),
    .B(_1215_),
    .Y(_83_)
);

NAND2X1 _3182_ (
    .A(\u_cpu.PC [2]),
    .B(_1196__bF$buf6),
    .Y(_84_)
);

OAI21X1 _3183_ (
    .A(_977_),
    .B(_713_),
    .C(_85_),
    .Y(_1361_)
);

NAND2X1 _3184_ (
    .A(\u_cpu.AXYS[0] [7]),
    .B(_977_),
    .Y(_85_)
);

OAI21X1 _3185_ (
    .A(_87_),
    .B(_86_),
    .C(_88_),
    .Y(_1362_)
);

OAI21X1 _3186_ (
    .A(_1219_),
    .B(_93_),
    .C(RDY_bF$buf0),
    .Y(_86_)
);

NOR2X1 _3187_ (
    .A(_1253_),
    .B(_1227_),
    .Y(_87_)
);

NAND2X1 _3188_ (
    .A(\u_cpu.PC [1]),
    .B(_1196__bF$buf5),
    .Y(_88_)
);

OAI21X1 _3189_ (
    .A(_90_),
    .B(_113_),
    .C(_89_),
    .Y(_1363_)
);

OAI21X1 _3190_ (
    .A(_1196__bF$buf4),
    .B(_282_),
    .C(\u_cpu.adc_sbc ),
    .Y(_89_)
);

NAND2X1 _3191_ (
    .A(_1106_),
    .B(_1027_),
    .Y(_90_)
);

OAI21X1 _3192_ (
    .A(_1196__bF$buf3),
    .B(_91_),
    .C(_94_),
    .Y(_1364_)
);

NAND2X1 _3193_ (
    .A(_92_),
    .B(_93_),
    .Y(_91_)
);

NAND2X1 _3194_ (
    .A(_1218_),
    .B(_1216_),
    .Y(_92_)
);

INVX1 _3195_ (
    .A(_1227_),
    .Y(_93_)
);

NAND2X1 _3196_ (
    .A(\u_cpu.PC [0]),
    .B(_1196__bF$buf2),
    .Y(_94_)
);

OAI21X1 _3197_ (
    .A(_921_),
    .B(_713_),
    .C(_95_),
    .Y(_1365_)
);

NAND2X1 _3198_ (
    .A(\u_cpu.AXYS[3] [7]),
    .B(_921_),
    .Y(_95_)
);

OAI21X1 _3199_ (
    .A(_1041_),
    .B(_943_),
    .C(_96_),
    .Y(_1366_)
);

NAND2X1 _3200_ (
    .A(\u_cpu.AXYS[1] [3]),
    .B(_1041_),
    .Y(_96_)
);

OAI21X1 _3201_ (
    .A(_1041_),
    .B(_952_),
    .C(_97_),
    .Y(_1367_)
);

NAND2X1 _3202_ (
    .A(\u_cpu.AXYS[1] [2]),
    .B(_1041_),
    .Y(_97_)
);

OAI21X1 _3203_ (
    .A(_1041_),
    .B(_963_),
    .C(_98_),
    .Y(_1368_)
);

NAND2X1 _3204_ (
    .A(\u_cpu.AXYS[1] [1]),
    .B(_1041_),
    .Y(_98_)
);

OAI21X1 _3205_ (
    .A(_1041_),
    .B(_975_),
    .C(_99_),
    .Y(_1369_)
);

NAND2X1 _3206_ (
    .A(\u_cpu.AXYS[1] [0]),
    .B(_1041_),
    .Y(_99_)
);

OAI21X1 _3207_ (
    .A(_104_),
    .B(_100_),
    .C(_103_),
    .Y(_1370_)
);

AOI21X1 _3208_ (
    .A(_101_),
    .B(_897_),
    .C(_102_),
    .Y(_100_)
);

OAI21X1 _3209_ (
    .A(_1178_),
    .B(_220_),
    .C(_107_),
    .Y(_101_)
);

OAI21X1 _3210_ (
    .A(_1179_),
    .B(_897_),
    .C(_1241_),
    .Y(_102_)
);

NAND2X1 _3211_ (
    .A(\u_cpu.I ),
    .B(_104_),
    .Y(_103_)
);

OAI22X1 _3212_ (
    .A(_106_),
    .B(_105_),
    .C(\u_cpu.sei ),
    .D(_107_),
    .Y(_104_)
);

OAI21X1 _3213_ (
    .A(_723_),
    .B(_1345__bF$buf3),
    .C(_1241_),
    .Y(_105_)
);

OAI21X1 _3214_ (
    .A(_1252_),
    .B(_1328__bF$buf5),
    .C(_847_),
    .Y(_106_)
);

NAND2X1 _3215_ (
    .A(_1130_),
    .B(_220_),
    .Y(_107_)
);

OAI21X1 _3216_ (
    .A(_667_),
    .B(_1129__bF$buf5),
    .C(_108_),
    .Y(_1371_)
);

NAND3X1 _3217_ (
    .A(_1129__bF$buf4),
    .B(_994_),
    .C(_1004_),
    .Y(_108_)
);

OAI21X1 _3218_ (
    .A(_1041_),
    .B(_713_),
    .C(_109_),
    .Y(_1372_)
);

NAND2X1 _3219_ (
    .A(\u_cpu.AXYS[1] [7]),
    .B(_1041_),
    .Y(_109_)
);

OAI21X1 _3220_ (
    .A(_342_),
    .B(_800__bF$buf4),
    .C(_110_),
    .Y(_1373_)
);

NAND2X1 _3221_ (
    .A(_2354_[14]),
    .B(_800__bF$buf3),
    .Y(_110_)
);

OAI21X1 _3222_ (
    .A(_1037__bF$buf3),
    .B(_771_),
    .C(_111_),
    .Y(_1374_)
);

OAI21X1 _3223_ (
    .A(_1196__bF$buf1),
    .B(_1345__bF$buf2),
    .C(\u_cpu.load_only ),
    .Y(_111_)
);

OAI21X1 _3224_ (
    .A(_112_),
    .B(_113_),
    .C(_115_),
    .Y(_1375_)
);

NAND3X1 _3225_ (
    .A(\u_cpu.D ),
    .B(_1106_),
    .C(_561_),
    .Y(_112_)
);

NAND3X1 _3226_ (
    .A(RDY_bF$buf7),
    .B(_114_),
    .C(_1024_),
    .Y(_113_)
);

INVX1 _3227_ (
    .A(_282_),
    .Y(_114_)
);

OAI21X1 _3228_ (
    .A(_1196__bF$buf0),
    .B(_282_),
    .C(\u_cpu.adc_bcd ),
    .Y(_115_)
);

MUX2X1 _3229_ (
    .A(_1165_),
    .B(_116_),
    .S(_898_),
    .Y(_1376_)
);

OAI21X1 _3230_ (
    .A(_1345__bF$buf1),
    .B(_117_),
    .C(_119_),
    .Y(_116_)
);

OAI21X1 _3231_ (
    .A(\u_cpu.plp ),
    .B(\u_cpu.cld ),
    .C(_118_),
    .Y(_117_)
);

NAND2X1 _3232_ (
    .A(\u_cpu.plp ),
    .B(\u_cpu.ADD [3]),
    .Y(_118_)
);

OAI21X1 _3233_ (
    .A(_120_),
    .B(_1345__bF$buf0),
    .C(_185_),
    .Y(_119_)
);

NOR2X1 _3234_ (
    .A(\u_cpu.sed ),
    .B(\u_cpu.plp ),
    .Y(_120_)
);

OAI21X1 _3235_ (
    .A(_333_),
    .B(_800__bF$buf2),
    .C(_121_),
    .Y(_1377_)
);

NAND2X1 _3236_ (
    .A(_2354_[13]),
    .B(_800__bF$buf1),
    .Y(_121_)
);

OAI21X1 _3237_ (
    .A(_358_),
    .B(_800__bF$buf0),
    .C(_122_),
    .Y(_1378_)
);

NAND2X1 _3238_ (
    .A(_2354_[12]),
    .B(_800__bF$buf4),
    .Y(_122_)
);

OAI21X1 _3239_ (
    .A(_352_),
    .B(_800__bF$buf3),
    .C(_123_),
    .Y(_1379_)
);

NAND2X1 _3240_ (
    .A(_2354_[11]),
    .B(_800__bF$buf2),
    .Y(_123_)
);

OAI21X1 _3241_ (
    .A(_345_),
    .B(_800__bF$buf1),
    .C(_124_),
    .Y(_1380_)
);

NAND2X1 _3242_ (
    .A(_2354_[10]),
    .B(_800__bF$buf0),
    .Y(_124_)
);

OAI21X1 _3243_ (
    .A(_325_),
    .B(_800__bF$buf4),
    .C(_125_),
    .Y(_1381_)
);

NAND2X1 _3244_ (
    .A(_2354_[9]),
    .B(_800__bF$buf3),
    .Y(_125_)
);

OAI21X1 _3245_ (
    .A(_129_),
    .B(_126_),
    .C(_128_),
    .Y(_1382_)
);

AOI21X1 _3246_ (
    .A(_131_),
    .B(\u_cpu.AV ),
    .C(_127_),
    .Y(_126_)
);

OAI22X1 _3247_ (
    .A(_1344_),
    .B(_1108_),
    .C(_1096_),
    .D(_740_),
    .Y(_127_)
);

NAND2X1 _3248_ (
    .A(\u_cpu.V ),
    .B(_129_),
    .Y(_128_)
);

OAI21X1 _3249_ (
    .A(\u_cpu.adc_sbc ),
    .B(_130_),
    .C(_742_),
    .Y(_129_)
);

INVX1 _3250_ (
    .A(_131_),
    .Y(_130_)
);

NOR2X1 _3251_ (
    .A(\u_cpu.clv ),
    .B(_132_),
    .Y(_131_)
);

INVX1 _3252_ (
    .A(_1044_),
    .Y(_132_)
);

OAI21X1 _3253_ (
    .A(_322_),
    .B(_800__bF$buf2),
    .C(_133_),
    .Y(_1383_)
);

NAND2X1 _3254_ (
    .A(_2354_[8]),
    .B(_800__bF$buf1),
    .Y(_133_)
);

OAI21X1 _3255_ (
    .A(_671_),
    .B(_1129__bF$buf3),
    .C(_700_),
    .Y(_1384_)
);

OAI21X1 _3256_ (
    .A(_1116_),
    .B(_794_),
    .C(_134_),
    .Y(_1385_)
);

OAI21X1 _3257_ (
    .A(_1196__bF$buf8),
    .B(_1345__bF$buf3),
    .C(\u_cpu.cld ),
    .Y(_134_)
);

OAI21X1 _3258_ (
    .A(_1291_),
    .B(_800__bF$buf0),
    .C(_135_),
    .Y(_1386_)
);

NAND2X1 _3259_ (
    .A(_800__bF$buf4),
    .B(_2354__6_bF$buf0),
    .Y(_135_)
);

OAI21X1 _3260_ (
    .A(_1281_),
    .B(_800__bF$buf3),
    .C(_136_),
    .Y(_1387_)
);

NAND2X1 _3261_ (
    .A(_800__bF$buf2),
    .B(_2354__5_bF$buf1),
    .Y(_136_)
);

OAI21X1 _3262_ (
    .A(_138_),
    .B(_800__bF$buf1),
    .C(_137_),
    .Y(_1388_)
);

NAND2X1 _3263_ (
    .A(_800__bF$buf0),
    .B(_2354__4_bF$buf5),
    .Y(_137_)
);

INVX1 _3264_ (
    .A(\u_cpu.ABL [4]),
    .Y(_138_)
);

OAI21X1 _3265_ (
    .A(_1267_),
    .B(_800__bF$buf4),
    .C(_139_),
    .Y(_1389_)
);

NAND2X1 _3266_ (
    .A(_800__bF$buf3),
    .B(_2354__3_bF$buf0),
    .Y(_139_)
);

OAI21X1 _3267_ (
    .A(_1262_),
    .B(_800__bF$buf2),
    .C(_140_),
    .Y(_1390_)
);

NAND2X1 _3268_ (
    .A(_800__bF$buf1),
    .B(_2354__2_bF$buf3),
    .Y(_140_)
);

OAI21X1 _3269_ (
    .A(_142_),
    .B(_800__bF$buf0),
    .C(_141_),
    .Y(_1391_)
);

NAND2X1 _3270_ (
    .A(_800__bF$buf4),
    .B(_2354__1_bF$buf4),
    .Y(_141_)
);

INVX1 _3271_ (
    .A(\u_cpu.ABL [1]),
    .Y(_142_)
);

AOI21X1 _3272_ (
    .A(_223_),
    .B(_800__bF$buf3),
    .C(_143_),
    .Y(_1392_)
);

NOR2X1 _3273_ (
    .A(\u_cpu.ABL [0]),
    .B(_800__bF$buf2),
    .Y(_143_)
);

OAI21X1 _3274_ (
    .A(_1207_),
    .B(_179_),
    .C(_144_),
    .Y(_1393_)
);

OAI21X1 _3275_ (
    .A(reset),
    .B(_181_),
    .C(\u_cpu.IRHOLD [0]),
    .Y(_144_)
);

OAI21X1 _3276_ (
    .A(_1192_),
    .B(_179_),
    .C(_145_),
    .Y(_1394_)
);

OAI21X1 _3277_ (
    .A(reset),
    .B(_181_),
    .C(\u_cpu.IRHOLD [1]),
    .Y(_145_)
);

OAI21X1 _3278_ (
    .A(_1179_),
    .B(_179_),
    .C(_146_),
    .Y(_1395_)
);

OAI21X1 _3279_ (
    .A(reset),
    .B(_181_),
    .C(\u_cpu.IRHOLD [2]),
    .Y(_146_)
);

OAI21X1 _3280_ (
    .A(_1165_),
    .B(_179_),
    .C(_147_),
    .Y(_1396_)
);

OAI21X1 _3281_ (
    .A(reset),
    .B(_181_),
    .C(\u_cpu.IRHOLD [3]),
    .Y(_147_)
);

OAI21X1 _3282_ (
    .A(_1150_),
    .B(_179_),
    .C(_148_),
    .Y(_1397_)
);

OAI21X1 _3283_ (
    .A(reset),
    .B(_181_),
    .C(\u_cpu.IRHOLD [4]),
    .Y(_148_)
);

OAI21X1 _3284_ (
    .A(_1138_),
    .B(_179_),
    .C(_149_),
    .Y(_1398_)
);

OAI21X1 _3285_ (
    .A(reset),
    .B(_181_),
    .C(\u_cpu.IRHOLD [5]),
    .Y(_149_)
);

OAI21X1 _3286_ (
    .A(_1037__bF$buf2),
    .B(_151_),
    .C(_150_),
    .Y(_1399_)
);

OAI21X1 _3287_ (
    .A(_1196__bF$buf7),
    .B(_1345__bF$buf2),
    .C(\u_cpu.store ),
    .Y(_150_)
);

OAI21X1 _3288_ (
    .A(_1024_),
    .B(_682_),
    .C(_993_),
    .Y(_151_)
);

OAI21X1 _3289_ (
    .A(_1108_),
    .B(_179_),
    .C(_152_),
    .Y(_1400_)
);

OAI21X1 _3290_ (
    .A(reset),
    .B(_181_),
    .C(\u_cpu.IRHOLD [6]),
    .Y(_152_)
);

NOR2X1 _3291_ (
    .A(_1255_),
    .B(_1344_),
    .Y(_1401_)
);

OAI21X1 _3292_ (
    .A(_1041_),
    .B(_924_),
    .C(_153_),
    .Y(_1402_)
);

NAND2X1 _3293_ (
    .A(\u_cpu.AXYS[1] [6]),
    .B(_1041_),
    .Y(_153_)
);

OAI21X1 _3294_ (
    .A(_1041_),
    .B(_932_),
    .C(_154_),
    .Y(_1403_)
);

NAND2X1 _3295_ (
    .A(\u_cpu.AXYS[1] [5]),
    .B(_1041_),
    .Y(_154_)
);

OAI21X1 _3296_ (
    .A(_721_),
    .B(_173_),
    .C(_155_),
    .Y(_1404_)
);

OAI21X1 _3297_ (
    .A(_1196__bF$buf6),
    .B(_1345__bF$buf1),
    .C(\u_cpu.clv ),
    .Y(_155_)
);

OAI21X1 _3298_ (
    .A(_1125_),
    .B(_1129__bF$buf2),
    .C(_181_),
    .Y(_1405_)
);

OAI21X1 _3299_ (
    .A(_924_),
    .B(_921_),
    .C(_156_),
    .Y(_1406_)
);

NAND2X1 _3300_ (
    .A(\u_cpu.AXYS[3] [6]),
    .B(_921_),
    .Y(_156_)
);

OAI21X1 _3301_ (
    .A(_932_),
    .B(_921_),
    .C(_157_),
    .Y(_1407_)
);

NAND2X1 _3302_ (
    .A(\u_cpu.AXYS[3] [5]),
    .B(_921_),
    .Y(_157_)
);

OAI21X1 _3303_ (
    .A(_1196__bF$buf5),
    .B(_1105_),
    .C(_158_),
    .Y(_1408_)
);

NAND2X1 _3304_ (
    .A(\u_cpu.cond_code [1]),
    .B(_1196__bF$buf4),
    .Y(_158_)
);

OAI21X1 _3305_ (
    .A(_1037__bF$buf1),
    .B(_160_),
    .C(_159_),
    .Y(_1409_)
);

OAI21X1 _3306_ (
    .A(_1196__bF$buf3),
    .B(_1345__bF$buf0),
    .C(\u_cpu.compare ),
    .Y(_159_)
);

AOI22X1 _3307_ (
    .A(_1012_),
    .B(_1111_),
    .C(_985_),
    .D(_984_),
    .Y(_160_)
);

OAI21X1 _3308_ (
    .A(_1196__bF$buf2),
    .B(_1126_),
    .C(_161_),
    .Y(_1410_)
);

NAND2X1 _3309_ (
    .A(\u_cpu.cond_code [0]),
    .B(_1196__bF$buf1),
    .Y(_161_)
);

AOI22X1 _3310_ (
    .A(_1196__bF$buf0),
    .B(_907_),
    .C(_164_),
    .D(_162_),
    .Y(_1411_)
);

AOI21X1 _3311_ (
    .A(_1089_),
    .B(_163_),
    .C(_1196__bF$buf8),
    .Y(_162_)
);

INVX1 _3312_ (
    .A(_165_),
    .Y(_163_)
);

NAND3X1 _3313_ (
    .A(_1091_),
    .B(_165_),
    .C(_170_),
    .Y(_164_)
);

NOR2X1 _3314_ (
    .A(_166_),
    .B(_169_),
    .Y(_165_)
);

OAI21X1 _3315_ (
    .A(_1318_),
    .B(_1113_),
    .C(_167_),
    .Y(_166_)
);

AOI21X1 _3316_ (
    .A(_1206_),
    .B(\u_cpu.ABH [7]),
    .C(_168_),
    .Y(_167_)
);

OAI21X1 _3317_ (
    .A(_781_),
    .B(_1349_),
    .C(_1315__bF$buf3),
    .Y(_168_)
);

NOR2X1 _3318_ (
    .A(_907_),
    .B(_1183_),
    .Y(_169_)
);

NOR3X1 _3319_ (
    .A(_1146_),
    .B(_1134_),
    .C(_1156_),
    .Y(_170_)
);

OAI21X1 _3320_ (
    .A(_174_),
    .B(_1129__bF$buf1),
    .C(_171_),
    .Y(_1412_)
);

OAI21X1 _3321_ (
    .A(_172_),
    .B(_729_),
    .C(_1129__bF$buf0),
    .Y(_171_)
);

NOR2X1 _3322_ (
    .A(_988_),
    .B(_173_),
    .Y(_172_)
);

INVX1 _3323_ (
    .A(_681_),
    .Y(_173_)
);

INVX1 _3324_ (
    .A(\u_cpu.src_reg [0]),
    .Y(_174_)
);

AOI21X1 _3325_ (
    .A(_186_),
    .B(_1037__bF$buf0),
    .C(_982_),
    .Y(_1413_)
);

OAI21X1 _3326_ (
    .A(_924_),
    .B(_760_),
    .C(_175_),
    .Y(_1414_)
);

NAND2X1 _3327_ (
    .A(\u_cpu.AXYS[2] [6]),
    .B(_760_),
    .Y(_175_)
);

OAI21X1 _3328_ (
    .A(_932_),
    .B(_760_),
    .C(_176_),
    .Y(_1415_)
);

NAND2X1 _3329_ (
    .A(\u_cpu.AXYS[2] [5]),
    .B(_760_),
    .Y(_176_)
);

OAI21X1 _3330_ (
    .A(_1039_),
    .B(_760_),
    .C(_177_),
    .Y(_1416_)
);

NAND2X1 _3331_ (
    .A(\u_cpu.AXYS[2] [4]),
    .B(_760_),
    .Y(_177_)
);

INVX8 _3332_ (
    .A(reset),
    .Y(_1417_)
);

OAI21X1 _3333_ (
    .A(_1113_),
    .B(_179_),
    .C(_178_),
    .Y(_1418_)
);

OAI21X1 _3334_ (
    .A(reset),
    .B(_181_),
    .C(\u_cpu.IRHOLD [7]),
    .Y(_178_)
);

INVX2 _3335_ (
    .A(_180_),
    .Y(_179_)
);

NOR2X1 _3336_ (
    .A(reset),
    .B(_181_),
    .Y(_180_)
);

OAI21X1 _3337_ (
    .A(_1083_),
    .B(_451_),
    .C(RDY_bF$buf6),
    .Y(_181_)
);

OAI21X1 _3338_ (
    .A(_1113_),
    .B(_356_),
    .C(_182_),
    .Y(\u_cpu.AI [7])
);

AND2X2 _3339_ (
    .A(_184_),
    .B(_183_),
    .Y(_182_)
);

AOI22X1 _3340_ (
    .A(\u_cpu.ABH [7]),
    .B(_1286_),
    .C(_359_),
    .D(\u_cpu.AN ),
    .Y(_183_)
);

OAI21X1 _3341_ (
    .A(_784_),
    .B(_788_),
    .C(_334_),
    .Y(_184_)
);

NOR2X1 _3342_ (
    .A(_185_),
    .B(_673_),
    .Y(_1433_)
);

INVX1 _3343_ (
    .A(\u_cpu.D ),
    .Y(_185_)
);

NOR2X1 _3344_ (
    .A(_971_),
    .B(_745_),
    .Y(\u_cpu.u_ALU8.BCD )
);

NOR2X1 _3345_ (
    .A(_186_),
    .B(_502_),
    .Y(\u_cpu.alu_shift_right )
);

INVX1 _3346_ (
    .A(\u_cpu.shift_right ),
    .Y(_186_)
);

AND2X2 _3347_ (
    .A(_503_),
    .B(\u_cpu.op [3]),
    .Y(\u_cpu.alu_op [3])
);

OAI22X1 _3348_ (
    .A(_1355_),
    .B(_1250_),
    .C(_1113_),
    .D(_278_),
    .Y(\u_cpu.BI [7])
);

NAND3X1 _3349_ (
    .A(_189_),
    .B(_187_),
    .C(_190_),
    .Y(_2353_[7])
);

AOI21X1 _3350_ (
    .A(\u_cpu.N ),
    .B(_613_),
    .C(_188_),
    .Y(_187_)
);

OAI22X1 _3351_ (
    .A(_907_),
    .B(_616_),
    .C(_1355_),
    .D(_614_),
    .Y(_188_)
);

NAND2X1 _3352_ (
    .A(\u_cpu.AN ),
    .B(_625_),
    .Y(_189_)
);

OAI21X1 _3353_ (
    .A(_784_),
    .B(_788_),
    .C(_630_),
    .Y(_190_)
);

OR2X2 _3354_ (
    .A(_191_),
    .B(_192_),
    .Y(_1633_)
);

NAND3X1 _3355_ (
    .A(_450_),
    .B(_431_),
    .C(_379_),
    .Y(_191_)
);

NAND2X1 _3356_ (
    .A(_193_),
    .B(_200_),
    .Y(_192_)
);

NOR2X1 _3357_ (
    .A(_194_),
    .B(_495_),
    .Y(_193_)
);

NAND2X1 _3358_ (
    .A(_198_),
    .B(_195_),
    .Y(_194_)
);

NOR2X1 _3359_ (
    .A(_196_),
    .B(_197_),
    .Y(_195_)
);

NAND2X1 _3360_ (
    .A(_444_),
    .B(_426_),
    .Y(_196_)
);

NAND2X1 _3361_ (
    .A(_489_),
    .B(_549_),
    .Y(_197_)
);

AOI21X1 _3362_ (
    .A(_375_),
    .B(_374_),
    .C(_199_),
    .Y(_198_)
);

NAND2X1 _3363_ (
    .A(_298_),
    .B(_455_),
    .Y(_199_)
);

NOR2X1 _3364_ (
    .A(_203_),
    .B(_201_),
    .Y(_200_)
);

NAND2X1 _3365_ (
    .A(_202_),
    .B(_465_),
    .Y(_201_)
);

INVX1 _3366_ (
    .A(_478_),
    .Y(_202_)
);

NAND3X1 _3367_ (
    .A(_206_),
    .B(_204_),
    .C(_511_),
    .Y(_203_)
);

AOI21X1 _3368_ (
    .A(_412_),
    .B(_205_),
    .C(_394_),
    .Y(_204_)
);

OAI21X1 _3369_ (
    .A(_1328__bF$buf4),
    .B(_906_),
    .C(_1196__bF$buf7),
    .Y(_205_)
);

AND2X2 _3370_ (
    .A(_418_),
    .B(_472_),
    .Y(_206_)
);

NAND3X1 _3371_ (
    .A(_217_),
    .B(_216_),
    .C(_207_),
    .Y(\u_cpu.CI )
);

NOR2X1 _3372_ (
    .A(_214_),
    .B(_208_),
    .Y(_207_)
);

NAND3X1 _3373_ (
    .A(_209_),
    .B(_868_),
    .C(_213_),
    .Y(_208_)
);

OAI21X1 _3374_ (
    .A(_212_),
    .B(_210_),
    .C(_746_),
    .Y(_209_)
);

AOI21X1 _3375_ (
    .A(_211_),
    .B(_672_),
    .C(\u_cpu.rotate ),
    .Y(_210_)
);

NAND3X1 _3376_ (
    .A(\u_cpu.C ),
    .B(_368_),
    .C(_671_),
    .Y(_211_)
);

NOR2X1 _3377_ (
    .A(_701_),
    .B(_675_),
    .Y(_212_)
);

NOR2X1 _3378_ (
    .A(_1083_),
    .B(_898_),
    .Y(_213_)
);

NAND3X1 _3379_ (
    .A(_1074_),
    .B(_215_),
    .C(_813_),
    .Y(_214_)
);

INVX1 _3380_ (
    .A(_905_),
    .Y(_215_)
);

OAI21X1 _3381_ (
    .A(_1286_),
    .B(_891_),
    .C(\u_cpu.CO ),
    .Y(_216_)
);

OAI21X1 _3382_ (
    .A(_220_),
    .B(_467_),
    .C(_218_),
    .Y(_217_)
);

OAI21X1 _3383_ (
    .A(_701_),
    .B(_675_),
    .C(_219_),
    .Y(_218_)
);

NAND3X1 _3384_ (
    .A(\u_cpu.inc ),
    .B(_701_),
    .C(_671_),
    .Y(_219_)
);

INVX1 _3385_ (
    .A(_847_),
    .Y(_220_)
);

NAND2X1 _3386_ (
    .A(_221_),
    .B(_630_),
    .Y(_2352_)
);

OAI21X1 _3387_ (
    .A(_572_),
    .B(_222_),
    .C(\u_cpu.store ),
    .Y(_221_)
);

OAI21X1 _3388_ (
    .A(_1327_),
    .B(_888_),
    .C(_909_),
    .Y(_222_)
);

INVX8 _3389_ (
    .A(_223_),
    .Y(_2354_[0])
);

AND2X2 _3390_ (
    .A(_227_),
    .B(_224_),
    .Y(_223_)
);

AOI21X1 _3391_ (
    .A(_782_),
    .B(\u_cpu.PC [0]),
    .C(_225_),
    .Y(_224_)
);

OAI21X1 _3392_ (
    .A(_1205_),
    .B(_877_),
    .C(_226_),
    .Y(_225_)
);

AOI22X1 _3393_ (
    .A(\u_cpu.DIMUX [0]),
    .B(_867_),
    .C(_780_),
    .D(\u_cpu.ABL [0]),
    .Y(_226_)
);

OAI21X1 _3394_ (
    .A(_1073_),
    .B(_873_),
    .C(_607_),
    .Y(_227_)
);

INVX1 _3395_ (
    .A(_228_),
    .Y(_2354_[12])
);

AOI21X1 _3396_ (
    .A(\u_cpu.ADD [4]),
    .B(_908_),
    .C(_229_),
    .Y(_228_)
);

OAI21X1 _3397_ (
    .A(_1154_),
    .B(_864_),
    .C(_230_),
    .Y(_229_)
);

AND2X2 _3398_ (
    .A(_232_),
    .B(_231_),
    .Y(_230_)
);

OAI21X1 _3399_ (
    .A(_1286_),
    .B(_875_),
    .C(\u_cpu.ABH [4]),
    .Y(_231_)
);

OAI21X1 _3400_ (
    .A(_1319_),
    .B(_887_),
    .C(\u_cpu.DIMUX [4]),
    .Y(_232_)
);

OAI21X1 _3401_ (
    .A(_872_),
    .B(_326_),
    .C(_233_),
    .Y(_2354_[1])
);

AOI21X1 _3402_ (
    .A(_782_),
    .B(\u_cpu.PC [1]),
    .C(_234_),
    .Y(_233_)
);

OAI21X1 _3403_ (
    .A(_1221_),
    .B(_877_),
    .C(_235_),
    .Y(_234_)
);

AOI22X1 _3404_ (
    .A(\u_cpu.DIMUX [1]),
    .B(_867_),
    .C(_780_),
    .D(\u_cpu.ABL [1]),
    .Y(_235_)
);

INVX1 _3405_ (
    .A(_236_),
    .Y(_2354_[9])
);

AOI21X1 _3406_ (
    .A(_782_),
    .B(\u_cpu.PC [9]),
    .C(_237_),
    .Y(_236_)
);

OAI21X1 _3407_ (
    .A(_1192_),
    .B(_886_),
    .C(_238_),
    .Y(_237_)
);

AND2X2 _3408_ (
    .A(_240_),
    .B(_239_),
    .Y(_238_)
);

OAI21X1 _3409_ (
    .A(_1286_),
    .B(_875_),
    .C(\u_cpu.ABH [1]),
    .Y(_239_)
);

NAND2X1 _3410_ (
    .A(\u_cpu.ADD [1]),
    .B(_908_),
    .Y(_240_)
);

OAI21X1 _3411_ (
    .A(_629_),
    .B(_346_),
    .C(_241_),
    .Y(_2353_[2])
);

INVX1 _3412_ (
    .A(_242_),
    .Y(_241_)
);

NAND3X1 _3413_ (
    .A(_245_),
    .B(_244_),
    .C(_243_),
    .Y(_242_)
);

AOI22X1 _3414_ (
    .A(_636_),
    .B(\u_cpu.PC [2]),
    .C(\u_cpu.ADD [2]),
    .D(_625_),
    .Y(_243_)
);

OAI21X1 _3415_ (
    .A(_449_),
    .B(_555_),
    .C(\u_cpu.PC [10]),
    .Y(_244_)
);

OAI21X1 _3416_ (
    .A(_1274_),
    .B(_628_),
    .C(\u_cpu.I ),
    .Y(_245_)
);

INVX1 _3417_ (
    .A(_246_),
    .Y(_2354_[11])
);

AOI21X1 _3418_ (
    .A(\u_cpu.ADD [3]),
    .B(_908_),
    .C(_247_),
    .Y(_246_)
);

OAI21X1 _3419_ (
    .A(_1169_),
    .B(_864_),
    .C(_248_),
    .Y(_247_)
);

AND2X2 _3420_ (
    .A(_250_),
    .B(_249_),
    .Y(_248_)
);

OAI21X1 _3421_ (
    .A(_1286_),
    .B(_875_),
    .C(\u_cpu.ABH [3]),
    .Y(_249_)
);

OAI21X1 _3422_ (
    .A(_1319_),
    .B(_887_),
    .C(\u_cpu.DIMUX [3]),
    .Y(_250_)
);

OAI21X1 _3423_ (
    .A(_629_),
    .B(_326_),
    .C(_251_),
    .Y(_2353_[1])
);

INVX1 _3424_ (
    .A(_252_),
    .Y(_251_)
);

NAND3X1 _3425_ (
    .A(_254_),
    .B(_253_),
    .C(_255_),
    .Y(_252_)
);

AOI22X1 _3426_ (
    .A(\u_cpu.PC [9]),
    .B(_873_),
    .C(_613_),
    .D(\u_cpu.Z ),
    .Y(_253_)
);

OAI21X1 _3427_ (
    .A(_638_),
    .B(_857_),
    .C(\u_cpu.PC [1]),
    .Y(_254_)
);

NAND2X1 _3428_ (
    .A(\u_cpu.ADD [1]),
    .B(_625_),
    .Y(_255_)
);

NAND3X1 _3429_ (
    .A(_259_),
    .B(_256_),
    .C(_260_),
    .Y(_2353_[3])
);

AOI21X1 _3430_ (
    .A(\u_cpu.D ),
    .B(_613_),
    .C(_257_),
    .Y(_256_)
);

OAI21X1 _3431_ (
    .A(_285_),
    .B(_614_),
    .C(_258_),
    .Y(_257_)
);

OAI21X1 _3432_ (
    .A(_449_),
    .B(_555_),
    .C(\u_cpu.PC [11]),
    .Y(_258_)
);

NAND2X1 _3433_ (
    .A(\u_cpu.ADD [3]),
    .B(_625_),
    .Y(_259_)
);

OAI21X1 _3434_ (
    .A(_601_),
    .B(_598_),
    .C(_630_),
    .Y(_260_)
);

INVX1 _3435_ (
    .A(_261_),
    .Y(_2354_[14])
);

AOI21X1 _3436_ (
    .A(_782_),
    .B(\u_cpu.PC [14]),
    .C(_262_),
    .Y(_261_)
);

OAI21X1 _3437_ (
    .A(_1108_),
    .B(_886_),
    .C(_263_),
    .Y(_262_)
);

AND2X2 _3438_ (
    .A(_265_),
    .B(_264_),
    .Y(_263_)
);

OAI21X1 _3439_ (
    .A(_1286_),
    .B(_875_),
    .C(\u_cpu.ABH [6]),
    .Y(_264_)
);

NAND2X1 _3440_ (
    .A(\u_cpu.ADD [6]),
    .B(_908_),
    .Y(_265_)
);

INVX1 _3441_ (
    .A(_266_),
    .Y(_2354_[13])
);

AOI21X1 _3442_ (
    .A(_782_),
    .B(\u_cpu.PC [13]),
    .C(_267_),
    .Y(_266_)
);

OAI21X1 _3443_ (
    .A(_1138_),
    .B(_886_),
    .C(_268_),
    .Y(_267_)
);

AND2X2 _3444_ (
    .A(_270_),
    .B(_269_),
    .Y(_268_)
);

OAI21X1 _3445_ (
    .A(_1286_),
    .B(_875_),
    .C(\u_cpu.ABH [5]),
    .Y(_269_)
);

NAND2X1 _3446_ (
    .A(\u_cpu.ADD [5]),
    .B(_908_),
    .Y(_270_)
);

OAI21X1 _3447_ (
    .A(_872_),
    .B(_346_),
    .C(_271_),
    .Y(_2354_[2])
);

AOI21X1 _3448_ (
    .A(_782_),
    .B(\u_cpu.PC [2]),
    .C(_272_),
    .Y(_271_)
);

OAI21X1 _3449_ (
    .A(_1178_),
    .B(_877_),
    .C(_273_),
    .Y(_272_)
);

AOI22X1 _3450_ (
    .A(\u_cpu.DIMUX [2]),
    .B(_867_),
    .C(_780_),
    .D(\u_cpu.ABL [2]),
    .Y(_273_)
);

OR2X2 _3451_ (
    .A(_388_),
    .B(_452_),
    .Y(_1432_)
);

OAI21X1 _3452_ (
    .A(_1192_),
    .B(_278_),
    .C(_274_),
    .Y(\u_cpu.BI [1])
);

NAND2X1 _3453_ (
    .A(\u_cpu.PC [1]),
    .B(_826_),
    .Y(_274_)
);

OAI21X1 _3454_ (
    .A(_1179_),
    .B(_278_),
    .C(_275_),
    .Y(\u_cpu.BI [2])
);

NAND2X1 _3455_ (
    .A(\u_cpu.PC [2]),
    .B(_826_),
    .Y(_275_)
);

OAI21X1 _3456_ (
    .A(_1150_),
    .B(_278_),
    .C(_276_),
    .Y(\u_cpu.BI [4])
);

NAND2X1 _3457_ (
    .A(\u_cpu.PC [4]),
    .B(_826_),
    .Y(_276_)
);

OAI22X1 _3458_ (
    .A(_615_),
    .B(_1250_),
    .C(_1138_),
    .D(_278_),
    .Y(\u_cpu.BI [5])
);

OAI22X1 _3459_ (
    .A(_1292_),
    .B(_1250_),
    .C(_1108_),
    .D(_278_),
    .Y(\u_cpu.BI [6])
);

OAI21X1 _3460_ (
    .A(_1207_),
    .B(_278_),
    .C(_277_),
    .Y(\u_cpu.BI [0])
);

NAND2X1 _3461_ (
    .A(\u_cpu.PC [0]),
    .B(_826_),
    .Y(_277_)
);

OAI22X1 _3462_ (
    .A(_285_),
    .B(_1250_),
    .C(_1165_),
    .D(_278_),
    .Y(\u_cpu.BI [3])
);

NAND3X1 _3463_ (
    .A(_284_),
    .B(_283_),
    .C(_279_),
    .Y(_278_)
);

NOR2X1 _3464_ (
    .A(_281_),
    .B(_280_),
    .Y(_279_)
);

NAND2X1 _3465_ (
    .A(_852_),
    .B(_809_),
    .Y(_280_)
);

NAND3X1 _3466_ (
    .A(_282_),
    .B(_632_),
    .C(_356_),
    .Y(_281_)
);

OAI21X1 _3467_ (
    .A(_1049_),
    .B(_1080_),
    .C(_1350_),
    .Y(_282_)
);

NOR2X1 _3468_ (
    .A(_857_),
    .B(_363_),
    .Y(_283_)
);

OAI21X1 _3469_ (
    .A(_1251_),
    .B(_889_),
    .C(_1329_),
    .Y(_284_)
);

INVX1 _3470_ (
    .A(\u_cpu.PC [3]),
    .Y(_285_)
);

INVX8 _3471_ (
    .A(_286_),
    .Y(_2354_[6])
);

AND2X2 _3472_ (
    .A(_290_),
    .B(_287_),
    .Y(_286_)
);

AOI21X1 _3473_ (
    .A(_782_),
    .B(\u_cpu.PC [6]),
    .C(_288_),
    .Y(_287_)
);

OAI21X1 _3474_ (
    .A(_1096_),
    .B(_877_),
    .C(_289_),
    .Y(_288_)
);

AOI22X1 _3475_ (
    .A(\u_cpu.DIMUX [6]),
    .B(_867_),
    .C(_780_),
    .D(\u_cpu.ABL [6]),
    .Y(_289_)
);

OAI21X1 _3476_ (
    .A(_644_),
    .B(_641_),
    .C(_871_),
    .Y(_290_)
);

NAND3X1 _3477_ (
    .A(_397_),
    .B(_294_),
    .C(_291_),
    .Y(_1429_)
);

AND2X2 _3478_ (
    .A(_480_),
    .B(_292_),
    .Y(_291_)
);

NOR2X1 _3479_ (
    .A(_293_),
    .B(_376_),
    .Y(_292_)
);

NAND3X1 _3480_ (
    .A(_525_),
    .B(_436_),
    .C(_468_),
    .Y(_293_)
);

AOI21X1 _3481_ (
    .A(_307_),
    .B(_1344_),
    .C(_295_),
    .Y(_294_)
);

OAI21X1 _3482_ (
    .A(_303_),
    .B(_567_),
    .C(_296_),
    .Y(_295_)
);

NOR2X1 _3483_ (
    .A(_532_),
    .B(_297_),
    .Y(_296_)
);

NAND2X1 _3484_ (
    .A(_298_),
    .B(_300_),
    .Y(_297_)
);

OAI21X1 _3485_ (
    .A(RDY_bF$buf5),
    .B(_1082_),
    .C(_299_),
    .Y(_298_)
);

OAI21X1 _3486_ (
    .A(_1328__bF$buf3),
    .B(_903_),
    .C(RDY_bF$buf4),
    .Y(_299_)
);

OAI21X1 _3487_ (
    .A(_302_),
    .B(_301_),
    .C(RDY_bF$buf3),
    .Y(_300_)
);

AOI21X1 _3488_ (
    .A(_403_),
    .B(_402_),
    .C(_1250_),
    .Y(_301_)
);

INVX1 _3489_ (
    .A(_1245_),
    .Y(_302_)
);

NOR2X1 _3490_ (
    .A(_306_),
    .B(_304_),
    .Y(_303_)
);

NAND3X1 _3491_ (
    .A(_915_),
    .B(_847_),
    .C(_305_),
    .Y(_304_)
);

OAI21X1 _3492_ (
    .A(_1285_),
    .B(_1233_),
    .C(_1329_),
    .Y(_305_)
);

OAI21X1 _3493_ (
    .A(_1305__bF$buf3),
    .B(_1331_),
    .C(_843_),
    .Y(_306_)
);

OAI21X1 _3494_ (
    .A(_318_),
    .B(_308_),
    .C(RDY_bF$buf2),
    .Y(_307_)
);

NAND3X1 _3495_ (
    .A(_383_),
    .B(_309_),
    .C(_313_),
    .Y(_308_)
);

NOR2X1 _3496_ (
    .A(_310_),
    .B(_311_),
    .Y(_309_)
);

OAI21X1 _3497_ (
    .A(_554_),
    .B(_722_),
    .C(_580_),
    .Y(_310_)
);

OAI21X1 _3498_ (
    .A(_766_),
    .B(_768_),
    .C(_312_),
    .Y(_311_)
);

OAI21X1 _3499_ (
    .A(_1118_),
    .B(_1024_),
    .C(_1120_),
    .Y(_312_)
);

NOR2X1 _3500_ (
    .A(_314_),
    .B(_317_),
    .Y(_313_)
);

OAI21X1 _3501_ (
    .A(_554_),
    .B(_315_),
    .C(_316_),
    .Y(_314_)
);

OAI21X1 _3502_ (
    .A(_1123_),
    .B(_1008_),
    .C(_1035_),
    .Y(_315_)
);

NAND2X1 _3503_ (
    .A(_387_),
    .B(_565_),
    .Y(_316_)
);

OAI21X1 _3504_ (
    .A(_554_),
    .B(_581_),
    .C(_381_),
    .Y(_317_)
);

NAND3X1 _3505_ (
    .A(_484_),
    .B(_396_),
    .C(_560_),
    .Y(_318_)
);

OAI21X1 _3506_ (
    .A(_322_),
    .B(_1333_),
    .C(_319_),
    .Y(\u_cpu.AI [0])
);

AOI21X1 _3507_ (
    .A(_607_),
    .B(_334_),
    .C(_320_),
    .Y(_319_)
);

OAI21X1 _3508_ (
    .A(_1207_),
    .B(_356_),
    .C(_321_),
    .Y(_320_)
);

NAND2X1 _3509_ (
    .A(\u_cpu.ADD [0]),
    .B(_359_),
    .Y(_321_)
);

INVX1 _3510_ (
    .A(\u_cpu.ABH [0]),
    .Y(_322_)
);

OAI21X1 _3511_ (
    .A(_360_),
    .B(_326_),
    .C(_323_),
    .Y(\u_cpu.AI [1])
);

AOI21X1 _3512_ (
    .A(_359_),
    .B(\u_cpu.ADD [1]),
    .C(_324_),
    .Y(_323_)
);

OAI22X1 _3513_ (
    .A(_325_),
    .B(_1333_),
    .C(_1192_),
    .D(_356_),
    .Y(_324_)
);

INVX1 _3514_ (
    .A(\u_cpu.ABH [1]),
    .Y(_325_)
);

INVX1 _3515_ (
    .A(_327_),
    .Y(_326_)
);

NAND2X1 _3516_ (
    .A(_329_),
    .B(_328_),
    .Y(_327_)
);

AOI22X1 _3517_ (
    .A(_922_),
    .B(\u_cpu.AXYS[3] [1]),
    .C(\u_cpu.AXYS[0] [1]),
    .D(_978_),
    .Y(_328_)
);

AOI22X1 _3518_ (
    .A(\u_cpu.AXYS[1] [1]),
    .B(_1050_),
    .C(_790_),
    .D(\u_cpu.AXYS[2] [1]),
    .Y(_329_)
);

OAI21X1 _3519_ (
    .A(_1138_),
    .B(_356_),
    .C(_330_),
    .Y(\u_cpu.AI [5])
);

AOI21X1 _3520_ (
    .A(_651_),
    .B(_334_),
    .C(_331_),
    .Y(_330_)
);

OAI21X1 _3521_ (
    .A(_333_),
    .B(_1333_),
    .C(_332_),
    .Y(_331_)
);

NAND2X1 _3522_ (
    .A(\u_cpu.ADD [5]),
    .B(_359_),
    .Y(_332_)
);

INVX1 _3523_ (
    .A(\u_cpu.ABH [5]),
    .Y(_333_)
);

INVX1 _3524_ (
    .A(_360_),
    .Y(_334_)
);

OAI21X1 _3525_ (
    .A(_1210_),
    .B(_864_),
    .C(_335_),
    .Y(_2354_[8])
);

AOI21X1 _3526_ (
    .A(\u_cpu.DIMUX [0]),
    .B(_339_),
    .C(_336_),
    .Y(_335_)
);

NAND3X1 _3527_ (
    .A(_872_),
    .B(_338_),
    .C(_337_),
    .Y(_336_)
);

AOI21X1 _3528_ (
    .A(\u_cpu.ADD [0]),
    .B(_908_),
    .C(_893_),
    .Y(_337_)
);

OAI21X1 _3529_ (
    .A(_1286_),
    .B(_875_),
    .C(\u_cpu.ABH [0]),
    .Y(_338_)
);

INVX1 _3530_ (
    .A(_886_),
    .Y(_339_)
);

OAI21X1 _3531_ (
    .A(_360_),
    .B(_639_),
    .C(_340_),
    .Y(\u_cpu.AI [6])
);

AOI21X1 _3532_ (
    .A(_359_),
    .B(\u_cpu.ADD [6]),
    .C(_341_),
    .Y(_340_)
);

OAI22X1 _3533_ (
    .A(_342_),
    .B(_1333_),
    .C(_1108_),
    .D(_356_),
    .Y(_341_)
);

INVX1 _3534_ (
    .A(\u_cpu.ABH [6]),
    .Y(_342_)
);

OAI21X1 _3535_ (
    .A(_360_),
    .B(_346_),
    .C(_343_),
    .Y(\u_cpu.AI [2])
);

AOI21X1 _3536_ (
    .A(_359_),
    .B(\u_cpu.ADD [2]),
    .C(_344_),
    .Y(_343_)
);

OAI22X1 _3537_ (
    .A(_345_),
    .B(_1333_),
    .C(_1179_),
    .D(_356_),
    .Y(_344_)
);

INVX1 _3538_ (
    .A(\u_cpu.ABH [2]),
    .Y(_345_)
);

INVX1 _3539_ (
    .A(_347_),
    .Y(_346_)
);

NAND2X1 _3540_ (
    .A(_349_),
    .B(_348_),
    .Y(_347_)
);

AOI22X1 _3541_ (
    .A(_922_),
    .B(\u_cpu.AXYS[3] [2]),
    .C(\u_cpu.AXYS[0] [2]),
    .D(_978_),
    .Y(_348_)
);

AOI22X1 _3542_ (
    .A(\u_cpu.AXYS[1] [2]),
    .B(_1050_),
    .C(_790_),
    .D(\u_cpu.AXYS[2] [2]),
    .Y(_349_)
);

OAI21X1 _3543_ (
    .A(_360_),
    .B(_353_),
    .C(_350_),
    .Y(\u_cpu.AI [3])
);

AOI21X1 _3544_ (
    .A(_359_),
    .B(\u_cpu.ADD [3]),
    .C(_351_),
    .Y(_350_)
);

OAI22X1 _3545_ (
    .A(_352_),
    .B(_1333_),
    .C(_1165_),
    .D(_356_),
    .Y(_351_)
);

INVX1 _3546_ (
    .A(\u_cpu.ABH [3]),
    .Y(_352_)
);

INVX1 _3547_ (
    .A(_597_),
    .Y(_353_)
);

OAI21X1 _3548_ (
    .A(_360_),
    .B(_657_),
    .C(_354_),
    .Y(\u_cpu.AI [4])
);

AOI21X1 _3549_ (
    .A(_359_),
    .B(\u_cpu.ADD [4]),
    .C(_355_),
    .Y(_354_)
);

OAI22X1 _3550_ (
    .A(_358_),
    .B(_1333_),
    .C(_1150_),
    .D(_356_),
    .Y(_355_)
);

INVX2 _3551_ (
    .A(_357_),
    .Y(_356_)
);

OAI21X1 _3552_ (
    .A(_1328__bF$buf2),
    .B(_536_),
    .C(_1250_),
    .Y(_357_)
);

INVX1 _3553_ (
    .A(\u_cpu.ABH [4]),
    .Y(_358_)
);

NAND3X1 _3554_ (
    .A(_895_),
    .B(_883_),
    .C(_899_),
    .Y(_359_)
);

NOR2X1 _3555_ (
    .A(_361_),
    .B(_365_),
    .Y(_360_)
);

NAND3X1 _3556_ (
    .A(_806_),
    .B(_364_),
    .C(_362_),
    .Y(_361_)
);

NOR2X1 _3557_ (
    .A(_363_),
    .B(_834_),
    .Y(_362_)
);

OAI21X1 _3558_ (
    .A(_1087_),
    .B(_1325__bF$buf4),
    .C(_847_),
    .Y(_363_)
);

AND2X2 _3559_ (
    .A(_833_),
    .B(_1063_),
    .Y(_364_)
);

NAND3X1 _3560_ (
    .A(_811_),
    .B(_367_),
    .C(_366_),
    .Y(_365_)
);

NOR2X1 _3561_ (
    .A(_1083_),
    .B(_451_),
    .Y(_366_)
);

NAND2X1 _3562_ (
    .A(_368_),
    .B(_746_),
    .Y(_367_)
);

INVX1 _3563_ (
    .A(\u_cpu.load_only ),
    .Y(_368_)
);

OAI21X1 _3564_ (
    .A(_388_),
    .B(_369_),
    .C(_413_),
    .Y(_1431_)
);

OR2X2 _3565_ (
    .A(_1428_),
    .B(_370_),
    .Y(_369_)
);

OAI21X1 _3566_ (
    .A(_1037__bF$buf3),
    .B(_383_),
    .C(_371_),
    .Y(_370_)
);

NOR2X1 _3567_ (
    .A(_372_),
    .B(_376_),
    .Y(_371_)
);

NAND2X1 _3568_ (
    .A(_373_),
    .B(_508_),
    .Y(_372_)
);

OAI21X1 _3569_ (
    .A(_441_),
    .B(_374_),
    .C(_375_),
    .Y(_373_)
);

OAI21X1 _3570_ (
    .A(_1328__bF$buf1),
    .B(_881_),
    .C(_1196__bF$buf6),
    .Y(_374_)
);

OAI21X1 _3571_ (
    .A(_1325__bF$buf3),
    .B(_870_),
    .C(RDY_bF$buf1),
    .Y(_375_)
);

NAND3X1 _3572_ (
    .A(_378_),
    .B(_377_),
    .C(_379_),
    .Y(_376_)
);

AOI21X1 _3573_ (
    .A(_1196__bF$buf5),
    .B(_910_),
    .C(_530_),
    .Y(_377_)
);

OAI21X1 _3574_ (
    .A(_538_),
    .B(_466_),
    .C(_464_),
    .Y(_378_)
);

INVX1 _3575_ (
    .A(_380_),
    .Y(_379_)
);

OAI22X1 _3576_ (
    .A(RDY_bF$buf0),
    .B(_847_),
    .C(_1037__bF$buf2),
    .D(_381_),
    .Y(_380_)
);

NOR2X1 _3577_ (
    .A(_989_),
    .B(_382_),
    .Y(_381_)
);

NOR2X1 _3578_ (
    .A(_767_),
    .B(_687_),
    .Y(_382_)
);

AND2X2 _3579_ (
    .A(_386_),
    .B(_384_),
    .Y(_383_)
);

OAI21X1 _3580_ (
    .A(_1024_),
    .B(_1019_),
    .C(_385_),
    .Y(_384_)
);

NOR2X1 _3581_ (
    .A(_1123_),
    .B(_584_),
    .Y(_385_)
);

OAI21X1 _3582_ (
    .A(_991_),
    .B(_1032_),
    .C(_387_),
    .Y(_386_)
);

INVX1 _3583_ (
    .A(_582_),
    .Y(_387_)
);

NAND2X1 _3584_ (
    .A(_389_),
    .B(_397_),
    .Y(_388_)
);

NOR2X1 _3585_ (
    .A(_430_),
    .B(_390_),
    .Y(_389_)
);

OAI21X1 _3586_ (
    .A(_1037__bF$buf1),
    .B(_396_),
    .C(_391_),
    .Y(_390_)
);

AND2X2 _3587_ (
    .A(_507_),
    .B(_392_),
    .Y(_391_)
);

AOI21X1 _3588_ (
    .A(_429_),
    .B(_393_),
    .C(_394_),
    .Y(_392_)
);

NAND3X1 _3589_ (
    .A(_1196__bF$buf4),
    .B(_1315__bF$buf2),
    .C(_1235_),
    .Y(_393_)
);

OAI21X1 _3590_ (
    .A(RDY_bF$buf7),
    .B(_843_),
    .C(_395_),
    .Y(_394_)
);

NAND2X1 _3591_ (
    .A(RDY_bF$buf6),
    .B(_451_),
    .Y(_395_)
);

OAI21X1 _3592_ (
    .A(_583_),
    .B(_486_),
    .C(_1123_),
    .Y(_396_)
);

AOI21X1 _3593_ (
    .A(_400_),
    .B(_399_),
    .C(_398_),
    .Y(_397_)
);

NAND3X1 _3594_ (
    .A(_562_),
    .B(_415_),
    .C(_557_),
    .Y(_398_)
);

OAI21X1 _3595_ (
    .A(\u_cpu.state [4]),
    .B(_906_),
    .C(_1196__bF$buf3),
    .Y(_399_)
);

OAI21X1 _3596_ (
    .A(_1250_),
    .B(_401_),
    .C(_411_),
    .Y(_400_)
);

NAND2X1 _3597_ (
    .A(_402_),
    .B(_403_),
    .Y(_401_)
);

NAND2X1 _3598_ (
    .A(_410_),
    .B(_404_),
    .Y(_402_)
);

OR2X2 _3599_ (
    .A(_404_),
    .B(_410_),
    .Y(_403_)
);

OAI21X1 _3600_ (
    .A(_735_),
    .B(_408_),
    .C(_405_),
    .Y(_404_)
);

NAND2X1 _3601_ (
    .A(_735_),
    .B(_406_),
    .Y(_405_)
);

OAI21X1 _3602_ (
    .A(\u_cpu.cond_code [1]),
    .B(_750_),
    .C(_407_),
    .Y(_406_)
);

NAND2X1 _3603_ (
    .A(\u_cpu.V ),
    .B(\u_cpu.cond_code [1]),
    .Y(_407_)
);

OAI21X1 _3604_ (
    .A(\u_cpu.C ),
    .B(\u_cpu.cond_code [1]),
    .C(_409_),
    .Y(_408_)
);

NAND2X1 _3605_ (
    .A(\u_cpu.cond_code [1]),
    .B(_699_),
    .Y(_409_)
);

INVX1 _3606_ (
    .A(\u_cpu.cond_code [0]),
    .Y(_410_)
);

INVX1 _3607_ (
    .A(_412_),
    .Y(_411_)
);

OAI21X1 _3608_ (
    .A(_1328__bF$buf0),
    .B(_914_),
    .C(RDY_bF$buf5),
    .Y(_412_)
);

NOR2X1 _3609_ (
    .A(_421_),
    .B(_414_),
    .Y(_413_)
);

NAND3X1 _3610_ (
    .A(_482_),
    .B(_415_),
    .C(_557_),
    .Y(_414_)
);

AOI21X1 _3611_ (
    .A(_416_),
    .B(_1129__bF$buf5),
    .C(_417_),
    .Y(_415_)
);

NOR2X1 _3612_ (
    .A(_1123_),
    .B(_756_),
    .Y(_416_)
);

OAI21X1 _3613_ (
    .A(_808_),
    .B(_419_),
    .C(_418_),
    .Y(_417_)
);

OAI21X1 _3614_ (
    .A(RDY_bF$buf4),
    .B(_828_),
    .C(_420_),
    .Y(_418_)
);

INVX1 _3615_ (
    .A(_420_),
    .Y(_419_)
);

OAI21X1 _3616_ (
    .A(_1328__bF$buf5),
    .B(_536_),
    .C(RDY_bF$buf3),
    .Y(_420_)
);

OR2X2 _3617_ (
    .A(_430_),
    .B(_422_),
    .Y(_421_)
);

NAND3X1 _3618_ (
    .A(_475_),
    .B(_423_),
    .C(_578_),
    .Y(_422_)
);

NOR2X1 _3619_ (
    .A(_443_),
    .B(_424_),
    .Y(_423_)
);

OR2X2 _3620_ (
    .A(_425_),
    .B(_454_),
    .Y(_424_)
);

NAND3X1 _3621_ (
    .A(_428_),
    .B(_525_),
    .C(_426_),
    .Y(_425_)
);

OAI21X1 _3622_ (
    .A(_1196__bF$buf2),
    .B(_898_),
    .C(_427_),
    .Y(_426_)
);

OAI21X1 _3623_ (
    .A(_1328__bF$buf4),
    .B(_1081_),
    .C(_1196__bF$buf1),
    .Y(_427_)
);

OAI21X1 _3624_ (
    .A(RDY_bF$buf2),
    .B(_1274_),
    .C(_429_),
    .Y(_428_)
);

OAI21X1 _3625_ (
    .A(_1305__bF$buf2),
    .B(_904_),
    .C(RDY_bF$buf1),
    .Y(_429_)
);

NAND2X1 _3626_ (
    .A(_431_),
    .B(_552_),
    .Y(_430_)
);

AOI22X1 _3627_ (
    .A(_1196__bF$buf0),
    .B(_457_),
    .C(_432_),
    .D(_1129__bF$buf4),
    .Y(_431_)
);

NOR2X1 _3628_ (
    .A(_554_),
    .B(_581_),
    .Y(_432_)
);

INVX1 _3629_ (
    .A(_433_),
    .Y(_1428_)
);

AND2X2 _3630_ (
    .A(_480_),
    .B(_434_),
    .Y(_433_)
);

NOR2X1 _3631_ (
    .A(_435_),
    .B(_452_),
    .Y(_434_)
);

NAND3X1 _3632_ (
    .A(_436_),
    .B(_438_),
    .C(_450_),
    .Y(_435_)
);

AOI22X1 _3633_ (
    .A(_1196__bF$buf8),
    .B(_826_),
    .C(_437_),
    .D(_1129__bF$buf3),
    .Y(_436_)
);

NOR2X1 _3634_ (
    .A(_1001_),
    .B(_554_),
    .Y(_437_)
);

NOR2X1 _3635_ (
    .A(_443_),
    .B(_439_),
    .Y(_438_)
);

OAI21X1 _3636_ (
    .A(_442_),
    .B(_440_),
    .C(_544_),
    .Y(_439_)
);

NOR2X1 _3637_ (
    .A(_1196__bF$buf7),
    .B(_441_),
    .Y(_440_)
);

INVX1 _3638_ (
    .A(_1232_),
    .Y(_441_)
);

NOR2X1 _3639_ (
    .A(RDY_bF$buf0),
    .B(_853_),
    .Y(_442_)
);

NAND3X1 _3640_ (
    .A(_444_),
    .B(_523_),
    .C(_447_),
    .Y(_443_)
);

NAND2X1 _3641_ (
    .A(_445_),
    .B(_446_),
    .Y(_444_)
);

OAI21X1 _3642_ (
    .A(_1328__bF$buf3),
    .B(_1081_),
    .C(RDY_bF$buf7),
    .Y(_445_)
);

OAI21X1 _3643_ (
    .A(_1328__bF$buf2),
    .B(_904_),
    .C(_1196__bF$buf6),
    .Y(_446_)
);

OAI21X1 _3644_ (
    .A(_1196__bF$buf5),
    .B(_449_),
    .C(_448_),
    .Y(_447_)
);

OAI21X1 _3645_ (
    .A(_1305__bF$buf1),
    .B(_904_),
    .C(_1196__bF$buf4),
    .Y(_448_)
);

NOR2X1 _3646_ (
    .A(_1305__bF$buf0),
    .B(_1081_),
    .Y(_449_)
);

AOI22X1 _3647_ (
    .A(_1196__bF$buf3),
    .B(_451_),
    .C(_765_),
    .D(_1129__bF$buf2),
    .Y(_450_)
);

NOR2X1 _3648_ (
    .A(_1328__bF$buf1),
    .B(_888_),
    .Y(_451_)
);

NAND3X1 _3649_ (
    .A(_465_),
    .B(_453_),
    .C(_468_),
    .Y(_452_)
);

NOR2X1 _3650_ (
    .A(_454_),
    .B(_461_),
    .Y(_453_)
);

NAND3X1 _3651_ (
    .A(_459_),
    .B(_520_),
    .C(_455_),
    .Y(_454_)
);

OAI21X1 _3652_ (
    .A(_1196__bF$buf2),
    .B(_457_),
    .C(_456_),
    .Y(_455_)
);

OAI21X1 _3653_ (
    .A(_1328__bF$buf0),
    .B(_903_),
    .C(_1196__bF$buf1),
    .Y(_456_)
);

INVX1 _3654_ (
    .A(_458_),
    .Y(_457_)
);

NAND2X1 _3655_ (
    .A(_1329_),
    .B(_1075_),
    .Y(_458_)
);

OAI21X1 _3656_ (
    .A(_1196__bF$buf0),
    .B(_1274_),
    .C(_460_),
    .Y(_459_)
);

OAI21X1 _3657_ (
    .A(_1305__bF$buf3),
    .B(_903_),
    .C(_1196__bF$buf8),
    .Y(_460_)
);

NAND3X1 _3658_ (
    .A(_525_),
    .B(_462_),
    .C(_534_),
    .Y(_461_)
);

OAI21X1 _3659_ (
    .A(RDY_bF$buf6),
    .B(_464_),
    .C(_463_),
    .Y(_462_)
);

OAI21X1 _3660_ (
    .A(_1305__bF$buf2),
    .B(_1076_),
    .C(RDY_bF$buf5),
    .Y(_463_)
);

INVX1 _3661_ (
    .A(_892_),
    .Y(_464_)
);

AOI22X1 _3662_ (
    .A(_1196__bF$buf7),
    .B(_467_),
    .C(_569_),
    .D(_466_),
    .Y(_465_)
);

NOR2X1 _3663_ (
    .A(_1196__bF$buf6),
    .B(_667_),
    .Y(_466_)
);

NOR2X1 _3664_ (
    .A(_1328__bF$buf5),
    .B(_536_),
    .Y(_467_)
);

NOR2X1 _3665_ (
    .A(_469_),
    .B(_474_),
    .Y(_468_)
);

NAND3X1 _3666_ (
    .A(_470_),
    .B(_472_),
    .C(_542_),
    .Y(_469_)
);

AOI22X1 _3667_ (
    .A(_1196__bF$buf5),
    .B(_1270_),
    .C(_1286_),
    .D(_471_),
    .Y(_470_)
);

NOR2X1 _3668_ (
    .A(_1196__bF$buf4),
    .B(_1246_),
    .Y(_471_)
);

OAI21X1 _3669_ (
    .A(RDY_bF$buf4),
    .B(_898_),
    .C(_473_),
    .Y(_472_)
);

OAI21X1 _3670_ (
    .A(_1328__bF$buf4),
    .B(_906_),
    .C(RDY_bF$buf3),
    .Y(_473_)
);

INVX1 _3671_ (
    .A(_475_),
    .Y(_474_)
);

NOR2X1 _3672_ (
    .A(_476_),
    .B(_478_),
    .Y(_475_)
);

OAI21X1 _3673_ (
    .A(_1196__bF$buf3),
    .B(_808_),
    .C(_477_),
    .Y(_476_)
);

NAND2X1 _3674_ (
    .A(_1196__bF$buf2),
    .B(_882_),
    .Y(_477_)
);

OAI21X1 _3675_ (
    .A(_1123_),
    .B(_513_),
    .C(_479_),
    .Y(_478_)
);

NAND3X1 _3676_ (
    .A(_1196__bF$buf1),
    .B(_1329_),
    .C(_1072_),
    .Y(_479_)
);

NOR2X1 _3677_ (
    .A(_495_),
    .B(_481_),
    .Y(_480_)
);

NAND2X1 _3678_ (
    .A(_537_),
    .B(_482_),
    .Y(_481_)
);

AOI21X1 _3679_ (
    .A(_491_),
    .B(RDY_bF$buf2),
    .C(_483_),
    .Y(_482_)
);

OAI21X1 _3680_ (
    .A(_1037__bF$buf0),
    .B(_484_),
    .C(_487_),
    .Y(_483_)
);

AOI22X1 _3681_ (
    .A(_991_),
    .B(_485_),
    .C(_486_),
    .D(_1001_),
    .Y(_484_)
);

AND2X2 _3682_ (
    .A(_757_),
    .B(_1025_),
    .Y(_485_)
);

INVX1 _3683_ (
    .A(_753_),
    .Y(_486_)
);

AOI21X1 _3684_ (
    .A(_1196__bF$buf0),
    .B(_746_),
    .C(_488_),
    .Y(_487_)
);

NAND2X1 _3685_ (
    .A(_489_),
    .B(_518_),
    .Y(_488_)
);

OAI21X1 _3686_ (
    .A(_1196__bF$buf8),
    .B(_1082_),
    .C(_490_),
    .Y(_489_)
);

OAI21X1 _3687_ (
    .A(_1328__bF$buf3),
    .B(_1331_),
    .C(_1196__bF$buf7),
    .Y(_490_)
);

OAI21X1 _3688_ (
    .A(_494_),
    .B(_492_),
    .C(_574_),
    .Y(_491_)
);

AOI22X1 _3689_ (
    .A(_891_),
    .B(_493_),
    .C(_569_),
    .D(_667_),
    .Y(_492_)
);

NOR2X1 _3690_ (
    .A(\u_cpu.CO ),
    .B(\u_cpu.store ),
    .Y(_493_)
);

NOR2X1 _3691_ (
    .A(_667_),
    .B(_540_),
    .Y(_494_)
);

OAI21X1 _3692_ (
    .A(_554_),
    .B(_564_),
    .C(_496_),
    .Y(_495_)
);

NAND2X1 _3693_ (
    .A(_1196__bF$buf6),
    .B(_497_),
    .Y(_496_)
);

NOR2X1 _3694_ (
    .A(_1328__bF$buf2),
    .B(_914_),
    .Y(_497_)
);

OAI21X1 _3695_ (
    .A(_1016_),
    .B(_502_),
    .C(_498_),
    .Y(\u_cpu.alu_op [0])
);

OAI21X1 _3696_ (
    .A(_499_),
    .B(_502_),
    .C(_498_),
    .Y(\u_cpu.alu_op [1])
);

NAND3X1 _3697_ (
    .A(_1345__bF$buf3),
    .B(_573_),
    .C(_502_),
    .Y(_498_)
);

INVX1 _3698_ (
    .A(\u_cpu.op [1]),
    .Y(_499_)
);

OAI21X1 _3699_ (
    .A(_1009_),
    .B(_502_),
    .C(_500_),
    .Y(\u_cpu.alu_op [2])
);

NOR2X1 _3700_ (
    .A(_501_),
    .B(_634_),
    .Y(_500_)
);

OAI21X1 _3701_ (
    .A(_1029_),
    .B(_1333_),
    .C(_632_),
    .Y(_501_)
);

INVX2 _3702_ (
    .A(_503_),
    .Y(_502_)
);

OAI21X1 _3703_ (
    .A(\u_cpu.state [5]),
    .B(_1239_),
    .C(_876_),
    .Y(_503_)
);

OR2X2 _3704_ (
    .A(_556_),
    .B(_504_),
    .Y(_1430_)
);

NAND2X1 _3705_ (
    .A(_552_),
    .B(_505_),
    .Y(_504_)
);

NOR2X1 _3706_ (
    .A(_515_),
    .B(_506_),
    .Y(_505_)
);

NAND2X1 _3707_ (
    .A(_507_),
    .B(_508_),
    .Y(_506_)
);

AOI22X1 _3708_ (
    .A(_1196__bF$buf5),
    .B(_869_),
    .C(_755_),
    .D(_1129__bF$buf1),
    .Y(_507_)
);

AND2X2 _3709_ (
    .A(_511_),
    .B(_509_),
    .Y(_508_)
);

OAI21X1 _3710_ (
    .A(_1196__bF$buf4),
    .B(_882_),
    .C(_510_),
    .Y(_509_)
);

OAI21X1 _3711_ (
    .A(_1325__bF$buf2),
    .B(_881_),
    .C(_1196__bF$buf3),
    .Y(_510_)
);

AOI22X1 _3712_ (
    .A(_1196__bF$buf2),
    .B(_551_),
    .C(_512_),
    .D(_1123_),
    .Y(_511_)
);

INVX1 _3713_ (
    .A(_513_),
    .Y(_512_)
);

NAND2X1 _3714_ (
    .A(_1129__bF$buf0),
    .B(_514_),
    .Y(_513_)
);

NOR2X1 _3715_ (
    .A(_1121_),
    .B(_1005_),
    .Y(_514_)
);

NAND3X1 _3716_ (
    .A(_544_),
    .B(_516_),
    .C(_527_),
    .Y(_515_)
);

NOR2X1 _3717_ (
    .A(_522_),
    .B(_517_),
    .Y(_516_)
);

NAND2X1 _3718_ (
    .A(_520_),
    .B(_518_),
    .Y(_517_)
);

OAI21X1 _3719_ (
    .A(_1196__bF$buf1),
    .B(_1047_),
    .C(_519_),
    .Y(_518_)
);

OAI21X1 _3720_ (
    .A(_1325__bF$buf1),
    .B(_1331_),
    .C(_1196__bF$buf0),
    .Y(_519_)
);

OAI21X1 _3721_ (
    .A(_1196__bF$buf8),
    .B(_555_),
    .C(_521_),
    .Y(_520_)
);

OAI21X1 _3722_ (
    .A(_1325__bF$buf0),
    .B(_903_),
    .C(_1196__bF$buf7),
    .Y(_521_)
);

NAND2X1 _3723_ (
    .A(_523_),
    .B(_525_),
    .Y(_522_)
);

OAI21X1 _3724_ (
    .A(_1196__bF$buf6),
    .B(_585_),
    .C(_524_),
    .Y(_523_)
);

OAI21X1 _3725_ (
    .A(_1325__bF$buf4),
    .B(_904_),
    .C(_1196__bF$buf5),
    .Y(_524_)
);

OAI21X1 _3726_ (
    .A(_1196__bF$buf4),
    .B(_1083_),
    .C(_526_),
    .Y(_525_)
);

OAI21X1 _3727_ (
    .A(_1325__bF$buf3),
    .B(_870_),
    .C(_1196__bF$buf3),
    .Y(_526_)
);

NOR2X1 _3728_ (
    .A(_541_),
    .B(_528_),
    .Y(_527_)
);

NAND3X1 _3729_ (
    .A(_537_),
    .B(_534_),
    .C(_529_),
    .Y(_528_)
);

NOR2X1 _3730_ (
    .A(_532_),
    .B(_530_),
    .Y(_529_)
);

OAI21X1 _3731_ (
    .A(_1196__bF$buf2),
    .B(_1063_),
    .C(_531_),
    .Y(_530_)
);

NAND2X1 _3732_ (
    .A(_1196__bF$buf1),
    .B(_540_),
    .Y(_531_)
);

OAI21X1 _3733_ (
    .A(RDY_bF$buf1),
    .B(_1048_),
    .C(_533_),
    .Y(_532_)
);

NAND2X1 _3734_ (
    .A(RDY_bF$buf0),
    .B(_638_),
    .Y(_533_)
);

OAI21X1 _3735_ (
    .A(_1196__bF$buf0),
    .B(_869_),
    .C(_535_),
    .Y(_534_)
);

OAI21X1 _3736_ (
    .A(_1325__bF$buf2),
    .B(_536_),
    .C(_1196__bF$buf8),
    .Y(_535_)
);

INVX1 _3737_ (
    .A(_1064_),
    .Y(_536_)
);

AOI22X1 _3738_ (
    .A(_1196__bF$buf7),
    .B(_913_),
    .C(_540_),
    .D(_538_),
    .Y(_537_)
);

INVX1 _3739_ (
    .A(_539_),
    .Y(_538_)
);

OAI21X1 _3740_ (
    .A(\u_cpu.CO ),
    .B(\u_cpu.store ),
    .C(RDY_bF$buf7),
    .Y(_539_)
);

NOR2X1 _3741_ (
    .A(_1325__bF$buf1),
    .B(_911_),
    .Y(_540_)
);

INVX1 _3742_ (
    .A(_542_),
    .Y(_541_)
);

OAI21X1 _3743_ (
    .A(_1196__bF$buf6),
    .B(_805_),
    .C(_543_),
    .Y(_542_)
);

OAI21X1 _3744_ (
    .A(_1325__bF$buf0),
    .B(_1252_),
    .C(_1196__bF$buf5),
    .Y(_543_)
);

INVX1 _3745_ (
    .A(_545_),
    .Y(_544_)
);

NAND2X1 _3746_ (
    .A(_549_),
    .B(_546_),
    .Y(_545_)
);

NAND2X1 _3747_ (
    .A(_548_),
    .B(_547_),
    .Y(_546_)
);

OAI21X1 _3748_ (
    .A(_1325__bF$buf4),
    .B(_881_),
    .C(RDY_bF$buf6),
    .Y(_547_)
);

OAI21X1 _3749_ (
    .A(_1325__bF$buf3),
    .B(_888_),
    .C(_1196__bF$buf4),
    .Y(_548_)
);

OAI21X1 _3750_ (
    .A(_1196__bF$buf3),
    .B(_551_),
    .C(_550_),
    .Y(_549_)
);

OAI21X1 _3751_ (
    .A(_1321_),
    .B(_888_),
    .C(_1196__bF$buf2),
    .Y(_550_)
);

INVX1 _3752_ (
    .A(_1061_),
    .Y(_551_)
);

AOI22X1 _3753_ (
    .A(_1196__bF$buf1),
    .B(_555_),
    .C(_553_),
    .D(_1129__bF$buf5),
    .Y(_552_)
);

NOR2X1 _3754_ (
    .A(_554_),
    .B(_722_),
    .Y(_553_)
);

NAND2X1 _3755_ (
    .A(_1099_),
    .B(_757_),
    .Y(_554_)
);

INVX1 _3756_ (
    .A(_1070__bF$buf3),
    .Y(_555_)
);

NAND3X1 _3757_ (
    .A(_578_),
    .B(_562_),
    .C(_557_),
    .Y(_556_)
);

INVX1 _3758_ (
    .A(_558_),
    .Y(_557_)
);

OAI21X1 _3759_ (
    .A(_1037__bF$buf3),
    .B(_560_),
    .C(_559_),
    .Y(_558_)
);

NAND2X1 _3760_ (
    .A(_1196__bF$buf0),
    .B(_1083_),
    .Y(_559_)
);

NAND2X1 _3761_ (
    .A(_561_),
    .B(_996_),
    .Y(_560_)
);

NOR2X1 _3762_ (
    .A(_1126_),
    .B(_1111_),
    .Y(_561_)
);

AOI21X1 _3763_ (
    .A(_566_),
    .B(_577_),
    .C(_563_),
    .Y(_562_)
);

OAI22X1 _3764_ (
    .A(RDY_bF$buf5),
    .B(_804_),
    .C(_582_),
    .D(_564_),
    .Y(_563_)
);

NAND2X1 _3765_ (
    .A(_1129__bF$buf4),
    .B(_565_),
    .Y(_564_)
);

NOR2X1 _3766_ (
    .A(_1105_),
    .B(_766_),
    .Y(_565_)
);

INVX1 _3767_ (
    .A(_567_),
    .Y(_566_)
);

NAND2X1 _3768_ (
    .A(_574_),
    .B(_568_),
    .Y(_567_)
);

NOR2X1 _3769_ (
    .A(_1196__bF$buf8),
    .B(_569_),
    .Y(_568_)
);

INVX1 _3770_ (
    .A(_570_),
    .Y(_569_)
);

NOR2X1 _3771_ (
    .A(_571_),
    .B(_572_),
    .Y(_570_)
);

OAI21X1 _3772_ (
    .A(_1305__bF$buf1),
    .B(_911_),
    .C(_885_),
    .Y(_571_)
);

OAI21X1 _3773_ (
    .A(_1328__bF$buf1),
    .B(_870_),
    .C(_573_),
    .Y(_572_)
);

INVX1 _3774_ (
    .A(_853_),
    .Y(_573_)
);

NOR2X1 _3775_ (
    .A(_1324_),
    .B(_575_),
    .Y(_574_)
);

OAI21X1 _3776_ (
    .A(_1325__bF$buf2),
    .B(_888_),
    .C(_576_),
    .Y(_575_)
);

NOR2X1 _3777_ (
    .A(_828_),
    .B(_913_),
    .Y(_576_)
);

OAI21X1 _3778_ (
    .A(_1325__bF$buf1),
    .B(_904_),
    .C(_1241_),
    .Y(_577_)
);

AOI22X1 _3779_ (
    .A(_1196__bF$buf7),
    .B(_585_),
    .C(_579_),
    .D(_1129__bF$buf3),
    .Y(_578_)
);

INVX1 _3780_ (
    .A(_580_),
    .Y(_579_)
);

OR2X2 _3781_ (
    .A(_581_),
    .B(_582_),
    .Y(_580_)
);

NAND2X1 _3782_ (
    .A(_1036_),
    .B(_1104_),
    .Y(_581_)
);

NAND2X1 _3783_ (
    .A(_1099_),
    .B(_583_),
    .Y(_582_)
);

INVX1 _3784_ (
    .A(_584_),
    .Y(_583_)
);

NAND2X1 _3785_ (
    .A(_1121_),
    .B(_1118_),
    .Y(_584_)
);

NOR2X1 _3786_ (
    .A(_1325__bF$buf0),
    .B(_1081_),
    .Y(_585_)
);

OAI21X1 _3787_ (
    .A(_629_),
    .B(_657_),
    .C(_586_),
    .Y(_2353_[4])
);

NOR2X1 _3788_ (
    .A(_587_),
    .B(_589_),
    .Y(_586_)
);

OAI21X1 _3789_ (
    .A(_1154_),
    .B(_616_),
    .C(_588_),
    .Y(_587_)
);

NAND2X1 _3790_ (
    .A(\u_cpu.ADD [4]),
    .B(_842_),
    .Y(_588_)
);

OAI21X1 _3791_ (
    .A(_591_),
    .B(_1315__bF$buf1),
    .C(_590_),
    .Y(_589_)
);

AOI21X1 _3792_ (
    .A(_636_),
    .B(\u_cpu.PC [4]),
    .C(_628_),
    .Y(_590_)
);

NAND2X1 _3793_ (
    .A(_1343_),
    .B(_1342_),
    .Y(_591_)
);

INVX8 _3794_ (
    .A(_592_),
    .Y(_2354_[3])
);

AOI21X1 _3795_ (
    .A(_597_),
    .B(_871_),
    .C(_593_),
    .Y(_592_)
);

INVX1 _3796_ (
    .A(_594_),
    .Y(_593_)
);

AOI21X1 _3797_ (
    .A(_782_),
    .B(\u_cpu.PC [3]),
    .C(_595_),
    .Y(_594_)
);

OAI21X1 _3798_ (
    .A(_1164_),
    .B(_877_),
    .C(_596_),
    .Y(_595_)
);

AOI22X1 _3799_ (
    .A(\u_cpu.DIMUX [3]),
    .B(_867_),
    .C(_780_),
    .D(\u_cpu.ABL [3]),
    .Y(_596_)
);

OR2X2 _3800_ (
    .A(_598_),
    .B(_601_),
    .Y(_597_)
);

OAI21X1 _3801_ (
    .A(_600_),
    .B(_792_),
    .C(_599_),
    .Y(_598_)
);

NAND2X1 _3802_ (
    .A(\u_cpu.AXYS[2] [3]),
    .B(_790_),
    .Y(_599_)
);

INVX1 _3803_ (
    .A(\u_cpu.AXYS[0] [3]),
    .Y(_600_)
);

OAI21X1 _3804_ (
    .A(_603_),
    .B(_786_),
    .C(_602_),
    .Y(_601_)
);

NAND2X1 _3805_ (
    .A(\u_cpu.AXYS[3] [3]),
    .B(_922_),
    .Y(_602_)
);

INVX1 _3806_ (
    .A(\u_cpu.AXYS[1] [3]),
    .Y(_603_)
);

NAND3X1 _3807_ (
    .A(_605_),
    .B(_604_),
    .C(_606_),
    .Y(_2353_[0])
);

AOI22X1 _3808_ (
    .A(\u_cpu.PC [8]),
    .B(_873_),
    .C(_625_),
    .D(\u_cpu.ADD [0]),
    .Y(_604_)
);

AOI22X1 _3809_ (
    .A(\u_cpu.C ),
    .B(_613_),
    .C(_636_),
    .D(\u_cpu.PC [0]),
    .Y(_605_)
);

NAND2X1 _3810_ (
    .A(_630_),
    .B(_607_),
    .Y(_606_)
);

NAND2X1 _3811_ (
    .A(_608_),
    .B(_609_),
    .Y(_607_)
);

AOI22X1 _3812_ (
    .A(\u_cpu.AXYS[1] [0]),
    .B(_1050_),
    .C(_922_),
    .D(\u_cpu.AXYS[3] [0]),
    .Y(_608_)
);

AOI22X1 _3813_ (
    .A(_790_),
    .B(\u_cpu.AXYS[2] [0]),
    .C(\u_cpu.AXYS[0] [0]),
    .D(_978_),
    .Y(_609_)
);

OAI21X1 _3814_ (
    .A(_1141_),
    .B(_616_),
    .C(_610_),
    .Y(_2353_[5])
);

AOI21X1 _3815_ (
    .A(_651_),
    .B(_630_),
    .C(_611_),
    .Y(_610_)
);

OAI21X1 _3816_ (
    .A(_615_),
    .B(_614_),
    .C(_612_),
    .Y(_611_)
);

OAI21X1 _3817_ (
    .A(\u_cpu.ADD [5]),
    .B(_613_),
    .C(_631_),
    .Y(_612_)
);

OAI21X1 _3818_ (
    .A(_709_),
    .B(_843_),
    .C(_1315__bF$buf0),
    .Y(_613_)
);

INVX1 _3819_ (
    .A(_636_),
    .Y(_614_)
);

INVX1 _3820_ (
    .A(\u_cpu.PC [5]),
    .Y(_615_)
);

INVX1 _3821_ (
    .A(_873_),
    .Y(_616_)
);

INVX1 _3822_ (
    .A(_617_),
    .Y(_2354_[10])
);

AOI21X1 _3823_ (
    .A(\u_cpu.ADD [2]),
    .B(_908_),
    .C(_618_),
    .Y(_617_)
);

OAI21X1 _3824_ (
    .A(_1184_),
    .B(_864_),
    .C(_619_),
    .Y(_618_)
);

AND2X2 _3825_ (
    .A(_621_),
    .B(_620_),
    .Y(_619_)
);

OAI21X1 _3826_ (
    .A(_1286_),
    .B(_875_),
    .C(\u_cpu.ABH [2]),
    .Y(_620_)
);

OAI21X1 _3827_ (
    .A(_1319_),
    .B(_887_),
    .C(\u_cpu.DIMUX [2]),
    .Y(_621_)
);

OAI21X1 _3828_ (
    .A(_629_),
    .B(_639_),
    .C(_622_),
    .Y(_2353_[6])
);

INVX1 _3829_ (
    .A(_623_),
    .Y(_622_)
);

NAND3X1 _3830_ (
    .A(_627_),
    .B(_626_),
    .C(_624_),
    .Y(_623_)
);

AOI22X1 _3831_ (
    .A(\u_cpu.PC [14]),
    .B(_873_),
    .C(_625_),
    .D(\u_cpu.ADD [6]),
    .Y(_624_)
);

OAI21X1 _3832_ (
    .A(\u_cpu.php ),
    .B(_843_),
    .C(_827_),
    .Y(_625_)
);

OAI21X1 _3833_ (
    .A(_638_),
    .B(_857_),
    .C(\u_cpu.PC [6]),
    .Y(_626_)
);

OAI21X1 _3834_ (
    .A(_1274_),
    .B(_628_),
    .C(\u_cpu.V ),
    .Y(_627_)
);

NOR2X1 _3835_ (
    .A(_709_),
    .B(_843_),
    .Y(_628_)
);

INVX1 _3836_ (
    .A(_630_),
    .Y(_629_)
);

NOR2X1 _3837_ (
    .A(_631_),
    .B(_634_),
    .Y(_630_)
);

OAI21X1 _3838_ (
    .A(_1328__bF$buf0),
    .B(_1084_),
    .C(_632_),
    .Y(_631_)
);

INVX1 _3839_ (
    .A(_633_),
    .Y(_632_)
);

OAI21X1 _3840_ (
    .A(_1328__bF$buf5),
    .B(_1076_),
    .C(_1315__bF$buf3),
    .Y(_633_)
);

INVX1 _3841_ (
    .A(_635_),
    .Y(_634_)
);

NOR2X1 _3842_ (
    .A(_873_),
    .B(_636_),
    .Y(_635_)
);

OAI21X1 _3843_ (
    .A(_1305__bF$buf0),
    .B(_904_),
    .C(_637_),
    .Y(_636_)
);

INVX1 _3844_ (
    .A(_638_),
    .Y(_637_)
);

NOR2X1 _3845_ (
    .A(_1325__bF$buf4),
    .B(_903_),
    .Y(_638_)
);

INVX1 _3846_ (
    .A(_640_),
    .Y(_639_)
);

OR2X2 _3847_ (
    .A(_641_),
    .B(_644_),
    .Y(_640_)
);

OAI21X1 _3848_ (
    .A(_643_),
    .B(_792_),
    .C(_642_),
    .Y(_641_)
);

NAND2X1 _3849_ (
    .A(\u_cpu.AXYS[2] [6]),
    .B(_790_),
    .Y(_642_)
);

INVX1 _3850_ (
    .A(\u_cpu.AXYS[0] [6]),
    .Y(_643_)
);

OAI21X1 _3851_ (
    .A(_646_),
    .B(_786_),
    .C(_645_),
    .Y(_644_)
);

NAND2X1 _3852_ (
    .A(\u_cpu.AXYS[3] [6]),
    .B(_922_),
    .Y(_645_)
);

INVX1 _3853_ (
    .A(\u_cpu.AXYS[1] [6]),
    .Y(_646_)
);

NAND2X1 _3854_ (
    .A(_647_),
    .B(_650_),
    .Y(_2354_[5])
);

AOI21X1 _3855_ (
    .A(_782_),
    .B(\u_cpu.PC [5]),
    .C(_648_),
    .Y(_647_)
);

OAI21X1 _3856_ (
    .A(_1287_),
    .B(_877_),
    .C(_649_),
    .Y(_648_)
);

AOI22X1 _3857_ (
    .A(\u_cpu.DIMUX [5]),
    .B(_867_),
    .C(_780_),
    .D(\u_cpu.ABL [5]),
    .Y(_649_)
);

OAI21X1 _3858_ (
    .A(_1073_),
    .B(_873_),
    .C(_651_),
    .Y(_650_)
);

NAND2X1 _3859_ (
    .A(_653_),
    .B(_652_),
    .Y(_651_)
);

AOI22X1 _3860_ (
    .A(_922_),
    .B(\u_cpu.AXYS[3] [5]),
    .C(\u_cpu.AXYS[0] [5]),
    .D(_978_),
    .Y(_652_)
);

AOI22X1 _3861_ (
    .A(\u_cpu.AXYS[1] [5]),
    .B(_1050_),
    .C(_790_),
    .D(\u_cpu.AXYS[2] [5]),
    .Y(_653_)
);

OAI21X1 _3862_ (
    .A(_872_),
    .B(_657_),
    .C(_654_),
    .Y(_2354_[4])
);

AOI21X1 _3863_ (
    .A(_782_),
    .B(\u_cpu.PC [4]),
    .C(_655_),
    .Y(_654_)
);

OAI21X1 _3864_ (
    .A(_1275_),
    .B(_877_),
    .C(_656_),
    .Y(_655_)
);

AOI22X1 _3865_ (
    .A(\u_cpu.DIMUX [4]),
    .B(_867_),
    .C(_780_),
    .D(\u_cpu.ABL [4]),
    .Y(_656_)
);

AND2X2 _3866_ (
    .A(_659_),
    .B(_658_),
    .Y(_657_)
);

AOI22X1 _3867_ (
    .A(\u_cpu.AXYS[1] [4]),
    .B(_1050_),
    .C(_790_),
    .D(\u_cpu.AXYS[2] [4]),
    .Y(_658_)
);

AOI22X1 _3868_ (
    .A(_922_),
    .B(\u_cpu.AXYS[3] [4]),
    .C(\u_cpu.AXYS[0] [4]),
    .D(_978_),
    .Y(_659_)
);

MUX2X1 _3869_ (
    .A(_660_),
    .B(_675_),
    .S(_665_),
    .Y(_1438_)
);

OAI21X1 _3870_ (
    .A(_898_),
    .B(_662_),
    .C(_661_),
    .Y(_660_)
);

NAND2X1 _3871_ (
    .A(_1207_),
    .B(_898_),
    .Y(_661_)
);

OAI21X1 _3872_ (
    .A(_670_),
    .B(_664_),
    .C(_663_),
    .Y(_662_)
);

NAND2X1 _3873_ (
    .A(\u_cpu.CO ),
    .B(_670_),
    .Y(_663_)
);

MUX2X1 _3874_ (
    .A(\u_cpu.ADD [0]),
    .B(_703_),
    .S(\u_cpu.plp ),
    .Y(_664_)
);

AOI22X1 _3875_ (
    .A(_674_),
    .B(_668_),
    .C(_666_),
    .D(_897_),
    .Y(_665_)
);

AOI22X1 _3876_ (
    .A(_667_),
    .B(_1344_),
    .C(_828_),
    .D(\u_cpu.shift ),
    .Y(_666_)
);

INVX2 _3877_ (
    .A(\u_cpu.write_back ),
    .Y(_667_)
);

NOR2X1 _3878_ (
    .A(_669_),
    .B(_670_),
    .Y(_668_)
);

NAND2X1 _3879_ (
    .A(_703_),
    .B(_690_),
    .Y(_669_)
);

NAND3X1 _3880_ (
    .A(_673_),
    .B(_672_),
    .C(_671_),
    .Y(_670_)
);

INVX1 _3881_ (
    .A(\u_cpu.shift ),
    .Y(_671_)
);

INVX1 _3882_ (
    .A(\u_cpu.compare ),
    .Y(_672_)
);

INVX1 _3883_ (
    .A(\u_cpu.adc_sbc ),
    .Y(_673_)
);

INVX1 _3884_ (
    .A(_697_),
    .Y(_674_)
);

INVX1 _3885_ (
    .A(\u_cpu.C ),
    .Y(_675_)
);

OAI21X1 _3886_ (
    .A(_943_),
    .B(_760_),
    .C(_676_),
    .Y(_1439_)
);

NAND2X1 _3887_ (
    .A(\u_cpu.AXYS[2] [3]),
    .B(_760_),
    .Y(_676_)
);

OAI21X1 _3888_ (
    .A(_689_),
    .B(_1129__bF$buf2),
    .C(_677_),
    .Y(_1440_)
);

OAI21X1 _3889_ (
    .A(_683_),
    .B(_678_),
    .C(_1129__bF$buf1),
    .Y(_677_)
);

OAI21X1 _3890_ (
    .A(_988_),
    .B(_679_),
    .C(_680_),
    .Y(_678_)
);

OAI21X1 _3891_ (
    .A(_1008_),
    .B(_1013_),
    .C(_1001_),
    .Y(_679_)
);

OAI21X1 _3892_ (
    .A(_682_),
    .B(_989_),
    .C(_681_),
    .Y(_680_)
);

NOR2X1 _3893_ (
    .A(_1001_),
    .B(_771_),
    .Y(_681_)
);

NOR2X1 _3894_ (
    .A(_1100_),
    .B(_1005_),
    .Y(_682_)
);

NAND3X1 _3895_ (
    .A(_997_),
    .B(_688_),
    .C(_684_),
    .Y(_683_)
);

INVX1 _3896_ (
    .A(_685_),
    .Y(_684_)
);

OAI21X1 _3897_ (
    .A(_687_),
    .B(_733_),
    .C(_686_),
    .Y(_685_)
);

NAND3X1 _3898_ (
    .A(_1025_),
    .B(_1036_),
    .C(_995_),
    .Y(_686_)
);

NAND2X1 _3899_ (
    .A(_1025_),
    .B(_1117_),
    .Y(_687_)
);

OAI21X1 _3900_ (
    .A(_1027_),
    .B(_1008_),
    .C(_1024_),
    .Y(_688_)
);

INVX1 _3901_ (
    .A(\u_cpu.load_reg ),
    .Y(_689_)
);

OAI22X1 _3902_ (
    .A(_690_),
    .B(_1129__bF$buf0),
    .C(_702_),
    .D(_1026_),
    .Y(_1441_)
);

INVX1 _3903_ (
    .A(\u_cpu.sec ),
    .Y(_690_)
);

MUX2X1 _3904_ (
    .A(_691_),
    .B(_699_),
    .S(_695_),
    .Y(_1442_)
);

MUX2X1 _3905_ (
    .A(\u_cpu.AZ ),
    .B(_692_),
    .S(_694_),
    .Y(_691_)
);

OAI21X1 _3906_ (
    .A(_1192_),
    .B(_897_),
    .C(_693_),
    .Y(_692_)
);

OAI21X1 _3907_ (
    .A(_1328__bF$buf4),
    .B(_1252_),
    .C(\u_cpu.ADD [1]),
    .Y(_693_)
);

OAI21X1 _3908_ (
    .A(_1328__bF$buf3),
    .B(_1084_),
    .C(_697_),
    .Y(_694_)
);

AOI22X1 _3909_ (
    .A(_827_),
    .B(_743_),
    .C(_749_),
    .D(_696_),
    .Y(_695_)
);

NOR2X1 _3910_ (
    .A(_698_),
    .B(_697_),
    .Y(_696_)
);

OAI21X1 _3911_ (
    .A(_1328__bF$buf2),
    .B(_1252_),
    .C(_723_),
    .Y(_697_)
);

OAI21X1 _3912_ (
    .A(_1328__bF$buf1),
    .B(_1084_),
    .C(_747_),
    .Y(_698_)
);

INVX1 _3913_ (
    .A(\u_cpu.Z ),
    .Y(_699_)
);

OAI22X1 _3914_ (
    .A(_701_),
    .B(_1129__bF$buf5),
    .C(_1126_),
    .D(_700_),
    .Y(_1443_)
);

NAND2X1 _3915_ (
    .A(_1018_),
    .B(_728_),
    .Y(_700_)
);

INVX1 _3916_ (
    .A(\u_cpu.rotate ),
    .Y(_701_)
);

OAI22X1 _3917_ (
    .A(_703_),
    .B(_1129__bF$buf4),
    .C(_702_),
    .D(_1116_),
    .Y(_1444_)
);

NAND3X1 _3918_ (
    .A(_1129__bF$buf3),
    .B(_1099_),
    .C(_1034_),
    .Y(_702_)
);

INVX1 _3919_ (
    .A(\u_cpu.clc ),
    .Y(_703_)
);

OAI21X1 _3920_ (
    .A(_707_),
    .B(_1129__bF$buf2),
    .C(_704_),
    .Y(_1445_)
);

OAI21X1 _3921_ (
    .A(_769_),
    .B(_705_),
    .C(_1129__bF$buf1),
    .Y(_704_)
);

OAI21X1 _3922_ (
    .A(_1000_),
    .B(_726_),
    .C(_706_),
    .Y(_705_)
);

AOI21X1 _3923_ (
    .A(_1019_),
    .B(_772_),
    .C(_987_),
    .Y(_706_)
);

INVX1 _3924_ (
    .A(\u_cpu.dst_reg [1]),
    .Y(_707_)
);

OAI21X1 _3925_ (
    .A(_709_),
    .B(_1129__bF$buf0),
    .C(_708_),
    .Y(_1446_)
);

NAND3X1 _3926_ (
    .A(_1129__bF$buf5),
    .B(_1105_),
    .C(_765_),
    .Y(_708_)
);

INVX1 _3927_ (
    .A(\u_cpu.php ),
    .Y(_709_)
);

OAI21X1 _3928_ (
    .A(_952_),
    .B(_760_),
    .C(_710_),
    .Y(_1447_)
);

NAND2X1 _3929_ (
    .A(\u_cpu.AXYS[2] [2]),
    .B(_760_),
    .Y(_710_)
);

OAI21X1 _3930_ (
    .A(_963_),
    .B(_760_),
    .C(_711_),
    .Y(_1448_)
);

NAND2X1 _3931_ (
    .A(\u_cpu.AXYS[2] [1]),
    .B(_760_),
    .Y(_711_)
);

OAI21X1 _3932_ (
    .A(_760_),
    .B(_713_),
    .C(_712_),
    .Y(_1449_)
);

NAND2X1 _3933_ (
    .A(\u_cpu.AXYS[2] [7]),
    .B(_760_),
    .Y(_712_)
);

OAI21X1 _3934_ (
    .A(\u_cpu.DIMUX [7]),
    .B(_1070__bF$buf2),
    .C(_714_),
    .Y(_713_)
);

OAI21X1 _3935_ (
    .A(_716_),
    .B(_715_),
    .C(_1070__bF$buf1),
    .Y(_714_)
);

AND2X2 _3936_ (
    .A(_720_),
    .B(_717_),
    .Y(_715_)
);

NOR2X1 _3937_ (
    .A(_717_),
    .B(_720_),
    .Y(_716_)
);

NAND2X1 _3938_ (
    .A(_719_),
    .B(_718_),
    .Y(_717_)
);

NAND2X1 _3939_ (
    .A(_781_),
    .B(_940_),
    .Y(_718_)
);

OAI21X1 _3940_ (
    .A(\u_cpu.CO ),
    .B(_970_),
    .C(\u_cpu.AN ),
    .Y(_719_)
);

OAI21X1 _3941_ (
    .A(_928_),
    .B(_937_),
    .C(_930_),
    .Y(_720_)
);

OAI22X1 _3942_ (
    .A(_723_),
    .B(_1129__bF$buf4),
    .C(_722_),
    .D(_721_),
    .Y(_1450_)
);

NAND2X1 _3943_ (
    .A(_1129__bF$buf3),
    .B(_998_),
    .Y(_721_)
);

INVX1 _3944_ (
    .A(_1032_),
    .Y(_722_)
);

INVX1 _3945_ (
    .A(\u_cpu.plp ),
    .Y(_723_)
);

OAI21X1 _3946_ (
    .A(_1086_),
    .B(_1129__bF$buf2),
    .C(_724_),
    .Y(_1451_)
);

OAI21X1 _3947_ (
    .A(_725_),
    .B(_729_),
    .C(_1129__bF$buf1),
    .Y(_724_)
);

NAND3X1 _3948_ (
    .A(_727_),
    .B(_726_),
    .C(_986_),
    .Y(_725_)
);

NAND2X1 _3949_ (
    .A(_1036_),
    .B(_985_),
    .Y(_726_)
);

NAND2X1 _3950_ (
    .A(_728_),
    .B(_993_),
    .Y(_727_)
);

NOR2X1 _3951_ (
    .A(_757_),
    .B(_1020_),
    .Y(_728_)
);

OAI21X1 _3952_ (
    .A(_768_),
    .B(_763_),
    .C(_730_),
    .Y(_729_)
);

AND2X2 _3953_ (
    .A(_731_),
    .B(_773_),
    .Y(_730_)
);

NAND2X1 _3954_ (
    .A(_1099_),
    .B(_732_),
    .Y(_731_)
);

OAI21X1 _3955_ (
    .A(_1005_),
    .B(_733_),
    .C(_990_),
    .Y(_732_)
);

INVX1 _3956_ (
    .A(_993_),
    .Y(_733_)
);

OAI21X1 _3957_ (
    .A(RDY_bF$buf4),
    .B(_735_),
    .C(_734_),
    .Y(_1452_)
);

NAND2X1 _3958_ (
    .A(RDY_bF$buf3),
    .B(_1111_),
    .Y(_734_)
);

INVX1 _3959_ (
    .A(\u_cpu.cond_code [2]),
    .Y(_735_)
);

MUX2X1 _3960_ (
    .A(_750_),
    .B(_736_),
    .S(_741_),
    .Y(_1453_)
);

OAI21X1 _3961_ (
    .A(\u_cpu.AN ),
    .B(_737_),
    .C(_738_),
    .Y(_736_)
);

NOR2X1 _3962_ (
    .A(_1044_),
    .B(_828_),
    .Y(_737_)
);

OAI21X1 _3963_ (
    .A(_1328__bF$buf0),
    .B(_1084_),
    .C(_739_),
    .Y(_738_)
);

OAI22X1 _3964_ (
    .A(_1344_),
    .B(\u_cpu.DIMUX [7]),
    .C(\u_cpu.AN ),
    .D(_740_),
    .Y(_739_)
);

NAND2X1 _3965_ (
    .A(\u_cpu.plp ),
    .B(_1344_),
    .Y(_740_)
);

OAI21X1 _3966_ (
    .A(_828_),
    .B(_742_),
    .C(_748_),
    .Y(_741_)
);

OAI21X1 _3967_ (
    .A(_747_),
    .B(_745_),
    .C(_743_),
    .Y(_742_)
);

INVX1 _3968_ (
    .A(_744_),
    .Y(_743_)
);

OAI21X1 _3969_ (
    .A(_1328__bF$buf5),
    .B(_1252_),
    .C(_1345__bF$buf2),
    .Y(_744_)
);

INVX1 _3970_ (
    .A(_746_),
    .Y(_745_)
);

NOR2X1 _3971_ (
    .A(_1305__bF$buf3),
    .B(_1331_),
    .Y(_746_)
);

INVX1 _3972_ (
    .A(\u_cpu.bit_ins ),
    .Y(_747_)
);

NAND2X1 _3973_ (
    .A(_1044_),
    .B(_749_),
    .Y(_748_)
);

AOI21X1 _3974_ (
    .A(_786_),
    .B(\u_cpu.load_reg ),
    .C(\u_cpu.compare ),
    .Y(_749_)
);

INVX1 _3975_ (
    .A(\u_cpu.N ),
    .Y(_750_)
);

OAI21X1 _3976_ (
    .A(_758_),
    .B(_1129__bF$buf0),
    .C(_751_),
    .Y(_1454_)
);

OAI21X1 _3977_ (
    .A(_755_),
    .B(_752_),
    .C(_1129__bF$buf5),
    .Y(_751_)
);

OAI21X1 _3978_ (
    .A(_754_),
    .B(_1003_),
    .C(_753_),
    .Y(_752_)
);

NAND2X1 _3979_ (
    .A(_1117_),
    .B(_1024_),
    .Y(_753_)
);

NAND2X1 _3980_ (
    .A(_1123_),
    .B(_995_),
    .Y(_754_)
);

NOR2X1 _3981_ (
    .A(_1001_),
    .B(_756_),
    .Y(_755_)
);

NAND2X1 _3982_ (
    .A(_757_),
    .B(_1024_),
    .Y(_756_)
);

NOR2X1 _3983_ (
    .A(_1121_),
    .B(_1118_),
    .Y(_757_)
);

INVX1 _3984_ (
    .A(\u_cpu.index_y ),
    .Y(_758_)
);

OAI21X1 _3985_ (
    .A(_975_),
    .B(_760_),
    .C(_759_),
    .Y(_1455_)
);

NAND2X1 _3986_ (
    .A(\u_cpu.AXYS[2] [0]),
    .B(_760_),
    .Y(_759_)
);

NAND2X1 _3987_ (
    .A(_1042_),
    .B(_790_),
    .Y(_760_)
);

OAI21X1 _3988_ (
    .A(_774_),
    .B(_1129__bF$buf4),
    .C(_761_),
    .Y(_1456_)
);

OAI21X1 _3989_ (
    .A(_769_),
    .B(_762_),
    .C(_1129__bF$buf3),
    .Y(_761_)
);

OAI21X1 _3990_ (
    .A(_988_),
    .B(_763_),
    .C(_764_),
    .Y(_762_)
);

NAND2X1 _3991_ (
    .A(_1123_),
    .B(_993_),
    .Y(_763_)
);

INVX1 _3992_ (
    .A(_765_),
    .Y(_764_)
);

NOR2X1 _3993_ (
    .A(_766_),
    .B(_768_),
    .Y(_765_)
);

NAND2X1 _3994_ (
    .A(_1126_),
    .B(_767_),
    .Y(_766_)
);

NOR2X1 _3995_ (
    .A(_1111_),
    .B(_1123_),
    .Y(_767_)
);

INVX1 _3996_ (
    .A(_998_),
    .Y(_768_)
);

OAI21X1 _3997_ (
    .A(_771_),
    .B(_770_),
    .C(_773_),
    .Y(_769_)
);

OAI21X1 _3998_ (
    .A(_1118_),
    .B(_1001_),
    .C(_1099_),
    .Y(_770_)
);

INVX1 _3999_ (
    .A(_772_),
    .Y(_771_)
);

NOR2X1 _4000_ (
    .A(_1126_),
    .B(_994_),
    .Y(_772_)
);

NAND3X1 _4001_ (
    .A(_1126_),
    .B(_1111_),
    .C(_996_),
    .Y(_773_)
);

INVX1 _4002_ (
    .A(\u_cpu.dst_reg [0]),
    .Y(_774_)
);

OAI21X1 _4003_ (
    .A(_1299_),
    .B(_800__bF$buf1),
    .C(_775_),
    .Y(_1457_)
);

NAND2X1 _4004_ (
    .A(_800__bF$buf0),
    .B(_2354__7_bF$buf0),
    .Y(_775_)
);

INVX4 _4005_ (
    .A(_776_),
    .Y(_2354_[7])
);

AND2X2 _4006_ (
    .A(_783_),
    .B(_777_),
    .Y(_776_)
);

AOI21X1 _4007_ (
    .A(_782_),
    .B(\u_cpu.PC [7]),
    .C(_778_),
    .Y(_777_)
);

OAI21X1 _4008_ (
    .A(_781_),
    .B(_877_),
    .C(_779_),
    .Y(_778_)
);

AOI22X1 _4009_ (
    .A(\u_cpu.DIMUX [7]),
    .B(_867_),
    .C(_780_),
    .D(\u_cpu.ABL [7]),
    .Y(_779_)
);

INVX2 _4010_ (
    .A(_874_),
    .Y(_780_)
);

INVX1 _4011_ (
    .A(\u_cpu.AN ),
    .Y(_781_)
);

INVX4 _4012_ (
    .A(_864_),
    .Y(_782_)
);

OAI21X1 _4013_ (
    .A(_784_),
    .B(_788_),
    .C(_871_),
    .Y(_783_)
);

OAI21X1 _4014_ (
    .A(_787_),
    .B(_786_),
    .C(_785_),
    .Y(_784_)
);

NAND2X1 _4015_ (
    .A(\u_cpu.AXYS[3] [7]),
    .B(_922_),
    .Y(_785_)
);

INVX1 _4016_ (
    .A(_1050_),
    .Y(_786_)
);

INVX1 _4017_ (
    .A(\u_cpu.AXYS[1] [7]),
    .Y(_787_)
);

OAI21X1 _4018_ (
    .A(_793_),
    .B(_792_),
    .C(_789_),
    .Y(_788_)
);

NAND2X1 _4019_ (
    .A(\u_cpu.AXYS[2] [7]),
    .B(_790_),
    .Y(_789_)
);

INVX2 _4020_ (
    .A(_791_),
    .Y(_790_)
);

NAND2X1 _4021_ (
    .A(_1051_),
    .B(_1057_),
    .Y(_791_)
);

NAND2X1 _4022_ (
    .A(_1051_),
    .B(_979_),
    .Y(_792_)
);

INVX1 _4023_ (
    .A(\u_cpu.AXYS[0] [7]),
    .Y(_793_)
);

OAI21X1 _4024_ (
    .A(_1026_),
    .B(_794_),
    .C(_795_),
    .Y(_1458_)
);

NAND2X1 _4025_ (
    .A(_1129__bF$buf2),
    .B(_985_),
    .Y(_794_)
);

OAI21X1 _4026_ (
    .A(_1196__bF$buf6),
    .B(_1345__bF$buf1),
    .C(\u_cpu.sed ),
    .Y(_795_)
);

OAI21X1 _4027_ (
    .A(\u_cpu.NMI_edge ),
    .B(_797_),
    .C(_796_),
    .Y(_1459_)
);

OAI21X1 _4028_ (
    .A(_1305__bF$buf2),
    .B(_903_),
    .C(\u_cpu.NMI_edge ),
    .Y(_796_)
);

NAND2X1 _4029_ (
    .A(NMI),
    .B(_798_),
    .Y(_797_)
);

INVX1 _4030_ (
    .A(\u_cpu.NMI_1 ),
    .Y(_798_)
);

AOI21X1 _4031_ (
    .A(_859_),
    .B(_800__bF$buf4),
    .C(_799_),
    .Y(_1460_)
);

NOR2X1 _4032_ (
    .A(\u_cpu.ABH [7]),
    .B(_800__bF$buf3),
    .Y(_799_)
);

AOI21X1 _4033_ (
    .A(_801_),
    .B(_858_),
    .C(_1196__bF$buf5),
    .Y(_800_)
);

AOI21X1 _4034_ (
    .A(_814_),
    .B(_835_),
    .C(_802_),
    .Y(_801_)
);

OR2X2 _4035_ (
    .A(_803_),
    .B(_913_),
    .Y(_802_)
);

NAND3X1 _4036_ (
    .A(_806_),
    .B(_804_),
    .C(_809_),
    .Y(_803_)
);

INVX1 _4037_ (
    .A(_805_),
    .Y(_804_)
);

NOR2X1 _4038_ (
    .A(_1325__bF$buf3),
    .B(_906_),
    .Y(_805_)
);

INVX1 _4039_ (
    .A(_807_),
    .Y(_806_)
);

OAI21X1 _4040_ (
    .A(_1328__bF$buf4),
    .B(_914_),
    .C(_808_),
    .Y(_807_)
);

NAND2X1 _4041_ (
    .A(_1350_),
    .B(_1085_),
    .Y(_808_)
);

NOR2X1 _4042_ (
    .A(_810_),
    .B(_812_),
    .Y(_809_)
);

OAI21X1 _4043_ (
    .A(\u_cpu.state [4]),
    .B(_906_),
    .C(_811_),
    .Y(_810_)
);

OAI21X1 _4044_ (
    .A(_1329_),
    .B(_1326_),
    .C(_1075_),
    .Y(_811_)
);

NAND2X1 _4045_ (
    .A(_813_),
    .B(_895_),
    .Y(_812_)
);

NOR2X1 _4046_ (
    .A(_882_),
    .B(_902_),
    .Y(_813_)
);

OAI21X1 _4047_ (
    .A(_822_),
    .B(_819_),
    .C(_815_),
    .Y(_814_)
);

NOR2X1 _4048_ (
    .A(_818_),
    .B(_816_),
    .Y(_815_)
);

OR2X2 _4049_ (
    .A(_839_),
    .B(_817_),
    .Y(_816_)
);

OAI21X1 _4050_ (
    .A(_1331_),
    .B(_1325__bF$buf2),
    .C(_1239_),
    .Y(_817_)
);

NAND3X1 _4051_ (
    .A(_1071_),
    .B(_915_),
    .C(_1241_),
    .Y(_818_)
);

NOR2X1 _4052_ (
    .A(_820_),
    .B(_840_),
    .Y(_819_)
);

NAND2X1 _4053_ (
    .A(_821_),
    .B(_825_),
    .Y(_820_)
);

OAI21X1 _4054_ (
    .A(\u_cpu.state [4]),
    .B(_1330_),
    .C(_889_),
    .Y(_821_)
);

AOI21X1 _4055_ (
    .A(_829_),
    .B(_844_),
    .C(_823_),
    .Y(_822_)
);

NAND3X1 _4056_ (
    .A(_827_),
    .B(_825_),
    .C(_824_),
    .Y(_823_)
);

NOR2X1 _4057_ (
    .A(_889_),
    .B(_1083_),
    .Y(_824_)
);

NOR2X1 _4058_ (
    .A(_1302_),
    .B(_826_),
    .Y(_825_)
);

INVX1 _4059_ (
    .A(_1250_),
    .Y(_826_)
);

INVX1 _4060_ (
    .A(_828_),
    .Y(_827_)
);

NOR2X1 _4061_ (
    .A(_1328__bF$buf3),
    .B(_1084_),
    .Y(_828_)
);

NAND3X1 _4062_ (
    .A(_1045_),
    .B(_848_),
    .C(_830_),
    .Y(_829_)
);

NOR2X1 _4063_ (
    .A(_834_),
    .B(_831_),
    .Y(_830_)
);

OAI21X1 _4064_ (
    .A(\u_cpu.state [5]),
    .B(_881_),
    .C(_832_),
    .Y(_831_)
);

AND2X2 _4065_ (
    .A(_833_),
    .B(_847_),
    .Y(_832_)
);

NAND2X1 _4066_ (
    .A(_1327_),
    .B(_1236_),
    .Y(_833_)
);

OAI21X1 _4067_ (
    .A(_1305__bF$buf1),
    .B(_1081_),
    .C(_1061_),
    .Y(_834_)
);

NAND3X1 _4068_ (
    .A(_854_),
    .B(_852_),
    .C(_836_),
    .Y(_835_)
);

NOR2X1 _4069_ (
    .A(_837_),
    .B(_840_),
    .Y(_836_)
);

NAND2X1 _4070_ (
    .A(_1307_),
    .B(_838_),
    .Y(_837_)
);

NOR2X1 _4071_ (
    .A(_1249_),
    .B(_839_),
    .Y(_838_)
);

OAI21X1 _4072_ (
    .A(_1328__bF$buf2),
    .B(_870_),
    .C(_1063_),
    .Y(_839_)
);

INVX1 _4073_ (
    .A(_841_),
    .Y(_840_)
);

NOR2X1 _4074_ (
    .A(_842_),
    .B(_844_),
    .Y(_841_)
);

OAI21X1 _4075_ (
    .A(_1328__bF$buf1),
    .B(_1084_),
    .C(_843_),
    .Y(_842_)
);

NAND2X1 _4076_ (
    .A(_1329_),
    .B(_1236_),
    .Y(_843_)
);

NAND2X1 _4077_ (
    .A(_848_),
    .B(_845_),
    .Y(_844_)
);

NOR2X1 _4078_ (
    .A(_846_),
    .B(_1078_),
    .Y(_845_)
);

NAND3X1 _4079_ (
    .A(_1235_),
    .B(_881_),
    .C(_847_),
    .Y(_846_)
);

NAND2X1 _4080_ (
    .A(_1329_),
    .B(_912_),
    .Y(_847_)
);

NOR2X1 _4081_ (
    .A(_851_),
    .B(_849_),
    .Y(_848_)
);

OAI21X1 _4082_ (
    .A(\u_cpu.state [5]),
    .B(_911_),
    .C(_850_),
    .Y(_849_)
);

OAI21X1 _4083_ (
    .A(_1236_),
    .B(_1080_),
    .C(_1326_),
    .Y(_850_)
);

OAI21X1 _4084_ (
    .A(_1305__bF$buf0),
    .B(_1087_),
    .C(_1315__bF$buf2),
    .Y(_851_)
);

NOR2X1 _4085_ (
    .A(_1083_),
    .B(_853_),
    .Y(_852_)
);

NOR2X1 _4086_ (
    .A(_1305__bF$buf3),
    .B(_888_),
    .Y(_853_)
);

NOR2X1 _4087_ (
    .A(_1240_),
    .B(_855_),
    .Y(_854_)
);

OAI21X1 _4088_ (
    .A(\u_cpu.state [5]),
    .B(_1239_),
    .C(_856_),
    .Y(_855_)
);

AOI21X1 _4089_ (
    .A(_1305__bF$buf2),
    .B(_889_),
    .C(_857_),
    .Y(_856_)
);

NOR2X1 _4090_ (
    .A(_1305__bF$buf1),
    .B(_904_),
    .Y(_857_)
);

NAND2X1 _4091_ (
    .A(_1327_),
    .B(_1064_),
    .Y(_858_)
);

INVX1 _4092_ (
    .A(_859_),
    .Y(_2354_[15])
);

AOI21X1 _4093_ (
    .A(\u_cpu.AN ),
    .B(_908_),
    .C(_860_),
    .Y(_859_)
);

OAI21X1 _4094_ (
    .A(_907_),
    .B(_864_),
    .C(_861_),
    .Y(_860_)
);

AND2X2 _4095_ (
    .A(_863_),
    .B(_862_),
    .Y(_861_)
);

OAI21X1 _4096_ (
    .A(_1286_),
    .B(_875_),
    .C(\u_cpu.ABH [7]),
    .Y(_862_)
);

OAI21X1 _4097_ (
    .A(_1319_),
    .B(_887_),
    .C(\u_cpu.DIMUX [7]),
    .Y(_863_)
);

NAND2X1 _4098_ (
    .A(_865_),
    .B(_877_),
    .Y(_864_)
);

AND2X2 _4099_ (
    .A(_874_),
    .B(_866_),
    .Y(_865_)
);

NOR2X1 _4100_ (
    .A(_867_),
    .B(_871_),
    .Y(_866_)
);

OAI21X1 _4101_ (
    .A(_1328__bF$buf0),
    .B(_870_),
    .C(_868_),
    .Y(_867_)
);

INVX1 _4102_ (
    .A(_869_),
    .Y(_868_)
);

NOR2X1 _4103_ (
    .A(_1325__bF$buf1),
    .B(_1076_),
    .Y(_869_)
);

INVX2 _4104_ (
    .A(_1072_),
    .Y(_870_)
);

INVX1 _4105_ (
    .A(_872_),
    .Y(_871_)
);

NOR2X1 _4106_ (
    .A(_873_),
    .B(_1073_),
    .Y(_872_)
);

OAI21X1 _4107_ (
    .A(_1305__bF$buf0),
    .B(_1081_),
    .C(_1070__bF$buf0),
    .Y(_873_)
);

NOR2X1 _4108_ (
    .A(_875_),
    .B(_908_),
    .Y(_874_)
);

OAI21X1 _4109_ (
    .A(_1328__bF$buf5),
    .B(_1084_),
    .C(_876_),
    .Y(_875_)
);

OAI21X1 _4110_ (
    .A(_1064_),
    .B(_912_),
    .C(_1329_),
    .Y(_876_)
);

NOR2X1 _4111_ (
    .A(_893_),
    .B(_878_),
    .Y(_877_)
);

NAND3X1 _4112_ (
    .A(_884_),
    .B(_879_),
    .C(_886_),
    .Y(_878_)
);

NOR2X1 _4113_ (
    .A(_882_),
    .B(_880_),
    .Y(_879_)
);

OAI21X1 _4114_ (
    .A(_1325__bF$buf0),
    .B(_881_),
    .C(_1063_),
    .Y(_880_)
);

INVX2 _4115_ (
    .A(_1233_),
    .Y(_881_)
);

INVX1 _4116_ (
    .A(_883_),
    .Y(_882_)
);

NAND2X1 _4117_ (
    .A(_1350_),
    .B(_1072_),
    .Y(_883_)
);

AND2X2 _4118_ (
    .A(_885_),
    .B(_1333_),
    .Y(_884_)
);

NAND2X1 _4119_ (
    .A(_1303_),
    .B(_889_),
    .Y(_885_)
);

NOR2X1 _4120_ (
    .A(_1319_),
    .B(_887_),
    .Y(_886_)
);

OAI21X1 _4121_ (
    .A(\u_cpu.state [5]),
    .B(_888_),
    .C(_890_),
    .Y(_887_)
);

INVX2 _4122_ (
    .A(_889_),
    .Y(_888_)
);

NOR2X1 _4123_ (
    .A(_1309_),
    .B(_1237_),
    .Y(_889_)
);

INVX1 _4124_ (
    .A(_891_),
    .Y(_890_)
);

OAI21X1 _4125_ (
    .A(_1325__bF$buf4),
    .B(_911_),
    .C(_892_),
    .Y(_891_)
);

NAND2X1 _4126_ (
    .A(_1350_),
    .B(_1064_),
    .Y(_892_)
);

NAND3X1 _4127_ (
    .A(_895_),
    .B(_894_),
    .C(_899_),
    .Y(_893_)
);

AOI21X1 _4128_ (
    .A(_1326_),
    .B(_1072_),
    .C(_1046_),
    .Y(_894_)
);

INVX1 _4129_ (
    .A(_896_),
    .Y(_895_)
);

OAI21X1 _4130_ (
    .A(_1325__bF$buf3),
    .B(_903_),
    .C(_897_),
    .Y(_896_)
);

INVX2 _4131_ (
    .A(_898_),
    .Y(_897_)
);

NOR2X1 _4132_ (
    .A(_1328__bF$buf4),
    .B(_1252_),
    .Y(_898_)
);

NOR2X1 _4133_ (
    .A(_905_),
    .B(_900_),
    .Y(_899_)
);

OAI21X1 _4134_ (
    .A(_1305__bF$buf3),
    .B(_904_),
    .C(_901_),
    .Y(_900_)
);

NOR2X1 _4135_ (
    .A(_1274_),
    .B(_902_),
    .Y(_901_)
);

NOR2X1 _4136_ (
    .A(_1328__bF$buf3),
    .B(_903_),
    .Y(_902_)
);

INVX2 _4137_ (
    .A(_1242_),
    .Y(_903_)
);

INVX2 _4138_ (
    .A(_1285_),
    .Y(_904_)
);

NOR2X1 _4139_ (
    .A(_1328__bF$buf2),
    .B(_906_),
    .Y(_905_)
);

INVX2 _4140_ (
    .A(_1334_),
    .Y(_906_)
);

INVX1 _4141_ (
    .A(\u_cpu.PC [15]),
    .Y(_907_)
);

OAI21X1 _4142_ (
    .A(\u_cpu.state [4]),
    .B(_915_),
    .C(_909_),
    .Y(_908_)
);

NOR2X1 _4143_ (
    .A(_913_),
    .B(_910_),
    .Y(_909_)
);

NOR2X1 _4144_ (
    .A(_1305__bF$buf2),
    .B(_911_),
    .Y(_910_)
);

INVX2 _4145_ (
    .A(_912_),
    .Y(_911_)
);

NOR2X1 _4146_ (
    .A(_1337_),
    .B(_1234_),
    .Y(_912_)
);

NOR2X1 _4147_ (
    .A(_1325__bF$buf2),
    .B(_914_),
    .Y(_913_)
);

INVX1 _4148_ (
    .A(_1251_),
    .Y(_914_)
);

NAND2X1 _4149_ (
    .A(_1330_),
    .B(_1306_),
    .Y(_915_)
);

OAI21X1 _4150_ (
    .A(_1039_),
    .B(_921_),
    .C(_916_),
    .Y(_1461_)
);

NAND2X1 _4151_ (
    .A(\u_cpu.AXYS[3] [4]),
    .B(_921_),
    .Y(_916_)
);

OAI21X1 _4152_ (
    .A(_943_),
    .B(_921_),
    .C(_917_),
    .Y(_1462_)
);

NAND2X1 _4153_ (
    .A(\u_cpu.AXYS[3] [3]),
    .B(_921_),
    .Y(_917_)
);

OAI21X1 _4154_ (
    .A(_952_),
    .B(_921_),
    .C(_918_),
    .Y(_1463_)
);

NAND2X1 _4155_ (
    .A(\u_cpu.AXYS[3] [2]),
    .B(_921_),
    .Y(_918_)
);

OAI21X1 _4156_ (
    .A(_963_),
    .B(_921_),
    .C(_919_),
    .Y(_1464_)
);

NAND2X1 _4157_ (
    .A(\u_cpu.AXYS[3] [1]),
    .B(_921_),
    .Y(_919_)
);

OAI21X1 _4158_ (
    .A(_975_),
    .B(_921_),
    .C(_920_),
    .Y(_1465_)
);

NAND2X1 _4159_ (
    .A(\u_cpu.AXYS[3] [0]),
    .B(_921_),
    .Y(_920_)
);

NAND2X1 _4160_ (
    .A(_1042_),
    .B(_922_),
    .Y(_921_)
);

NOR2X1 _4161_ (
    .A(_1051_),
    .B(_979_),
    .Y(_922_)
);

OAI21X1 _4162_ (
    .A(_977_),
    .B(_924_),
    .C(_923_),
    .Y(_1466_)
);

NAND2X1 _4163_ (
    .A(\u_cpu.AXYS[0] [6]),
    .B(_977_),
    .Y(_923_)
);

OAI21X1 _4164_ (
    .A(\u_cpu.DIMUX [6]),
    .B(_1070__bF$buf3),
    .C(_925_),
    .Y(_924_)
);

OAI21X1 _4165_ (
    .A(_927_),
    .B(_926_),
    .C(_1070__bF$buf2),
    .Y(_925_)
);

AND2X2 _4166_ (
    .A(_937_),
    .B(_928_),
    .Y(_926_)
);

NOR2X1 _4167_ (
    .A(_928_),
    .B(_937_),
    .Y(_927_)
);

NAND2X1 _4168_ (
    .A(_929_),
    .B(_930_),
    .Y(_928_)
);

NAND2X1 _4169_ (
    .A(_1096_),
    .B(_939_),
    .Y(_929_)
);

NAND2X1 _4170_ (
    .A(\u_cpu.ADD [6]),
    .B(_938_),
    .Y(_930_)
);

OAI21X1 _4171_ (
    .A(_977_),
    .B(_932_),
    .C(_931_),
    .Y(_1467_)
);

NAND2X1 _4172_ (
    .A(\u_cpu.AXYS[0] [5]),
    .B(_977_),
    .Y(_931_)
);

OAI21X1 _4173_ (
    .A(\u_cpu.DIMUX [5]),
    .B(_1070__bF$buf1),
    .C(_933_),
    .Y(_932_)
);

NAND2X1 _4174_ (
    .A(_1070__bF$buf0),
    .B(_934_),
    .Y(_933_)
);

NAND2X1 _4175_ (
    .A(_937_),
    .B(_935_),
    .Y(_934_)
);

NAND3X1 _4176_ (
    .A(_1287_),
    .B(_939_),
    .C(_936_),
    .Y(_935_)
);

INVX1 _4177_ (
    .A(_940_),
    .Y(_936_)
);

OAI21X1 _4178_ (
    .A(_938_),
    .B(_940_),
    .C(\u_cpu.ADD [5]),
    .Y(_937_)
);

INVX1 _4179_ (
    .A(_939_),
    .Y(_938_)
);

NAND3X1 _4180_ (
    .A(\u_cpu.CO ),
    .B(\u_cpu.adj_bcd ),
    .C(\u_cpu.adc_bcd ),
    .Y(_939_)
);

NOR2X1 _4181_ (
    .A(\u_cpu.CO ),
    .B(_970_),
    .Y(_940_)
);

OAI21X1 _4182_ (
    .A(_1039_),
    .B(_977_),
    .C(_941_),
    .Y(_1468_)
);

NAND2X1 _4183_ (
    .A(\u_cpu.AXYS[0] [4]),
    .B(_977_),
    .Y(_941_)
);

OAI21X1 _4184_ (
    .A(_977_),
    .B(_943_),
    .C(_942_),
    .Y(_1469_)
);

NAND2X1 _4185_ (
    .A(\u_cpu.AXYS[0] [3]),
    .B(_977_),
    .Y(_942_)
);

OAI21X1 _4186_ (
    .A(\u_cpu.DIMUX [3]),
    .B(_1070__bF$buf3),
    .C(_944_),
    .Y(_943_)
);

OAI21X1 _4187_ (
    .A(_945_),
    .B(_946_),
    .C(_1070__bF$buf2),
    .Y(_944_)
);

NOR2X1 _4188_ (
    .A(_947_),
    .B(_950_),
    .Y(_945_)
);

AND2X2 _4189_ (
    .A(_950_),
    .B(_947_),
    .Y(_946_)
);

NAND2X1 _4190_ (
    .A(_949_),
    .B(_948_),
    .Y(_947_)
);

NAND2X1 _4191_ (
    .A(_1164_),
    .B(_969_),
    .Y(_948_)
);

OAI21X1 _4192_ (
    .A(\u_cpu.HC ),
    .B(_970_),
    .C(\u_cpu.ADD [3]),
    .Y(_949_)
);

OAI21X1 _4193_ (
    .A(_956_),
    .B(_968_),
    .C(_958_),
    .Y(_950_)
);

OAI21X1 _4194_ (
    .A(_977_),
    .B(_952_),
    .C(_951_),
    .Y(_1470_)
);

NAND2X1 _4195_ (
    .A(\u_cpu.AXYS[0] [2]),
    .B(_977_),
    .Y(_951_)
);

OAI21X1 _4196_ (
    .A(\u_cpu.DIMUX [2]),
    .B(_1070__bF$buf1),
    .C(_953_),
    .Y(_952_)
);

OAI21X1 _4197_ (
    .A(_955_),
    .B(_954_),
    .C(_1070__bF$buf0),
    .Y(_953_)
);

AND2X2 _4198_ (
    .A(_968_),
    .B(_956_),
    .Y(_954_)
);

NOR2X1 _4199_ (
    .A(_956_),
    .B(_968_),
    .Y(_955_)
);

NAND2X1 _4200_ (
    .A(_957_),
    .B(_958_),
    .Y(_956_)
);

NAND2X1 _4201_ (
    .A(_1178_),
    .B(_973_),
    .Y(_957_)
);

NAND2X1 _4202_ (
    .A(\u_cpu.ADD [2]),
    .B(_972_),
    .Y(_958_)
);

OAI21X1 _4203_ (
    .A(_1037__bF$buf2),
    .B(_960_),
    .C(_959_),
    .Y(_1471_)
);

OAI21X1 _4204_ (
    .A(_1196__bF$buf4),
    .B(_1345__bF$buf0),
    .C(\u_cpu.inc ),
    .Y(_959_)
);

NAND2X1 _4205_ (
    .A(_1007_),
    .B(_961_),
    .Y(_960_)
);

OAI21X1 _4206_ (
    .A(_1126_),
    .B(_1003_),
    .C(_997_),
    .Y(_961_)
);

OAI21X1 _4207_ (
    .A(_977_),
    .B(_963_),
    .C(_962_),
    .Y(_1472_)
);

NAND2X1 _4208_ (
    .A(\u_cpu.AXYS[0] [1]),
    .B(_977_),
    .Y(_962_)
);

OAI21X1 _4209_ (
    .A(\u_cpu.DIMUX [1]),
    .B(_1070__bF$buf3),
    .C(_964_),
    .Y(_963_)
);

NAND2X1 _4210_ (
    .A(_1070__bF$buf2),
    .B(_965_),
    .Y(_964_)
);

NAND2X1 _4211_ (
    .A(_968_),
    .B(_966_),
    .Y(_965_)
);

NAND3X1 _4212_ (
    .A(_1221_),
    .B(_973_),
    .C(_967_),
    .Y(_966_)
);

INVX1 _4213_ (
    .A(_969_),
    .Y(_967_)
);

OAI21X1 _4214_ (
    .A(_972_),
    .B(_969_),
    .C(\u_cpu.ADD [1]),
    .Y(_968_)
);

NOR2X1 _4215_ (
    .A(\u_cpu.HC ),
    .B(_970_),
    .Y(_969_)
);

NAND2X1 _4216_ (
    .A(\u_cpu.adj_bcd ),
    .B(_971_),
    .Y(_970_)
);

INVX1 _4217_ (
    .A(\u_cpu.adc_bcd ),
    .Y(_971_)
);

INVX1 _4218_ (
    .A(_973_),
    .Y(_972_)
);

NAND3X1 _4219_ (
    .A(\u_cpu.adj_bcd ),
    .B(\u_cpu.adc_bcd ),
    .C(\u_cpu.HC ),
    .Y(_973_)
);

OAI21X1 _4220_ (
    .A(_977_),
    .B(_975_),
    .C(_974_),
    .Y(_1473_)
);

NAND2X1 _4221_ (
    .A(\u_cpu.AXYS[0] [0]),
    .B(_977_),
    .Y(_974_)
);

OAI21X1 _4222_ (
    .A(\u_cpu.DIMUX [0]),
    .B(_1070__bF$buf1),
    .C(_976_),
    .Y(_975_)
);

NAND2X1 _4223_ (
    .A(_1205_),
    .B(_1070__bF$buf0),
    .Y(_976_)
);

NAND2X1 _4224_ (
    .A(_1042_),
    .B(_978_),
    .Y(_977_)
);

AND2X2 _4225_ (
    .A(_979_),
    .B(_1051_),
    .Y(_978_)
);

AND2X2 _4226_ (
    .A(_1065_),
    .B(_1058_),
    .Y(_979_)
);

AOI22X1 _4227_ (
    .A(_1009_),
    .B(_1037__bF$buf1),
    .C(_980_),
    .D(_992_),
    .Y(_1474_)
);

NOR2X1 _4228_ (
    .A(_1022_),
    .B(_981_),
    .Y(_980_)
);

NAND3X1 _4229_ (
    .A(_983_),
    .B(_982_),
    .C(_986_),
    .Y(_981_)
);

AOI21X1 _4230_ (
    .A(_1019_),
    .B(_1104_),
    .C(_1037__bF$buf0),
    .Y(_982_)
);

NAND2X1 _4231_ (
    .A(_984_),
    .B(_985_),
    .Y(_983_)
);

NOR2X1 _4232_ (
    .A(_1123_),
    .B(_1117_),
    .Y(_984_)
);

AND2X2 _4233_ (
    .A(_1007_),
    .B(_1099_),
    .Y(_985_)
);

INVX1 _4234_ (
    .A(_987_),
    .Y(_986_)
);

NOR2X1 _4235_ (
    .A(_990_),
    .B(_988_),
    .Y(_987_)
);

INVX1 _4236_ (
    .A(_989_),
    .Y(_988_)
);

NOR2X1 _4237_ (
    .A(_1020_),
    .B(_1000_),
    .Y(_989_)
);

NAND2X1 _4238_ (
    .A(_991_),
    .B(_1013_),
    .Y(_990_)
);

NOR2X1 _4239_ (
    .A(_1123_),
    .B(_1008_),
    .Y(_991_)
);

AOI22X1 _4240_ (
    .A(_1002_),
    .B(_1007_),
    .C(_996_),
    .D(_993_),
    .Y(_992_)
);

NOR2X1 _4241_ (
    .A(_1027_),
    .B(_994_),
    .Y(_993_)
);

INVX1 _4242_ (
    .A(_995_),
    .Y(_994_)
);

NOR2X1 _4243_ (
    .A(_1106_),
    .B(_1008_),
    .Y(_995_)
);

INVX1 _4244_ (
    .A(_997_),
    .Y(_996_)
);

NAND2X1 _4245_ (
    .A(_1001_),
    .B(_998_),
    .Y(_997_)
);

NOR2X1 _4246_ (
    .A(_999_),
    .B(_1000_),
    .Y(_998_)
);

INVX1 _4247_ (
    .A(_1099_),
    .Y(_999_)
);

INVX1 _4248_ (
    .A(_1117_),
    .Y(_1000_)
);

INVX2 _4249_ (
    .A(_1123_),
    .Y(_1001_)
);

OAI21X1 _4250_ (
    .A(_1027_),
    .B(_1003_),
    .C(_1006_),
    .Y(_1002_)
);

INVX1 _4251_ (
    .A(_1004_),
    .Y(_1003_)
);

NOR2X1 _4252_ (
    .A(_1005_),
    .B(_1020_),
    .Y(_1004_)
);

INVX1 _4253_ (
    .A(_1118_),
    .Y(_1005_)
);

INVX1 _4254_ (
    .A(_1024_),
    .Y(_1006_)
);

NOR2X1 _4255_ (
    .A(_1008_),
    .B(_1105_),
    .Y(_1007_)
);

INVX2 _4256_ (
    .A(_1111_),
    .Y(_1008_)
);

INVX1 _4257_ (
    .A(\u_cpu.op [2]),
    .Y(_1009_)
);

NAND2X1 _4258_ (
    .A(_1011_),
    .B(_1010_),
    .Y(_1475_)
);

OAI21X1 _4259_ (
    .A(\u_cpu.op [1]),
    .B(_1129__bF$buf1),
    .C(_1021_),
    .Y(_1010_)
);

NAND2X1 _4260_ (
    .A(_1018_),
    .B(_1012_),
    .Y(_1011_)
);

AND2X2 _4261_ (
    .A(_1013_),
    .B(_1024_),
    .Y(_1012_)
);

NOR2X1 _4262_ (
    .A(_1027_),
    .B(_1105_),
    .Y(_1013_)
);

AOI22X1 _4263_ (
    .A(_1016_),
    .B(_1037__bF$buf3),
    .C(_1015_),
    .D(_1014_),
    .Y(_1476_)
);

NOR2X1 _4264_ (
    .A(_1037__bF$buf2),
    .B(_1027_),
    .Y(_1014_)
);

NOR2X1 _4265_ (
    .A(_1111_),
    .B(_1023_),
    .Y(_1015_)
);

INVX1 _4266_ (
    .A(\u_cpu.op [0]),
    .Y(_1016_)
);

NAND2X1 _4267_ (
    .A(_1017_),
    .B(_1021_),
    .Y(_1477_)
);

AOI22X1 _4268_ (
    .A(\u_cpu.op [3]),
    .B(_1037__bF$buf1),
    .C(_1019_),
    .D(_1018_),
    .Y(_1017_)
);

NOR2X1 _4269_ (
    .A(_1037__bF$buf0),
    .B(_1111_),
    .Y(_1018_)
);

INVX1 _4270_ (
    .A(_1020_),
    .Y(_1019_)
);

NAND2X1 _4271_ (
    .A(_1102_),
    .B(_1025_),
    .Y(_1020_)
);

NAND2X1 _4272_ (
    .A(_1129__bF$buf0),
    .B(_1022_),
    .Y(_1021_)
);

OAI21X1 _4273_ (
    .A(_1111_),
    .B(_1023_),
    .C(_1031_),
    .Y(_1022_)
);

OAI21X1 _4274_ (
    .A(_1126_),
    .B(_1105_),
    .C(_1024_),
    .Y(_1023_)
);

NOR2X1 _4275_ (
    .A(_1102_),
    .B(_1025_),
    .Y(_1024_)
);

INVX1 _4276_ (
    .A(_1100_),
    .Y(_1025_)
);

OAI21X1 _4277_ (
    .A(_1026_),
    .B(_1098_),
    .C(_1028_),
    .Y(_1478_)
);

NAND3X1 _4278_ (
    .A(_1027_),
    .B(_1123_),
    .C(_1117_),
    .Y(_1026_)
);

INVX2 _4279_ (
    .A(_1126_),
    .Y(_1027_)
);

OAI21X1 _4280_ (
    .A(_1196__bF$buf3),
    .B(_1345__bF$buf3),
    .C(\u_cpu.sei ),
    .Y(_1028_)
);

OAI21X1 _4281_ (
    .A(RDY_bF$buf2),
    .B(_1029_),
    .C(_1114_),
    .Y(_1479_)
);

INVX1 _4282_ (
    .A(\u_cpu.backwards ),
    .Y(_1029_)
);

OAI21X1 _4283_ (
    .A(_1037__bF$buf3),
    .B(_1031_),
    .C(_1030_),
    .Y(_1480_)
);

OAI21X1 _4284_ (
    .A(_1196__bF$buf2),
    .B(_1345__bF$buf2),
    .C(\u_cpu.bit_ins ),
    .Y(_1030_)
);

NAND3X1 _4285_ (
    .A(_1118_),
    .B(_1099_),
    .C(_1032_),
    .Y(_1031_)
);

NOR2X1 _4286_ (
    .A(_1035_),
    .B(_1033_),
    .Y(_1032_)
);

INVX1 _4287_ (
    .A(_1034_),
    .Y(_1033_)
);

NOR2X1 _4288_ (
    .A(_1111_),
    .B(_1106_),
    .Y(_1034_)
);

INVX1 _4289_ (
    .A(_1036_),
    .Y(_1035_)
);

NOR2X1 _4290_ (
    .A(_1126_),
    .B(_1123_),
    .Y(_1036_)
);

INVX4 _4291_ (
    .A(_1129__bF$buf5),
    .Y(_1037_)
);

OAI21X1 _4292_ (
    .A(_1041_),
    .B(_1039_),
    .C(_1038_),
    .Y(_1481_)
);

NAND2X1 _4293_ (
    .A(\u_cpu.AXYS[1] [4]),
    .B(_1041_),
    .Y(_1038_)
);

OAI21X1 _4294_ (
    .A(\u_cpu.DIMUX [4]),
    .B(_1070__bF$buf3),
    .C(_1040_),
    .Y(_1039_)
);

NAND2X1 _4295_ (
    .A(_1275_),
    .B(_1070__bF$buf2),
    .Y(_1040_)
);

NAND2X1 _4296_ (
    .A(_1042_),
    .B(_1050_),
    .Y(_1041_)
);

AOI21X1 _4297_ (
    .A(_1045_),
    .B(_1043_),
    .C(_1196__bF$buf1),
    .Y(_1042_)
);

AOI21X1 _4298_ (
    .A(\u_cpu.load_reg ),
    .B(_1044_),
    .C(_1069_),
    .Y(_1043_)
);

NOR2X1 _4299_ (
    .A(\u_cpu.plp ),
    .B(_1345__bF$buf1),
    .Y(_1044_)
);

NOR2X1 _4300_ (
    .A(_1046_),
    .B(_1047_),
    .Y(_1045_)
);

AOI21X1 _4301_ (
    .A(_1081_),
    .B(_1087_),
    .C(_1328__bF$buf1),
    .Y(_1046_)
);

INVX1 _4302_ (
    .A(_1048_),
    .Y(_1047_)
);

NAND2X1 _4303_ (
    .A(_1326_),
    .B(_1049_),
    .Y(_1048_)
);

INVX1 _4304_ (
    .A(_1087_),
    .Y(_1049_)
);

NOR2X1 _4305_ (
    .A(_1051_),
    .B(_1057_),
    .Y(_1050_)
);

NOR2X1 _4306_ (
    .A(_1067_),
    .B(_1052_),
    .Y(_1051_)
);

NAND3X1 _4307_ (
    .A(_1056_),
    .B(_1055_),
    .C(_1053_),
    .Y(_1052_)
);

NAND2X1 _4308_ (
    .A(\u_cpu.src_reg [0]),
    .B(_1054_),
    .Y(_1053_)
);

NOR2X1 _4309_ (
    .A(_1344_),
    .B(_1059_),
    .Y(_1054_)
);

NAND2X1 _4310_ (
    .A(\u_cpu.dst_reg [0]),
    .B(_1344_),
    .Y(_1055_)
);

OAI21X1 _4311_ (
    .A(_1062_),
    .B(_1060_),
    .C(\u_cpu.index_y ),
    .Y(_1056_)
);

NAND2X1 _4312_ (
    .A(_1058_),
    .B(_1065_),
    .Y(_1057_)
);

AOI21X1 _4313_ (
    .A(\u_cpu.dst_reg [1]),
    .B(_1344_),
    .C(_1059_),
    .Y(_1058_)
);

OR2X2 _4314_ (
    .A(_1060_),
    .B(_1062_),
    .Y(_1059_)
);

OAI21X1 _4315_ (
    .A(_1305__bF$buf1),
    .B(_1076_),
    .C(_1061_),
    .Y(_1060_)
);

NAND2X1 _4316_ (
    .A(_1303_),
    .B(_1233_),
    .Y(_1061_)
);

OAI21X1 _4317_ (
    .A(_1305__bF$buf0),
    .B(_1084_),
    .C(_1063_),
    .Y(_1062_)
);

NAND2X1 _4318_ (
    .A(_1326_),
    .B(_1064_),
    .Y(_1063_)
);

NOR2X1 _4319_ (
    .A(_1352_),
    .B(_1237_),
    .Y(_1064_)
);

OAI21X1 _4320_ (
    .A(_1305__bF$buf3),
    .B(_1087_),
    .C(_1066_),
    .Y(_1065_)
);

NOR2X1 _4321_ (
    .A(_1086_),
    .B(_1067_),
    .Y(_1066_)
);

NAND2X1 _4322_ (
    .A(_1068_),
    .B(_1077_),
    .Y(_1067_)
);

NOR2X1 _4323_ (
    .A(_1069_),
    .B(_1073_),
    .Y(_1068_)
);

NAND3X1 _4324_ (
    .A(_1071_),
    .B(_1241_),
    .C(_1070__bF$buf1),
    .Y(_1069_)
);

NAND2X1 _4325_ (
    .A(_1326_),
    .B(_1075_),
    .Y(_1070_)
);

NAND2X1 _4326_ (
    .A(_1326_),
    .B(_1072_),
    .Y(_1071_)
);

NOR2X1 _4327_ (
    .A(_1352_),
    .B(_1348_),
    .Y(_1072_)
);

OAI21X1 _4328_ (
    .A(_1328__bF$buf0),
    .B(_1076_),
    .C(_1074_),
    .Y(_1073_)
);

OAI21X1 _4329_ (
    .A(_1075_),
    .B(_1251_),
    .C(_1329_),
    .Y(_1074_)
);

NOR2X1 _4330_ (
    .A(_1335_),
    .B(_1304_),
    .Y(_1075_)
);

INVX2 _4331_ (
    .A(_1236_),
    .Y(_1076_)
);

NOR2X1 _4332_ (
    .A(_1083_),
    .B(_1078_),
    .Y(_1077_)
);

OAI21X1 _4333_ (
    .A(_1087_),
    .B(_1325__bF$buf1),
    .C(_1079_),
    .Y(_1078_)
);

AOI21X1 _4334_ (
    .A(_1080_),
    .B(_1327_),
    .C(_1082_),
    .Y(_1079_)
);

INVX1 _4335_ (
    .A(_1081_),
    .Y(_1080_)
);

NAND2X1 _4336_ (
    .A(_1346_),
    .B(_1322_),
    .Y(_1081_)
);

NOR2X1 _4337_ (
    .A(_1087_),
    .B(_1328__bF$buf5),
    .Y(_1082_)
);

NOR2X1 _4338_ (
    .A(_1325__bF$buf0),
    .B(_1084_),
    .Y(_1083_)
);

INVX2 _4339_ (
    .A(_1085_),
    .Y(_1084_)
);

NOR2X1 _4340_ (
    .A(_1348_),
    .B(_1335_),
    .Y(_1085_)
);

INVX1 _4341_ (
    .A(\u_cpu.src_reg [1]),
    .Y(_1086_)
);

NAND2X1 _4342_ (
    .A(_1346_),
    .B(_1347_),
    .Y(_1087_)
);

OAI21X1 _4343_ (
    .A(_1090_),
    .B(_1088_),
    .C(_1097_),
    .Y(_1482_)
);

NAND2X1 _4344_ (
    .A(RDY_bF$buf1),
    .B(_1089_),
    .Y(_1088_)
);

NAND3X1 _4345_ (
    .A(_1133_),
    .B(_1091_),
    .C(_1144_),
    .Y(_1089_)
);

AOI21X1 _4346_ (
    .A(_1144_),
    .B(_1133_),
    .C(_1091_),
    .Y(_1090_)
);

INVX1 _4347_ (
    .A(_1092_),
    .Y(_1091_)
);

AOI21X1 _4348_ (
    .A(\u_cpu.PC [14]),
    .B(_1269_),
    .C(_1093_),
    .Y(_1092_)
);

OAI21X1 _4349_ (
    .A(_1318_),
    .B(_1108_),
    .C(_1094_),
    .Y(_1093_)
);

AOI21X1 _4350_ (
    .A(_1206_),
    .B(\u_cpu.ABH [6]),
    .C(_1095_),
    .Y(_1094_)
);

OAI21X1 _4351_ (
    .A(_1096_),
    .B(_1349_),
    .C(_1315__bF$buf1),
    .Y(_1095_)
);

INVX1 _4352_ (
    .A(\u_cpu.ADD [6]),
    .Y(_1096_)
);

NAND2X1 _4353_ (
    .A(\u_cpu.PC [14]),
    .B(_1196__bF$buf0),
    .Y(_1097_)
);

OAI22X1 _4354_ (
    .A(_1130_),
    .B(_1129__bF$buf4),
    .C(_1116_),
    .D(_1098_),
    .Y(_1483_)
);

NAND3X1 _4355_ (
    .A(_1129__bF$buf3),
    .B(_1099_),
    .C(_1104_),
    .Y(_1098_)
);

NOR2X1 _4356_ (
    .A(_1102_),
    .B(_1100_),
    .Y(_1099_)
);

AOI21X1 _4357_ (
    .A(_1125_),
    .B(_1207_),
    .C(_1101_),
    .Y(_1100_)
);

OAI21X1 _4358_ (
    .A(_1125_),
    .B(\u_cpu.IRHOLD [0]),
    .C(_1340_),
    .Y(_1101_)
);

AOI21X1 _4359_ (
    .A(_1125_),
    .B(_1192_),
    .C(_1103_),
    .Y(_1102_)
);

OAI21X1 _4360_ (
    .A(_1125_),
    .B(\u_cpu.IRHOLD [1]),
    .C(_1340_),
    .Y(_1103_)
);

NOR2X1 _4361_ (
    .A(_1111_),
    .B(_1105_),
    .Y(_1104_)
);

INVX2 _4362_ (
    .A(_1106_),
    .Y(_1105_)
);

AOI21X1 _4363_ (
    .A(_1125_),
    .B(_1108_),
    .C(_1107_),
    .Y(_1106_)
);

OAI21X1 _4364_ (
    .A(_1125_),
    .B(\u_cpu.IRHOLD [6]),
    .C(_1340_),
    .Y(_1107_)
);

INVX2 _4365_ (
    .A(\u_cpu.DIMUX [6]),
    .Y(_1108_)
);

OAI21X1 _4366_ (
    .A(RDY_bF$buf0),
    .B(_1110_),
    .C(_1109_),
    .Y(\u_cpu.DIMUX [6])
);

NAND2X1 _4367_ (
    .A(RDY_bF$buf7),
    .B(Data_In[6]),
    .Y(_1109_)
);

INVX1 _4368_ (
    .A(\u_cpu.DIHOLD [6]),
    .Y(_1110_)
);

AOI21X1 _4369_ (
    .A(_1125_),
    .B(_1113_),
    .C(_1112_),
    .Y(_1111_)
);

OAI21X1 _4370_ (
    .A(_1125_),
    .B(\u_cpu.IRHOLD [7]),
    .C(_1340_),
    .Y(_1112_)
);

INVX2 _4371_ (
    .A(\u_cpu.DIMUX [7]),
    .Y(_1113_)
);

OAI21X1 _4372_ (
    .A(RDY_bF$buf6),
    .B(_1115_),
    .C(_1114_),
    .Y(\u_cpu.DIMUX [7])
);

NAND2X1 _4373_ (
    .A(RDY_bF$buf5),
    .B(Data_In[7]),
    .Y(_1114_)
);

INVX1 _4374_ (
    .A(\u_cpu.DIHOLD [7]),
    .Y(_1115_)
);

NAND3X1 _4375_ (
    .A(_1126_),
    .B(_1123_),
    .C(_1117_),
    .Y(_1116_)
);

NOR2X1 _4376_ (
    .A(_1118_),
    .B(_1120_),
    .Y(_1117_)
);

AOI21X1 _4377_ (
    .A(_1125_),
    .B(_1179_),
    .C(_1119_),
    .Y(_1118_)
);

OAI21X1 _4378_ (
    .A(_1125_),
    .B(\u_cpu.IRHOLD [2]),
    .C(_1340_),
    .Y(_1119_)
);

INVX1 _4379_ (
    .A(_1121_),
    .Y(_1120_)
);

AOI21X1 _4380_ (
    .A(_1125_),
    .B(_1165_),
    .C(_1122_),
    .Y(_1121_)
);

OAI21X1 _4381_ (
    .A(_1125_),
    .B(\u_cpu.IRHOLD [3]),
    .C(_1340_),
    .Y(_1122_)
);

AOI21X1 _4382_ (
    .A(_1125_),
    .B(_1150_),
    .C(_1124_),
    .Y(_1123_)
);

OAI21X1 _4383_ (
    .A(_1125_),
    .B(\u_cpu.IRHOLD [4]),
    .C(_1340_),
    .Y(_1124_)
);

INVX4 _4384_ (
    .A(\u_cpu.IRHOLD_valid ),
    .Y(_1125_)
);

NAND2X1 _4385_ (
    .A(_1340_),
    .B(_1127_),
    .Y(_1126_)
);

OAI21X1 _4386_ (
    .A(\u_cpu.IRHOLD_valid ),
    .B(_1138_),
    .C(_1128_),
    .Y(_1127_)
);

NAND2X1 _4387_ (
    .A(\u_cpu.IRHOLD [5]),
    .B(\u_cpu.IRHOLD_valid ),
    .Y(_1128_)
);

NOR2X1 _4388_ (
    .A(_1196__bF$buf8),
    .B(_1345__bF$buf0),
    .Y(_1129_)
);

INVX1 _4389_ (
    .A(\u_cpu.cli ),
    .Y(_1130_)
);

OAI22X1 _4390_ (
    .A(RDY_bF$buf4),
    .B(_1141_),
    .C(_1132_),
    .D(_1131_),
    .Y(_1484_)
);

OAI21X1 _4391_ (
    .A(_1134_),
    .B(_1143_),
    .C(RDY_bF$buf3),
    .Y(_1131_)
);

NOR2X1 _4392_ (
    .A(_1133_),
    .B(_1144_),
    .Y(_1132_)
);

INVX1 _4393_ (
    .A(_1134_),
    .Y(_1133_)
);

AOI21X1 _4394_ (
    .A(\u_cpu.PC [13]),
    .B(_1269_),
    .C(_1135_),
    .Y(_1134_)
);

OAI21X1 _4395_ (
    .A(_1318_),
    .B(_1138_),
    .C(_1136_),
    .Y(_1135_)
);

AOI21X1 _4396_ (
    .A(_1206_),
    .B(\u_cpu.ABH [5]),
    .C(_1137_),
    .Y(_1136_)
);

OAI21X1 _4397_ (
    .A(_1287_),
    .B(_1349_),
    .C(_1315__bF$buf0),
    .Y(_1137_)
);

INVX2 _4398_ (
    .A(\u_cpu.DIMUX [5]),
    .Y(_1138_)
);

OAI21X1 _4399_ (
    .A(RDY_bF$buf2),
    .B(_1140_),
    .C(_1139_),
    .Y(\u_cpu.DIMUX [5])
);

NAND2X1 _4400_ (
    .A(RDY_bF$buf1),
    .B(Data_In[5]),
    .Y(_1139_)
);

INVX1 _4401_ (
    .A(\u_cpu.DIHOLD [5]),
    .Y(_1140_)
);

INVX1 _4402_ (
    .A(\u_cpu.PC [13]),
    .Y(_1141_)
);

OAI21X1 _4403_ (
    .A(RDY_bF$buf0),
    .B(_1154_),
    .C(_1142_),
    .Y(_1485_)
);

NAND3X1 _4404_ (
    .A(RDY_bF$buf7),
    .B(_1145_),
    .C(_1143_),
    .Y(_1142_)
);

INVX1 _4405_ (
    .A(_1144_),
    .Y(_1143_)
);

NOR3X1 _4406_ (
    .A(_1160_),
    .B(_1146_),
    .C(_1171_),
    .Y(_1144_)
);

OAI21X1 _4407_ (
    .A(_1160_),
    .B(_1171_),
    .C(_1146_),
    .Y(_1145_)
);

NOR2X1 _4408_ (
    .A(_1147_),
    .B(_1153_),
    .Y(_1146_)
);

OAI21X1 _4409_ (
    .A(_1318_),
    .B(_1150_),
    .C(_1148_),
    .Y(_1147_)
);

AOI21X1 _4410_ (
    .A(_1206_),
    .B(\u_cpu.ABH [4]),
    .C(_1149_),
    .Y(_1148_)
);

OAI21X1 _4411_ (
    .A(_1275_),
    .B(_1349_),
    .C(_1315__bF$buf3),
    .Y(_1149_)
);

INVX2 _4412_ (
    .A(\u_cpu.DIMUX [4]),
    .Y(_1150_)
);

OAI21X1 _4413_ (
    .A(RDY_bF$buf6),
    .B(_1152_),
    .C(_1151_),
    .Y(\u_cpu.DIMUX [4])
);

NAND2X1 _4414_ (
    .A(RDY_bF$buf5),
    .B(Data_In[4]),
    .Y(_1151_)
);

INVX1 _4415_ (
    .A(\u_cpu.DIHOLD [4]),
    .Y(_1152_)
);

NOR2X1 _4416_ (
    .A(_1154_),
    .B(_1183_),
    .Y(_1153_)
);

INVX1 _4417_ (
    .A(\u_cpu.PC [12]),
    .Y(_1154_)
);

OAI21X1 _4418_ (
    .A(RDY_bF$buf4),
    .B(_1169_),
    .C(_1155_),
    .Y(_1486_)
);

NAND3X1 _4419_ (
    .A(RDY_bF$buf3),
    .B(_1159_),
    .C(_1156_),
    .Y(_1155_)
);

NAND3X1 _4420_ (
    .A(_1172_),
    .B(_1157_),
    .C(_1158_),
    .Y(_1156_)
);

INVX1 _4421_ (
    .A(_1160_),
    .Y(_1157_)
);

NOR3X1 _4422_ (
    .A(_1201_),
    .B(_1188_),
    .C(_1212_),
    .Y(_1158_)
);

NAND2X1 _4423_ (
    .A(_1160_),
    .B(_1171_),
    .Y(_1159_)
);

NOR2X1 _4424_ (
    .A(_1161_),
    .B(_1168_),
    .Y(_1160_)
);

OAI21X1 _4425_ (
    .A(_1318_),
    .B(_1165_),
    .C(_1162_),
    .Y(_1161_)
);

AOI21X1 _4426_ (
    .A(_1206_),
    .B(\u_cpu.ABH [3]),
    .C(_1163_),
    .Y(_1162_)
);

OAI21X1 _4427_ (
    .A(_1164_),
    .B(_1349_),
    .C(_1315__bF$buf2),
    .Y(_1163_)
);

INVX1 _4428_ (
    .A(\u_cpu.ADD [3]),
    .Y(_1164_)
);

INVX2 _4429_ (
    .A(\u_cpu.DIMUX [3]),
    .Y(_1165_)
);

OAI21X1 _4430_ (
    .A(RDY_bF$buf2),
    .B(_1167_),
    .C(_1166_),
    .Y(\u_cpu.DIMUX [3])
);

NAND2X1 _4431_ (
    .A(RDY_bF$buf1),
    .B(Data_In[3]),
    .Y(_1166_)
);

INVX1 _4432_ (
    .A(\u_cpu.DIHOLD [3]),
    .Y(_1167_)
);

NOR2X1 _4433_ (
    .A(_1169_),
    .B(_1183_),
    .Y(_1168_)
);

INVX1 _4434_ (
    .A(\u_cpu.PC [11]),
    .Y(_1169_)
);

AOI21X1 _4435_ (
    .A(_1196__bF$buf7),
    .B(_1184_),
    .C(_1170_),
    .Y(_1487_)
);

AOI21X1 _4436_ (
    .A(_1173_),
    .B(_1171_),
    .C(_1196__bF$buf6),
    .Y(_1170_)
);

NAND3X1 _4437_ (
    .A(_1187_),
    .B(_1172_),
    .C(_1199_),
    .Y(_1171_)
);

INVX1 _4438_ (
    .A(_1174_),
    .Y(_1172_)
);

OAI21X1 _4439_ (
    .A(_1188_),
    .B(_1198_),
    .C(_1174_),
    .Y(_1173_)
);

NOR2X1 _4440_ (
    .A(_1175_),
    .B(_1182_),
    .Y(_1174_)
);

OAI21X1 _4441_ (
    .A(_1318_),
    .B(_1179_),
    .C(_1176_),
    .Y(_1175_)
);

AOI21X1 _4442_ (
    .A(_1206_),
    .B(\u_cpu.ABH [2]),
    .C(_1177_),
    .Y(_1176_)
);

OAI21X1 _4443_ (
    .A(_1178_),
    .B(_1349_),
    .C(_1315__bF$buf1),
    .Y(_1177_)
);

INVX1 _4444_ (
    .A(\u_cpu.ADD [2]),
    .Y(_1178_)
);

INVX2 _4445_ (
    .A(\u_cpu.DIMUX [2]),
    .Y(_1179_)
);

OAI21X1 _4446_ (
    .A(RDY_bF$buf0),
    .B(_1181_),
    .C(_1180_),
    .Y(\u_cpu.DIMUX [2])
);

NAND2X1 _4447_ (
    .A(RDY_bF$buf7),
    .B(Data_In[2]),
    .Y(_1180_)
);

INVX1 _4448_ (
    .A(\u_cpu.DIHOLD [2]),
    .Y(_1181_)
);

NOR2X1 _4449_ (
    .A(_1184_),
    .B(_1183_),
    .Y(_1182_)
);

INVX1 _4450_ (
    .A(_1269_),
    .Y(_1183_)
);

INVX1 _4451_ (
    .A(\u_cpu.PC [10]),
    .Y(_1184_)
);

OAI21X1 _4452_ (
    .A(_1186_),
    .B(_1185_),
    .C(_1195_),
    .Y(_1488_)
);

OAI21X1 _4453_ (
    .A(_1188_),
    .B(_1198_),
    .C(RDY_bF$buf6),
    .Y(_1185_)
);

NOR2X1 _4454_ (
    .A(_1187_),
    .B(_1199_),
    .Y(_1186_)
);

INVX1 _4455_ (
    .A(_1188_),
    .Y(_1187_)
);

AOI21X1 _4456_ (
    .A(\u_cpu.PC [9]),
    .B(_1269_),
    .C(_1189_),
    .Y(_1188_)
);

OAI21X1 _4457_ (
    .A(_1318_),
    .B(_1192_),
    .C(_1190_),
    .Y(_1189_)
);

AOI21X1 _4458_ (
    .A(_1206_),
    .B(\u_cpu.ABH [1]),
    .C(_1191_),
    .Y(_1190_)
);

OAI21X1 _4459_ (
    .A(_1221_),
    .B(_1349_),
    .C(_1315__bF$buf0),
    .Y(_1191_)
);

INVX2 _4460_ (
    .A(\u_cpu.DIMUX [1]),
    .Y(_1192_)
);

OAI21X1 _4461_ (
    .A(RDY_bF$buf5),
    .B(_1194_),
    .C(_1193_),
    .Y(\u_cpu.DIMUX [1])
);

NAND2X1 _4462_ (
    .A(RDY_bF$buf4),
    .B(Data_In[1]),
    .Y(_1193_)
);

INVX1 _4463_ (
    .A(\u_cpu.DIHOLD [1]),
    .Y(_1194_)
);

NAND2X1 _4464_ (
    .A(\u_cpu.PC [9]),
    .B(_1196__bF$buf5),
    .Y(_1195_)
);

INVX8 _4465_ (
    .A(RDY_bF$buf3),
    .Y(_1196_)
);

OAI21X1 _4466_ (
    .A(RDY_bF$buf2),
    .B(_1210_),
    .C(_1197_),
    .Y(_1489_)
);

NAND3X1 _4467_ (
    .A(RDY_bF$buf1),
    .B(_1200_),
    .C(_1198_),
    .Y(_1197_)
);

INVX1 _4468_ (
    .A(_1199_),
    .Y(_1198_)
);

NOR3X1 _4469_ (
    .A(_1293_),
    .B(_1201_),
    .C(_1224_),
    .Y(_1199_)
);

OAI21X1 _4470_ (
    .A(_1293_),
    .B(_1224_),
    .C(_1201_),
    .Y(_1200_)
);

AOI21X1 _4471_ (
    .A(\u_cpu.PC [8]),
    .B(_1269_),
    .C(_1202_),
    .Y(_1201_)
);

OAI21X1 _4472_ (
    .A(_1318_),
    .B(_1207_),
    .C(_1203_),
    .Y(_1202_)
);

AOI21X1 _4473_ (
    .A(_1206_),
    .B(\u_cpu.ABH [0]),
    .C(_1204_),
    .Y(_1203_)
);

OAI21X1 _4474_ (
    .A(_1205_),
    .B(_1349_),
    .C(_1315__bF$buf3),
    .Y(_1204_)
);

INVX1 _4475_ (
    .A(\u_cpu.ADD [0]),
    .Y(_1205_)
);

OAI21X1 _4476_ (
    .A(_1345__bF$buf3),
    .B(_1340_),
    .C(_1333_),
    .Y(_1206_)
);

INVX2 _4477_ (
    .A(\u_cpu.DIMUX [0]),
    .Y(_1207_)
);

OAI21X1 _4478_ (
    .A(RDY_bF$buf0),
    .B(_1209_),
    .C(_1208_),
    .Y(\u_cpu.DIMUX [0])
);

NAND2X1 _4479_ (
    .A(RDY_bF$buf7),
    .B(Data_In[0]),
    .Y(_1208_)
);

INVX1 _4480_ (
    .A(\u_cpu.DIHOLD [0]),
    .Y(_1209_)
);

INVX1 _4481_ (
    .A(\u_cpu.PC [8]),
    .Y(_1210_)
);

OAI21X1 _4482_ (
    .A(_1355_),
    .B(RDY_bF$buf6),
    .C(_1211_),
    .Y(_1490_)
);

NAND3X1 _4483_ (
    .A(RDY_bF$buf5),
    .B(_1223_),
    .C(_1212_),
    .Y(_1211_)
);

NAND3X1 _4484_ (
    .A(_1294_),
    .B(_1288_),
    .C(_1213_),
    .Y(_1212_)
);

NOR3X1 _4485_ (
    .A(_1277_),
    .B(_1271_),
    .C(_1214_),
    .Y(_1213_)
);

NAND3X1 _4486_ (
    .A(_1222_),
    .B(_1258_),
    .C(_1215_),
    .Y(_1214_)
);

NOR3X1 _4487_ (
    .A(_1218_),
    .B(_1219_),
    .C(_1216_),
    .Y(_1215_)
);

AOI21X1 _4488_ (
    .A(_1311_),
    .B(\u_cpu.PC [0]),
    .C(_1217_),
    .Y(_1216_)
);

INVX1 _4489_ (
    .A(_1228_),
    .Y(_1217_)
);

AND2X2 _4490_ (
    .A(_1230_),
    .B(_1243_),
    .Y(_1218_)
);

AOI21X1 _4491_ (
    .A(_1311_),
    .B(\u_cpu.PC [1]),
    .C(_1220_),
    .Y(_1219_)
);

OAI21X1 _4492_ (
    .A(_1221_),
    .B(_1282_),
    .C(_1254_),
    .Y(_1220_)
);

INVX1 _4493_ (
    .A(\u_cpu.ADD [1]),
    .Y(_1221_)
);

INVX1 _4494_ (
    .A(_1264_),
    .Y(_1222_)
);

NAND2X1 _4495_ (
    .A(_1293_),
    .B(_1224_),
    .Y(_1223_)
);

NAND3X1 _4496_ (
    .A(_1288_),
    .B(_1276_),
    .C(_1225_),
    .Y(_1224_)
);

NOR3X1 _4497_ (
    .A(_1271_),
    .B(_1264_),
    .C(_1226_),
    .Y(_1225_)
);

NAND3X1 _4498_ (
    .A(_1258_),
    .B(_1253_),
    .C(_1227_),
    .Y(_1226_)
);

AOI22X1 _4499_ (
    .A(_1243_),
    .B(_1230_),
    .C(_1229_),
    .D(_1228_),
    .Y(_1227_)
);

AOI22X1 _4500_ (
    .A(\u_cpu.ABL [0]),
    .B(_1298_),
    .C(_1300_),
    .D(\u_cpu.ADD [0]),
    .Y(_1228_)
);

OAI21X1 _4501_ (
    .A(_1270_),
    .B(_1269_),
    .C(\u_cpu.PC [0]),
    .Y(_1229_)
);

NOR2X1 _4502_ (
    .A(_1240_),
    .B(_1231_),
    .Y(_1230_)
);

NAND3X1 _4503_ (
    .A(_1239_),
    .B(_1235_),
    .C(_1232_),
    .Y(_1231_)
);

NAND2X1 _4504_ (
    .A(_1350_),
    .B(_1233_),
    .Y(_1232_)
);

NOR2X1 _4505_ (
    .A(_1234_),
    .B(_1237_),
    .Y(_1233_)
);

INVX1 _4506_ (
    .A(_1346_),
    .Y(_1234_)
);

NAND2X1 _4507_ (
    .A(_1350_),
    .B(_1236_),
    .Y(_1235_)
);

NOR2X1 _4508_ (
    .A(_1335_),
    .B(_1237_),
    .Y(_1236_)
);

INVX1 _4509_ (
    .A(_1238_),
    .Y(_1237_)
);

NOR2X1 _4510_ (
    .A(\u_cpu.state [2]),
    .B(\u_cpu.state [3]),
    .Y(_1238_)
);

NAND2X1 _4511_ (
    .A(_1327_),
    .B(_1308_),
    .Y(_1239_)
);

OAI21X1 _4512_ (
    .A(_1350_),
    .B(_1320_),
    .C(_1241_),
    .Y(_1240_)
);

NAND2X1 _4513_ (
    .A(_1350_),
    .B(_1242_),
    .Y(_1241_)
);

NOR2X1 _4514_ (
    .A(_1352_),
    .B(_1304_),
    .Y(_1242_)
);

NOR2X1 _4515_ (
    .A(_1249_),
    .B(_1244_),
    .Y(_1243_)
);

OAI21X1 _4516_ (
    .A(_1345__bF$buf2),
    .B(_1341_),
    .C(_1245_),
    .Y(_1244_)
);

NAND3X1 _4517_ (
    .A(_1350_),
    .B(_1246_),
    .C(_1334_),
    .Y(_1245_)
);

NAND2X1 _4518_ (
    .A(_1248_),
    .B(_1247_),
    .Y(_1246_)
);

OR2X2 _4519_ (
    .A(\u_cpu.backwards ),
    .B(\u_cpu.CO ),
    .Y(_1247_)
);

NAND2X1 _4520_ (
    .A(\u_cpu.backwards ),
    .B(\u_cpu.CO ),
    .Y(_1248_)
);

OAI21X1 _4521_ (
    .A(\u_cpu.state [5]),
    .B(_1252_),
    .C(_1250_),
    .Y(_1249_)
);

NAND2X1 _4522_ (
    .A(_1350_),
    .B(_1251_),
    .Y(_1250_)
);

NOR2X1 _4523_ (
    .A(_1337_),
    .B(_1309_),
    .Y(_1251_)
);

INVX2 _4524_ (
    .A(_1306_),
    .Y(_1252_)
);

NAND3X1 _4525_ (
    .A(_1256_),
    .B(_1254_),
    .C(_1257_),
    .Y(_1253_)
);

AOI22X1 _4526_ (
    .A(_1274_),
    .B(_1255_),
    .C(\u_cpu.ABL [1]),
    .D(_1298_),
    .Y(_1254_)
);

INVX1 _4527_ (
    .A(\u_cpu.res ),
    .Y(_1255_)
);

OAI21X1 _4528_ (
    .A(_1286_),
    .B(_1283_),
    .C(\u_cpu.ADD [1]),
    .Y(_1256_)
);

OAI21X1 _4529_ (
    .A(_1270_),
    .B(_1269_),
    .C(\u_cpu.PC [1]),
    .Y(_1257_)
);

NAND2X1 _4530_ (
    .A(_1259_),
    .B(_1263_),
    .Y(_1258_)
);

AOI21X1 _4531_ (
    .A(\u_cpu.ADD [2]),
    .B(_1300_),
    .C(_1260_),
    .Y(_1259_)
);

OAI21X1 _4532_ (
    .A(_1262_),
    .B(_1297_),
    .C(_1261_),
    .Y(_1260_)
);

OAI21X1 _4533_ (
    .A(_1343_),
    .B(\u_cpu.res ),
    .C(_1274_),
    .Y(_1261_)
);

INVX1 _4534_ (
    .A(\u_cpu.ABL [2]),
    .Y(_1262_)
);

OAI21X1 _4535_ (
    .A(_1270_),
    .B(_1269_),
    .C(\u_cpu.PC [2]),
    .Y(_1263_)
);

AND2X2 _4536_ (
    .A(_1268_),
    .B(_1265_),
    .Y(_1264_)
);

AOI21X1 _4537_ (
    .A(_1300_),
    .B(\u_cpu.ADD [3]),
    .C(_1266_),
    .Y(_1265_)
);

OAI21X1 _4538_ (
    .A(_1267_),
    .B(_1297_),
    .C(_1315__bF$buf2),
    .Y(_1266_)
);

INVX1 _4539_ (
    .A(\u_cpu.ABL [3]),
    .Y(_1267_)
);

OAI21X1 _4540_ (
    .A(_1270_),
    .B(_1269_),
    .C(\u_cpu.PC [3]),
    .Y(_1268_)
);

OAI21X1 _4541_ (
    .A(_1314_),
    .B(_1300_),
    .C(_1339_),
    .Y(_1269_)
);

INVX2 _4542_ (
    .A(_1349_),
    .Y(_1270_)
);

AOI21X1 _4543_ (
    .A(_1311_),
    .B(\u_cpu.PC [4]),
    .C(_1272_),
    .Y(_1271_)
);

OAI21X1 _4544_ (
    .A(_1275_),
    .B(_1282_),
    .C(_1273_),
    .Y(_1272_)
);

AOI21X1 _4545_ (
    .A(_1298_),
    .B(\u_cpu.ABL [4]),
    .C(_1274_),
    .Y(_1273_)
);

INVX2 _4546_ (
    .A(_1315__bF$buf1),
    .Y(_1274_)
);

INVX1 _4547_ (
    .A(\u_cpu.ADD [4]),
    .Y(_1275_)
);

INVX1 _4548_ (
    .A(_1277_),
    .Y(_1276_)
);

AOI21X1 _4549_ (
    .A(_1311_),
    .B(\u_cpu.PC [5]),
    .C(_1278_),
    .Y(_1277_)
);

OAI21X1 _4550_ (
    .A(_1287_),
    .B(_1282_),
    .C(_1279_),
    .Y(_1278_)
);

INVX1 _4551_ (
    .A(_1280_),
    .Y(_1279_)
);

OAI21X1 _4552_ (
    .A(_1281_),
    .B(_1297_),
    .C(_1315__bF$buf0),
    .Y(_1280_)
);

INVX1 _4553_ (
    .A(\u_cpu.ABL [5]),
    .Y(_1281_)
);

NOR2X1 _4554_ (
    .A(_1286_),
    .B(_1283_),
    .Y(_1282_)
);

NAND3X1 _4555_ (
    .A(_1323_),
    .B(_1307_),
    .C(_1284_),
    .Y(_1283_)
);

NAND3X1 _4556_ (
    .A(_1305__bF$buf2),
    .B(_1321_),
    .C(_1285_),
    .Y(_1284_)
);

NOR2X1 _4557_ (
    .A(_1309_),
    .B(_1304_),
    .Y(_1285_)
);

INVX4 _4558_ (
    .A(_1333_),
    .Y(_1286_)
);

INVX1 _4559_ (
    .A(\u_cpu.ADD [5]),
    .Y(_1287_)
);

OAI21X1 _4560_ (
    .A(_1292_),
    .B(_1310_),
    .C(_1289_),
    .Y(_1288_)
);

AOI21X1 _4561_ (
    .A(_1300_),
    .B(\u_cpu.ADD [6]),
    .C(_1290_),
    .Y(_1289_)
);

OAI21X1 _4562_ (
    .A(_1291_),
    .B(_1297_),
    .C(_1315__bF$buf3),
    .Y(_1290_)
);

INVX1 _4563_ (
    .A(\u_cpu.ABL [6]),
    .Y(_1291_)
);

INVX1 _4564_ (
    .A(\u_cpu.PC [6]),
    .Y(_1292_)
);

INVX1 _4565_ (
    .A(_1294_),
    .Y(_1293_)
);

OAI21X1 _4566_ (
    .A(_1355_),
    .B(_1310_),
    .C(_1295_),
    .Y(_1294_)
);

AOI21X1 _4567_ (
    .A(_1300_),
    .B(\u_cpu.AN ),
    .C(_1296_),
    .Y(_1295_)
);

OAI21X1 _4568_ (
    .A(_1299_),
    .B(_1297_),
    .C(_1315__bF$buf2),
    .Y(_1296_)
);

INVX2 _4569_ (
    .A(_1298_),
    .Y(_1297_)
);

NOR2X1 _4570_ (
    .A(_1345__bF$buf1),
    .B(_1340_),
    .Y(_1298_)
);

INVX1 _4571_ (
    .A(\u_cpu.ABL [7]),
    .Y(_1299_)
);

NAND3X1 _4572_ (
    .A(_1333_),
    .B(_1307_),
    .C(_1301_),
    .Y(_1300_)
);

AOI22X1 _4573_ (
    .A(_1306_),
    .B(_1326_),
    .C(_1302_),
    .D(_1305__bF$buf1),
    .Y(_1301_)
);

NOR3X1 _4574_ (
    .A(_1303_),
    .B(_1309_),
    .C(_1304_),
    .Y(_1302_)
);

AND2X2 _4575_ (
    .A(\u_cpu.state [4]),
    .B(\u_cpu.state [5]),
    .Y(_1303_)
);

NAND2X1 _4576_ (
    .A(\u_cpu.state [3]),
    .B(_1354_),
    .Y(_1304_)
);

INVX8 _4577_ (
    .A(_1350_),
    .Y(_1305_)
);

NOR2X1 _4578_ (
    .A(_1352_),
    .B(_1337_),
    .Y(_1306_)
);

OAI21X1 _4579_ (
    .A(_1329_),
    .B(_1326_),
    .C(_1308_),
    .Y(_1307_)
);

NOR2X1 _4580_ (
    .A(_1348_),
    .B(_1309_),
    .Y(_1308_)
);

NAND2X1 _4581_ (
    .A(\u_cpu.state [0]),
    .B(_1317_),
    .Y(_1309_)
);

INVX1 _4582_ (
    .A(_1311_),
    .Y(_1310_)
);

NAND3X1 _4583_ (
    .A(_1349_),
    .B(_1339_),
    .C(_1312_),
    .Y(_1311_)
);

NAND3X1 _4584_ (
    .A(_1333_),
    .B(_1313_),
    .C(_1318_),
    .Y(_1312_)
);

INVX1 _4585_ (
    .A(_1314_),
    .Y(_1313_)
);

NAND3X1 _4586_ (
    .A(_1345__bF$buf0),
    .B(_1349_),
    .C(_1315__bF$buf1),
    .Y(_1314_)
);

NAND3X1 _4587_ (
    .A(_1350_),
    .B(_1316_),
    .C(_1322_),
    .Y(_1315_)
);

NOR2X1 _4588_ (
    .A(\u_cpu.state [0]),
    .B(_1317_),
    .Y(_1316_)
);

INVX1 _4589_ (
    .A(\u_cpu.state [1]),
    .Y(_1317_)
);

NOR2X1 _4590_ (
    .A(_1324_),
    .B(_1319_),
    .Y(_1318_)
);

OAI21X1 _4591_ (
    .A(_1350_),
    .B(_1320_),
    .C(_1323_),
    .Y(_1319_)
);

NAND3X1 _4592_ (
    .A(_1321_),
    .B(_1332_),
    .C(_1322_),
    .Y(_1320_)
);

NAND2X1 _4593_ (
    .A(\u_cpu.state [4]),
    .B(\u_cpu.state [5]),
    .Y(_1321_)
);

NOR2X1 _4594_ (
    .A(\u_cpu.state [2]),
    .B(_1338_),
    .Y(_1322_)
);

NAND3X1 _4595_ (
    .A(_1351_),
    .B(_1353_),
    .C(_1326_),
    .Y(_1323_)
);

AOI21X1 _4596_ (
    .A(_1328__bF$buf4),
    .B(_1325__bF$buf4),
    .C(_1331_),
    .Y(_1324_)
);

INVX8 _4597_ (
    .A(_1326_),
    .Y(_1325_)
);

NOR2X1 _4598_ (
    .A(\u_cpu.state [5]),
    .B(_1327_),
    .Y(_1326_)
);

INVX2 _4599_ (
    .A(\u_cpu.state [4]),
    .Y(_1327_)
);

INVX8 _4600_ (
    .A(_1329_),
    .Y(_1328_)
);

NOR2X1 _4601_ (
    .A(\u_cpu.state [4]),
    .B(_1330_),
    .Y(_1329_)
);

INVX1 _4602_ (
    .A(\u_cpu.state [5]),
    .Y(_1330_)
);

NAND2X1 _4603_ (
    .A(_1347_),
    .B(_1332_),
    .Y(_1331_)
);

NOR2X1 _4604_ (
    .A(\u_cpu.state [1]),
    .B(_1336_),
    .Y(_1332_)
);

NAND2X1 _4605_ (
    .A(_1350_),
    .B(_1334_),
    .Y(_1333_)
);

NOR2X1 _4606_ (
    .A(_1337_),
    .B(_1335_),
    .Y(_1334_)
);

NAND2X1 _4607_ (
    .A(\u_cpu.state [1]),
    .B(_1336_),
    .Y(_1335_)
);

INVX1 _4608_ (
    .A(\u_cpu.state [0]),
    .Y(_1336_)
);

NAND2X1 _4609_ (
    .A(\u_cpu.state [2]),
    .B(_1338_),
    .Y(_1337_)
);

INVX1 _4610_ (
    .A(\u_cpu.state [3]),
    .Y(_1338_)
);

NAND2X1 _4611_ (
    .A(_1340_),
    .B(_1344_),
    .Y(_1339_)
);

INVX2 _4612_ (
    .A(_1341_),
    .Y(_1340_)
);

OAI21X1 _4613_ (
    .A(\u_cpu.I ),
    .B(_1342_),
    .C(_1343_),
    .Y(_1341_)
);

INVX1 _4614_ (
    .A(IRQ),
    .Y(_1342_)
);

INVX1 _4615_ (
    .A(\u_cpu.NMI_edge ),
    .Y(_1343_)
);

INVX2 _4616_ (
    .A(_1345__bF$buf3),
    .Y(_1344_)
);

NAND3X1 _4617_ (
    .A(_1350_),
    .B(_1346_),
    .C(_1347_),
    .Y(_1345_)
);

NOR2X1 _4618_ (
    .A(\u_cpu.state [1]),
    .B(\u_cpu.state [0]),
    .Y(_1346_)
);

INVX1 _4619_ (
    .A(_1348_),
    .Y(_1347_)
);

NAND2X1 _4620_ (
    .A(\u_cpu.state [2]),
    .B(\u_cpu.state [3]),
    .Y(_1348_)
);

NAND3X1 _4621_ (
    .A(_1351_),
    .B(_1350_),
    .C(_1353_),
    .Y(_1349_)
);

NOR2X1 _4622_ (
    .A(\u_cpu.state [4]),
    .B(\u_cpu.state [5]),
    .Y(_1350_)
);

INVX1 _4623_ (
    .A(_1352_),
    .Y(_1351_)
);

NAND2X1 _4624_ (
    .A(\u_cpu.state [1]),
    .B(\u_cpu.state [0]),
    .Y(_1352_)
);

NOR2X1 _4625_ (
    .A(\u_cpu.state [3]),
    .B(_1354_),
    .Y(_1353_)
);

INVX1 _4626_ (
    .A(\u_cpu.state [2]),
    .Y(_1354_)
);

INVX1 _4627_ (
    .A(\u_cpu.PC [7]),
    .Y(_1355_)
);

INVX4 _4628_ (
    .A(RDY_bF$buf4),
    .Y(_1681_)
);

NAND2X1 _4629_ (
    .A(\u_cpu.ADD [6]),
    .B(_1681__bF$buf3),
    .Y(_1682_)
);

INVX1 _4630_ (
    .A(\u_cpu.AI [6]),
    .Y(_1683_)
);

INVX4 _4631_ (
    .A(\u_cpu.alu_shift_right ),
    .Y(_1684_)
);

INVX1 _4632_ (
    .A(\u_cpu.BI [5]),
    .Y(_1685_)
);

NOR2X1 _4633_ (
    .A(\u_cpu.alu_op [0]),
    .B(_1685_),
    .Y(_1686_)
);

INVX1 _4634_ (
    .A(\u_cpu.alu_op [0]),
    .Y(_1687_)
);

NOR2X1 _4635_ (
    .A(\u_cpu.alu_op [1]),
    .B(_1687_),
    .Y(_1688_)
);

INVX2 _4636_ (
    .A(\u_cpu.alu_op [1]),
    .Y(_1689_)
);

INVX1 _4637_ (
    .A(\u_cpu.AI [5]),
    .Y(_1690_)
);

OAI21X1 _4638_ (
    .A(_1689_),
    .B(_1690_),
    .C(\u_cpu.BI [5]),
    .Y(_1691_)
);

OAI21X1 _4639_ (
    .A(_1686_),
    .B(_1688_),
    .C(_1691_),
    .Y(_1692_)
);

OAI21X1 _4640_ (
    .A(\u_cpu.alu_op [0]),
    .B(_1685_),
    .C(_1690_),
    .Y(_1693_)
);

NAND3X1 _4641_ (
    .A(_1684_),
    .B(_1693_),
    .C(_1692_),
    .Y(_1694_)
);

OAI21X1 _4642_ (
    .A(_1683_),
    .B(_1684_),
    .C(_1694_),
    .Y(_1695_)
);

INVX2 _4643_ (
    .A(\u_cpu.alu_op [3]),
    .Y(_1696_)
);

NOR2X1 _4644_ (
    .A(\u_cpu.alu_op [2]),
    .B(_1696_),
    .Y(_1697_)
);

NOR2X1 _4645_ (
    .A(\u_cpu.alu_op [3]),
    .B(\u_cpu.alu_op [2]),
    .Y(_1698_)
);

INVX2 _4646_ (
    .A(\u_cpu.alu_op [2]),
    .Y(_1699_)
);

OAI21X1 _4647_ (
    .A(\u_cpu.alu_op [3]),
    .B(_1699_),
    .C(_1685_),
    .Y(_1700_)
);

OAI21X1 _4648_ (
    .A(_1685_),
    .B(_1698_),
    .C(_1700_),
    .Y(_1701_)
);

INVX1 _4649_ (
    .A(_1701_),
    .Y(_1702_)
);

OAI21X1 _4650_ (
    .A(_1697_),
    .B(_1702_),
    .C(_1695_),
    .Y(_1703_)
);

INVX1 _4651_ (
    .A(\u_cpu.BI [4]),
    .Y(_1704_)
);

NOR2X1 _4652_ (
    .A(\u_cpu.alu_op [0]),
    .B(_1704_),
    .Y(_1705_)
);

INVX1 _4653_ (
    .A(\u_cpu.AI [4]),
    .Y(_1706_)
);

OAI21X1 _4654_ (
    .A(_1689_),
    .B(_1706_),
    .C(\u_cpu.BI [4]),
    .Y(_1707_)
);

OAI21X1 _4655_ (
    .A(_1688_),
    .B(_1705_),
    .C(_1707_),
    .Y(_1708_)
);

OAI21X1 _4656_ (
    .A(\u_cpu.alu_op [0]),
    .B(_1704_),
    .C(_1706_),
    .Y(_1709_)
);

NAND3X1 _4657_ (
    .A(_1684_),
    .B(_1709_),
    .C(_1708_),
    .Y(_1710_)
);

OAI21X1 _4658_ (
    .A(_1684_),
    .B(_1690_),
    .C(_1710_),
    .Y(_1711_)
);

OAI21X1 _4659_ (
    .A(\u_cpu.alu_op [3]),
    .B(_1699_),
    .C(_1704_),
    .Y(_1712_)
);

OAI21X1 _4660_ (
    .A(_1704_),
    .B(_1698_),
    .C(_1712_),
    .Y(_1713_)
);

OAI21X1 _4661_ (
    .A(_1696_),
    .B(\u_cpu.alu_op [2]),
    .C(_1713_),
    .Y(_1714_)
);

INVX1 _4662_ (
    .A(\u_cpu.AI [3]),
    .Y(_1715_)
);

INVX1 _4663_ (
    .A(\u_cpu.BI [2]),
    .Y(_1716_)
);

NOR2X1 _4664_ (
    .A(\u_cpu.alu_op [0]),
    .B(_1716_),
    .Y(_1717_)
);

INVX1 _4665_ (
    .A(\u_cpu.AI [2]),
    .Y(_1718_)
);

OAI21X1 _4666_ (
    .A(_1689_),
    .B(_1718_),
    .C(\u_cpu.BI [2]),
    .Y(_1719_)
);

OAI21X1 _4667_ (
    .A(_1688_),
    .B(_1717_),
    .C(_1719_),
    .Y(_1720_)
);

OAI21X1 _4668_ (
    .A(\u_cpu.alu_op [0]),
    .B(_1716_),
    .C(_1718_),
    .Y(_1721_)
);

NAND3X1 _4669_ (
    .A(_1684_),
    .B(_1721_),
    .C(_1720_),
    .Y(_1722_)
);

OAI21X1 _4670_ (
    .A(_1684_),
    .B(_1715_),
    .C(_1722_),
    .Y(_1723_)
);

OAI21X1 _4671_ (
    .A(\u_cpu.alu_op [3]),
    .B(_1699_),
    .C(_1716_),
    .Y(_1724_)
);

OAI21X1 _4672_ (
    .A(_1716_),
    .B(_1698_),
    .C(_1724_),
    .Y(_1725_)
);

INVX1 _4673_ (
    .A(_1725_),
    .Y(_1726_)
);

OAI21X1 _4674_ (
    .A(_1697_),
    .B(_1726_),
    .C(_1723_),
    .Y(_1727_)
);

INVX1 _4675_ (
    .A(_1727_),
    .Y(_1728_)
);

INVX1 _4676_ (
    .A(\u_cpu.BI [1]),
    .Y(_1729_)
);

MUX2X1 _4677_ (
    .A(\u_cpu.alu_op [1]),
    .B(_1729_),
    .S(\u_cpu.alu_op [0]),
    .Y(_1730_)
);

INVX1 _4678_ (
    .A(\u_cpu.AI [1]),
    .Y(_1731_)
);

OAI21X1 _4679_ (
    .A(_1689_),
    .B(_1731_),
    .C(\u_cpu.BI [1]),
    .Y(_1732_)
);

NAND2X1 _4680_ (
    .A(_1732_),
    .B(_1730_),
    .Y(_1733_)
);

OAI21X1 _4681_ (
    .A(\u_cpu.alu_op [0]),
    .B(_1729_),
    .C(_1731_),
    .Y(_1734_)
);

AND2X2 _4682_ (
    .A(_1734_),
    .B(_1684_),
    .Y(_1735_)
);

AOI22X1 _4683_ (
    .A(\u_cpu.alu_shift_right ),
    .B(\u_cpu.AI [2]),
    .C(_1735_),
    .D(_1733_),
    .Y(_1736_)
);

OAI21X1 _4684_ (
    .A(\u_cpu.alu_op [3]),
    .B(_1699_),
    .C(_1729_),
    .Y(_1737_)
);

OAI21X1 _4685_ (
    .A(_1729_),
    .B(_1698_),
    .C(_1737_),
    .Y(_1738_)
);

OAI21X1 _4686_ (
    .A(_1696_),
    .B(\u_cpu.alu_op [2]),
    .C(_1738_),
    .Y(_1739_)
);

INVX1 _4687_ (
    .A(_1739_),
    .Y(_1740_)
);

OR2X2 _4688_ (
    .A(_1740_),
    .B(_1736_),
    .Y(_1741_)
);

NAND2X1 _4689_ (
    .A(\u_cpu.alu_shift_right ),
    .B(\u_cpu.AI [1]),
    .Y(_1742_)
);

NAND2X1 _4690_ (
    .A(\u_cpu.alu_op [0]),
    .B(_1689_),
    .Y(_1743_)
);

NAND2X1 _4691_ (
    .A(\u_cpu.BI [0]),
    .B(_1687_),
    .Y(_1744_)
);

NAND2X1 _4692_ (
    .A(\u_cpu.alu_op [1]),
    .B(\u_cpu.AI [0]),
    .Y(_1745_)
);

AOI22X1 _4693_ (
    .A(\u_cpu.BI [0]),
    .B(_1745_),
    .C(_1743_),
    .D(_1744_),
    .Y(_1746_)
);

INVX1 _4694_ (
    .A(\u_cpu.BI [0]),
    .Y(_1747_)
);

INVX1 _4695_ (
    .A(\u_cpu.AI [0]),
    .Y(_1748_)
);

OAI21X1 _4696_ (
    .A(\u_cpu.alu_op [0]),
    .B(_1747_),
    .C(_1748_),
    .Y(_1749_)
);

NAND2X1 _4697_ (
    .A(_1684_),
    .B(_1749_),
    .Y(_1750_)
);

OAI21X1 _4698_ (
    .A(_1746_),
    .B(_1750_),
    .C(_1742_),
    .Y(_1751_)
);

OAI21X1 _4699_ (
    .A(\u_cpu.alu_op [3]),
    .B(_1699_),
    .C(_1747_),
    .Y(_1752_)
);

OAI21X1 _4700_ (
    .A(_1747_),
    .B(_1698_),
    .C(_1752_),
    .Y(_1753_)
);

OAI21X1 _4701_ (
    .A(_1696_),
    .B(\u_cpu.alu_op [2]),
    .C(_1753_),
    .Y(_1754_)
);

NAND2X1 _4702_ (
    .A(\u_cpu.alu_op [3]),
    .B(\u_cpu.alu_op [2]),
    .Y(_1755_)
);

NAND3X1 _4703_ (
    .A(\u_cpu.CI ),
    .B(_1684_),
    .C(_1755_),
    .Y(_1756_)
);

INVX1 _4704_ (
    .A(_1756_),
    .Y(_1757_)
);

MUX2X1 _4705_ (
    .A(\u_cpu.alu_op [1]),
    .B(_1747_),
    .S(\u_cpu.alu_op [0]),
    .Y(_1758_)
);

NAND2X1 _4706_ (
    .A(\u_cpu.BI [0]),
    .B(_1745_),
    .Y(_1759_)
);

NAND2X1 _4707_ (
    .A(_1759_),
    .B(_1758_),
    .Y(_1760_)
);

AOI21X1 _4708_ (
    .A(_1744_),
    .B(_1748_),
    .C(\u_cpu.alu_shift_right ),
    .Y(_1761_)
);

NAND2X1 _4709_ (
    .A(_1761_),
    .B(_1760_),
    .Y(_1762_)
);

NAND3X1 _4710_ (
    .A(_1742_),
    .B(_1753_),
    .C(_1762_),
    .Y(_1763_)
);

AOI22X1 _4711_ (
    .A(_1751_),
    .B(_1754_),
    .C(_1763_),
    .D(_1757_),
    .Y(_1764_)
);

NAND2X1 _4712_ (
    .A(\u_cpu.alu_shift_right ),
    .B(\u_cpu.AI [2]),
    .Y(_1765_)
);

NAND3X1 _4713_ (
    .A(_1684_),
    .B(_1734_),
    .C(_1733_),
    .Y(_1766_)
);

NAND3X1 _4714_ (
    .A(_1765_),
    .B(_1738_),
    .C(_1766_),
    .Y(_1767_)
);

OAI21X1 _4715_ (
    .A(_1736_),
    .B(_1740_),
    .C(_1767_),
    .Y(_1768_)
);

OAI21X1 _4716_ (
    .A(_1768_),
    .B(_1764_),
    .C(_1741_),
    .Y(_1769_)
);

OAI21X1 _4717_ (
    .A(_1696_),
    .B(\u_cpu.alu_op [2]),
    .C(_1725_),
    .Y(_1770_)
);

MUX2X1 _4718_ (
    .A(_1770_),
    .B(_1725_),
    .S(_1723_),
    .Y(_1771_)
);

AND2X2 _4719_ (
    .A(_1769_),
    .B(_1771_),
    .Y(_1772_)
);

INVX1 _4720_ (
    .A(\u_cpu.BI [3]),
    .Y(_1773_)
);

NOR2X1 _4721_ (
    .A(\u_cpu.alu_op [0]),
    .B(_1773_),
    .Y(_1774_)
);

OAI21X1 _4722_ (
    .A(_1689_),
    .B(_1715_),
    .C(\u_cpu.BI [3]),
    .Y(_1775_)
);

OAI21X1 _4723_ (
    .A(_1688_),
    .B(_1774_),
    .C(_1775_),
    .Y(_1776_)
);

NOR2X1 _4724_ (
    .A(\u_cpu.AI [3]),
    .B(_1774_),
    .Y(_1777_)
);

NOR2X1 _4725_ (
    .A(\u_cpu.alu_shift_right ),
    .B(_1777_),
    .Y(_1778_)
);

AOI22X1 _4726_ (
    .A(\u_cpu.alu_shift_right ),
    .B(\u_cpu.AI [4]),
    .C(_1778_),
    .D(_1776_),
    .Y(_1779_)
);

INVX1 _4727_ (
    .A(_1697_),
    .Y(_1780_)
);

OAI21X1 _4728_ (
    .A(\u_cpu.alu_op [3]),
    .B(_1699_),
    .C(_1773_),
    .Y(_1781_)
);

OAI21X1 _4729_ (
    .A(_1773_),
    .B(_1698_),
    .C(_1781_),
    .Y(_1782_)
);

AND2X2 _4730_ (
    .A(_1782_),
    .B(_1780_),
    .Y(_1783_)
);

NAND2X1 _4731_ (
    .A(_1782_),
    .B(_1779_),
    .Y(_1784_)
);

OAI21X1 _4732_ (
    .A(_1779_),
    .B(_1783_),
    .C(_1784_),
    .Y(_1785_)
);

INVX1 _4733_ (
    .A(_1785_),
    .Y(_1786_)
);

OAI21X1 _4734_ (
    .A(_1728_),
    .B(_1772_),
    .C(_1786_),
    .Y(_1787_)
);

NAND2X1 _4735_ (
    .A(_1771_),
    .B(_1769_),
    .Y(_1788_)
);

NAND3X1 _4736_ (
    .A(_1727_),
    .B(_1785_),
    .C(_1788_),
    .Y(_1789_)
);

NAND2X1 _4737_ (
    .A(_1789_),
    .B(_1787_),
    .Y(_1790_)
);

INVX1 _4738_ (
    .A(_1753_),
    .Y(_1791_)
);

OAI21X1 _4739_ (
    .A(_1697_),
    .B(_1791_),
    .C(_1751_),
    .Y(_1792_)
);

NOR2X1 _4740_ (
    .A(_1791_),
    .B(_1751_),
    .Y(_1793_)
);

OAI21X1 _4741_ (
    .A(_1756_),
    .B(_1793_),
    .C(_1792_),
    .Y(_1794_)
);

MUX2X1 _4742_ (
    .A(_1738_),
    .B(_1739_),
    .S(_1736_),
    .Y(_1795_)
);

NAND2X1 _4743_ (
    .A(_1795_),
    .B(_1794_),
    .Y(_1796_)
);

NAND3X1 _4744_ (
    .A(_1741_),
    .B(_1771_),
    .C(_1796_),
    .Y(_1797_)
);

OAI21X1 _4745_ (
    .A(_1723_),
    .B(_1726_),
    .C(_1727_),
    .Y(_1798_)
);

NAND2X1 _4746_ (
    .A(_1798_),
    .B(_1769_),
    .Y(_1799_)
);

NAND2X1 _4747_ (
    .A(_1768_),
    .B(_1764_),
    .Y(_1800_)
);

NAND2X1 _4748_ (
    .A(_1800_),
    .B(_1796_),
    .Y(_1801_)
);

NAND3X1 _4749_ (
    .A(_1799_),
    .B(_1801_),
    .C(_1797_),
    .Y(_1802_)
);

NAND2X1 _4750_ (
    .A(\u_cpu.u_ALU8.BCD ),
    .B(_1802_),
    .Y(_1803_)
);

OR2X2 _4751_ (
    .A(_1779_),
    .B(_1783_),
    .Y(_1804_)
);

NAND3X1 _4752_ (
    .A(_1727_),
    .B(_1804_),
    .C(_1788_),
    .Y(_1805_)
);

NAND2X1 _4753_ (
    .A(_1784_),
    .B(_1805_),
    .Y(_1806_)
);

OAI21X1 _4754_ (
    .A(_1803_),
    .B(_1790_),
    .C(_1806_),
    .Y(_1807_)
);

INVX1 _4755_ (
    .A(_1713_),
    .Y(_1808_)
);

OAI21X1 _4756_ (
    .A(_1697_),
    .B(_1808_),
    .C(_1711_),
    .Y(_1809_)
);

OAI21X1 _4757_ (
    .A(_1711_),
    .B(_1808_),
    .C(_1809_),
    .Y(_1810_)
);

INVX1 _4758_ (
    .A(_1810_),
    .Y(_1811_)
);

AOI22X1 _4759_ (
    .A(_1711_),
    .B(_1714_),
    .C(_1807_),
    .D(_1811_),
    .Y(_1812_)
);

OAI21X1 _4760_ (
    .A(_1695_),
    .B(_1702_),
    .C(_1703_),
    .Y(_1813_)
);

OAI21X1 _4761_ (
    .A(_1813_),
    .B(_1812_),
    .C(_1703_),
    .Y(_1814_)
);

INVX1 _4762_ (
    .A(\u_cpu.AI [7]),
    .Y(_1815_)
);

INVX1 _4763_ (
    .A(\u_cpu.BI [6]),
    .Y(_1816_)
);

NOR2X1 _4764_ (
    .A(\u_cpu.alu_op [0]),
    .B(_1816_),
    .Y(_1817_)
);

OAI21X1 _4765_ (
    .A(_1689_),
    .B(_1683_),
    .C(\u_cpu.BI [6]),
    .Y(_1818_)
);

OAI21X1 _4766_ (
    .A(_1688_),
    .B(_1817_),
    .C(_1818_),
    .Y(_1819_)
);

OAI21X1 _4767_ (
    .A(\u_cpu.alu_op [0]),
    .B(_1816_),
    .C(_1683_),
    .Y(_1820_)
);

NAND3X1 _4768_ (
    .A(_1684_),
    .B(_1820_),
    .C(_1819_),
    .Y(_1821_)
);

OAI21X1 _4769_ (
    .A(_1684_),
    .B(_1815_),
    .C(_1821_),
    .Y(_1822_)
);

OAI21X1 _4770_ (
    .A(\u_cpu.alu_op [3]),
    .B(_1699_),
    .C(_1816_),
    .Y(_1823_)
);

OAI21X1 _4771_ (
    .A(_1816_),
    .B(_1698_),
    .C(_1823_),
    .Y(_1824_)
);

INVX1 _4772_ (
    .A(_1824_),
    .Y(_1825_)
);

OAI21X1 _4773_ (
    .A(_1697_),
    .B(_1825_),
    .C(_1822_),
    .Y(_1826_)
);

OAI21X1 _4774_ (
    .A(_1822_),
    .B(_1825_),
    .C(_1826_),
    .Y(_1827_)
);

INVX1 _4775_ (
    .A(_1827_),
    .Y(_1828_)
);

NAND2X1 _4776_ (
    .A(_1828_),
    .B(_1814_),
    .Y(_1829_)
);

NAND3X1 _4777_ (
    .A(_1727_),
    .B(_1788_),
    .C(_1786_),
    .Y(_1830_)
);

OAI21X1 _4778_ (
    .A(_1728_),
    .B(_1772_),
    .C(_1785_),
    .Y(_1831_)
);

NAND2X1 _4779_ (
    .A(_1830_),
    .B(_1831_),
    .Y(_1832_)
);

INVX1 _4780_ (
    .A(\u_cpu.u_ALU8.BCD ),
    .Y(_1833_)
);

NAND3X1 _4781_ (
    .A(_1741_),
    .B(_1798_),
    .C(_1796_),
    .Y(_1834_)
);

NAND2X1 _4782_ (
    .A(_1788_),
    .B(_1834_),
    .Y(_1835_)
);

AOI21X1 _4783_ (
    .A(_1835_),
    .B(_1801_),
    .C(_1833_),
    .Y(_1836_)
);

AOI22X1 _4784_ (
    .A(_1784_),
    .B(_1805_),
    .C(_1832_),
    .D(_1836_),
    .Y(_1837_)
);

OAI21X1 _4785_ (
    .A(_1810_),
    .B(_1837_),
    .C(_1809_),
    .Y(_1838_)
);

INVX1 _4786_ (
    .A(_1813_),
    .Y(_1839_)
);

NAND2X1 _4787_ (
    .A(_1839_),
    .B(_1838_),
    .Y(_1840_)
);

NAND3X1 _4788_ (
    .A(_1703_),
    .B(_1827_),
    .C(_1840_),
    .Y(_1841_)
);

NAND2X1 _4789_ (
    .A(_1841_),
    .B(_1829_),
    .Y(_1842_)
);

OAI21X1 _4790_ (
    .A(_1681__bF$buf2),
    .B(_1842_),
    .C(_1682_),
    .Y(_1666_)
);

NAND2X1 _4791_ (
    .A(\u_cpu.ADD [0]),
    .B(_1681__bF$buf1),
    .Y(_1843_)
);

AOI21X1 _4792_ (
    .A(_1792_),
    .B(_1763_),
    .C(_1757_),
    .Y(_1844_)
);

OAI21X1 _4793_ (
    .A(_1751_),
    .B(_1791_),
    .C(_1792_),
    .Y(_1845_)
);

OAI21X1 _4794_ (
    .A(_1756_),
    .B(_1845_),
    .C(RDY_bF$buf3),
    .Y(_1846_)
);

OAI21X1 _4795_ (
    .A(_1844_),
    .B(_1846_),
    .C(_1843_),
    .Y(_1667_)
);

NAND2X1 _4796_ (
    .A(\u_cpu.ADD [1]),
    .B(_1681__bF$buf0),
    .Y(_1847_)
);

OAI21X1 _4797_ (
    .A(_1681__bF$buf3),
    .B(_1801_),
    .C(_1847_),
    .Y(_1668_)
);

NAND2X1 _4798_ (
    .A(\u_cpu.ADD [2]),
    .B(_1681__bF$buf2),
    .Y(_1848_)
);

OAI21X1 _4799_ (
    .A(_1681__bF$buf1),
    .B(_1835_),
    .C(_1848_),
    .Y(_1669_)
);

NAND2X1 _4800_ (
    .A(\u_cpu.ADD [3]),
    .B(_1681__bF$buf0),
    .Y(_1849_)
);

OAI21X1 _4801_ (
    .A(_1681__bF$buf3),
    .B(_1790_),
    .C(_1849_),
    .Y(_1670_)
);

NAND2X1 _4802_ (
    .A(\u_cpu.ADD [4]),
    .B(_1681__bF$buf2),
    .Y(_1850_)
);

NOR2X1 _4803_ (
    .A(_1811_),
    .B(_1807_),
    .Y(_1851_)
);

OAI21X1 _4804_ (
    .A(_1810_),
    .B(_1837_),
    .C(RDY_bF$buf2),
    .Y(_1852_)
);

OAI21X1 _4805_ (
    .A(_1852_),
    .B(_1851_),
    .C(_1850_),
    .Y(_1671_)
);

NAND2X1 _4806_ (
    .A(\u_cpu.ADD [5]),
    .B(_1681__bF$buf1),
    .Y(_1853_)
);

NAND2X1 _4807_ (
    .A(_1813_),
    .B(_1812_),
    .Y(_1854_)
);

NAND2X1 _4808_ (
    .A(_1840_),
    .B(_1854_),
    .Y(_1855_)
);

OAI21X1 _4809_ (
    .A(_1681__bF$buf0),
    .B(_1855_),
    .C(_1853_),
    .Y(_1672_)
);

OR2X2 _4810_ (
    .A(\u_cpu.ADD [0]),
    .B(\u_cpu.ADD [1]),
    .Y(_1856_)
);

NOR2X1 _4811_ (
    .A(\u_cpu.ADD [3]),
    .B(\u_cpu.ADD [4]),
    .Y(_1857_)
);

NOR2X1 _4812_ (
    .A(\u_cpu.ADD [5]),
    .B(\u_cpu.AN ),
    .Y(_1858_)
);

NOR2X1 _4813_ (
    .A(\u_cpu.ADD [6]),
    .B(\u_cpu.ADD [2]),
    .Y(_1859_)
);

NAND3X1 _4814_ (
    .A(_1857_),
    .B(_1858_),
    .C(_1859_),
    .Y(_1860_)
);

NOR2X1 _4815_ (
    .A(_1856_),
    .B(_1860_),
    .Y(\u_cpu.AZ )
);

NOR2X1 _4816_ (
    .A(\u_cpu.u_ALU8.BI7 ),
    .B(\u_cpu.CO ),
    .Y(_1861_)
);

AND2X2 _4817_ (
    .A(\u_cpu.u_ALU8.BI7 ),
    .B(\u_cpu.CO ),
    .Y(_1862_)
);

NOR2X1 _4818_ (
    .A(_1861_),
    .B(_1862_),
    .Y(_1863_)
);

NAND2X1 _4819_ (
    .A(\u_cpu.AN ),
    .B(\u_cpu.u_ALU8.AI7 ),
    .Y(_1864_)
);

INVX1 _4820_ (
    .A(\u_cpu.AN ),
    .Y(_1865_)
);

INVX1 _4821_ (
    .A(\u_cpu.u_ALU8.AI7 ),
    .Y(_1866_)
);

NAND2X1 _4822_ (
    .A(_1865_),
    .B(_1866_),
    .Y(_1867_)
);

NAND2X1 _4823_ (
    .A(_1864_),
    .B(_1867_),
    .Y(_1868_)
);

OR2X2 _4824_ (
    .A(_1863_),
    .B(_1868_),
    .Y(_1869_)
);

NAND2X1 _4825_ (
    .A(_1868_),
    .B(_1863_),
    .Y(_1870_)
);

NAND2X1 _4826_ (
    .A(_1870_),
    .B(_1869_),
    .Y(\u_cpu.AV )
);

INVX4 _4827_ (
    .A(reset),
    .Y(_1675_)
);

INVX1 _4828_ (
    .A(\u_cpu.BI [7]),
    .Y(_1871_)
);

NOR2X1 _4829_ (
    .A(\u_cpu.alu_op [0]),
    .B(_1871_),
    .Y(_1872_)
);

OAI21X1 _4830_ (
    .A(_1689_),
    .B(_1815_),
    .C(\u_cpu.BI [7]),
    .Y(_1873_)
);

OAI21X1 _4831_ (
    .A(_1688_),
    .B(_1872_),
    .C(_1873_),
    .Y(_1874_)
);

INVX1 _4832_ (
    .A(_1872_),
    .Y(_1875_)
);

AOI21X1 _4833_ (
    .A(_1875_),
    .B(_1815_),
    .C(\u_cpu.alu_shift_right ),
    .Y(_1876_)
);

AOI22X1 _4834_ (
    .A(\u_cpu.alu_shift_right ),
    .B(\u_cpu.CI ),
    .C(_1876_),
    .D(_1874_),
    .Y(_1877_)
);

OAI21X1 _4835_ (
    .A(\u_cpu.alu_op [3]),
    .B(_1699_),
    .C(_1871_),
    .Y(_1878_)
);

OAI21X1 _4836_ (
    .A(_1871_),
    .B(_1698_),
    .C(_1878_),
    .Y(_1879_)
);

NAND2X1 _4837_ (
    .A(_1879_),
    .B(_1877_),
    .Y(_1880_)
);

INVX1 _4838_ (
    .A(_1880_),
    .Y(_1881_)
);

NAND2X1 _4839_ (
    .A(\u_cpu.u_ALU8.BI7 ),
    .B(_1681__bF$buf3),
    .Y(_1882_)
);

OAI21X1 _4840_ (
    .A(_1696_),
    .B(\u_cpu.alu_op [2]),
    .C(_1879_),
    .Y(_1883_)
);

NAND2X1 _4841_ (
    .A(RDY_bF$buf1),
    .B(_1883_),
    .Y(_1884_)
);

OAI21X1 _4842_ (
    .A(_1884_),
    .B(_1881_),
    .C(_1882_),
    .Y(_1676_)
);

OAI21X1 _4843_ (
    .A(_1696_),
    .B(\u_cpu.alu_op [2]),
    .C(_1701_),
    .Y(_1885_)
);

AOI22X1 _4844_ (
    .A(_1695_),
    .B(_1885_),
    .C(_1838_),
    .D(_1839_),
    .Y(_1886_)
);

OAI21X1 _4845_ (
    .A(_1827_),
    .B(_1886_),
    .C(_1826_),
    .Y(_1887_)
);

INVX1 _4846_ (
    .A(_1877_),
    .Y(_1888_)
);

NAND2X1 _4847_ (
    .A(_1883_),
    .B(_1888_),
    .Y(_1889_)
);

INVX1 _4848_ (
    .A(_1889_),
    .Y(_1890_)
);

NOR2X1 _4849_ (
    .A(_1881_),
    .B(_1890_),
    .Y(_1891_)
);

INVX1 _4850_ (
    .A(_1891_),
    .Y(_1892_)
);

NAND2X1 _4851_ (
    .A(_1892_),
    .B(_1887_),
    .Y(_1893_)
);

NAND3X1 _4852_ (
    .A(_1826_),
    .B(_1891_),
    .C(_1829_),
    .Y(_1894_)
);

NAND2X1 _4853_ (
    .A(_1894_),
    .B(_1893_),
    .Y(_1895_)
);

NAND2X1 _4854_ (
    .A(RDY_bF$buf0),
    .B(_1895_),
    .Y(_1896_)
);

OAI21X1 _4855_ (
    .A(RDY_bF$buf7),
    .B(_1865_),
    .C(_1896_),
    .Y(_1677_)
);

NAND2X1 _4856_ (
    .A(\u_cpu.HC ),
    .B(_1681__bF$buf2),
    .Y(_1897_)
);

OAI21X1 _4857_ (
    .A(_1681__bF$buf1),
    .B(_1837_),
    .C(_1897_),
    .Y(_1678_)
);

INVX1 _4858_ (
    .A(\u_cpu.CO ),
    .Y(_1898_)
);

NOR2X1 _4859_ (
    .A(_1684_),
    .B(_1748_),
    .Y(_1899_)
);

INVX1 _4860_ (
    .A(_1899_),
    .Y(_1900_)
);

INVX1 _4861_ (
    .A(_1826_),
    .Y(_1901_)
);

AOI21X1 _4862_ (
    .A(_1814_),
    .B(_1828_),
    .C(_1901_),
    .Y(_1902_)
);

AOI21X1 _4863_ (
    .A(_1902_),
    .B(_1889_),
    .C(_1881_),
    .Y(_1903_)
);

AOI21X1 _4864_ (
    .A(_1903_),
    .B(_1900_),
    .C(_1681__bF$buf0),
    .Y(_1904_)
);

OAI21X1 _4865_ (
    .A(_1890_),
    .B(_1887_),
    .C(_1880_),
    .Y(_1905_)
);

AOI21X1 _4866_ (
    .A(_1842_),
    .B(_1855_),
    .C(_1833_),
    .Y(_1906_)
);

AOI22X1 _4867_ (
    .A(_1899_),
    .B(_1905_),
    .C(_1906_),
    .D(_1895_),
    .Y(_1907_)
);

AOI22X1 _4868_ (
    .A(_1681__bF$buf3),
    .B(_1898_),
    .C(_1907_),
    .D(_1904_),
    .Y(_1679_)
);

NAND2X1 _4869_ (
    .A(RDY_bF$buf6),
    .B(\u_cpu.AI [7]),
    .Y(_1908_)
);

OAI21X1 _4870_ (
    .A(RDY_bF$buf5),
    .B(_1866_),
    .C(_1908_),
    .Y(_1680_)
);

DFFSR _4871_ (
    .CLK(clk_bF$buf8),
    .D(_1667_),
    .Q(\u_cpu.ADD [0]),
    .R(_1675_),
    .S(vdd)
);

DFFSR _4872_ (
    .CLK(clk_bF$buf7),
    .D(_1672_),
    .Q(\u_cpu.ADD [5]),
    .R(_1675_),
    .S(vdd)
);

DFFSR _4873_ (
    .CLK(clk_bF$buf6),
    .D(_1669_),
    .Q(\u_cpu.ADD [2]),
    .R(_1675_),
    .S(vdd)
);

DFFSR _4874_ (
    .CLK(clk_bF$buf5),
    .D(_1676_),
    .Q(\u_cpu.u_ALU8.BI7 ),
    .R(_1675_),
    .S(vdd)
);

DFFSR _4875_ (
    .CLK(clk_bF$buf4),
    .D(_1666_),
    .Q(\u_cpu.ADD [6]),
    .R(_1675_),
    .S(vdd)
);

DFFSR _4876_ (
    .CLK(clk_bF$buf3),
    .D(_1677_),
    .Q(\u_cpu.AN ),
    .R(_1675_),
    .S(vdd)
);

DFFSR _4877_ (
    .CLK(clk_bF$buf2),
    .D(_1670_),
    .Q(\u_cpu.ADD [3]),
    .R(_1675_),
    .S(vdd)
);

DFFSR _4878_ (
    .CLK(clk_bF$buf1),
    .D(_1678_),
    .Q(\u_cpu.HC ),
    .R(_1675_),
    .S(vdd)
);

DFFSR _4879_ (
    .CLK(clk_bF$buf0),
    .D(_1668_),
    .Q(\u_cpu.ADD [1]),
    .R(_1675_),
    .S(vdd)
);

DFFSR _4880_ (
    .CLK(clk_bF$buf12),
    .D(_1679_),
    .Q(\u_cpu.CO ),
    .R(_1675_),
    .S(vdd)
);

DFFSR _4881_ (
    .CLK(clk_bF$buf11),
    .D(_1671_),
    .Q(\u_cpu.ADD [4]),
    .R(_1675_),
    .S(vdd)
);

DFFPOSX1 _4882_ (
    .CLK(clk_bF$buf10),
    .D(_2346_[6]),
    .Q(DO_woz[6])
);

INVX1 _4883_ (
    .A(DO_woz[6]),
    .Y(_2159_)
);

INVX1 _4884_ (
    .A(DO_dsp[6]),
    .Y(_2160_)
);

INVX1 _4885_ (
    .A(_Addr_Bus[13]),
    .Y(_2161_)
);

NOR2X1 _4886_ (
    .A(_Addr_Bus[2]),
    .B(_Addr_Bus[3]),
    .Y(_2162_)
);

NAND3X1 _4887_ (
    .A(_Addr_Bus[12]),
    .B(_2161_),
    .C(_2162_),
    .Y(_2163_)
);

AND2X2 _4888_ (
    .A(_Addr_Bus[15]),
    .B(_Addr_Bus[14]),
    .Y(_2164_)
);

NOR2X1 _4889_ (
    .A(_Addr_Bus[10]),
    .B(_Addr_Bus[11]),
    .Y(_2165_)
);

NOR2X1 _4890_ (
    .A(_Addr_Bus[9]),
    .B(_Addr_Bus[8]),
    .Y(_2166_)
);

NAND3X1 _4891_ (
    .A(_2165_),
    .B(_2164_),
    .C(_2166_),
    .Y(_2167_)
);

NOR2X1 _4892_ (
    .A(_Addr_Bus[5]),
    .B(_Addr_Bus[6]),
    .Y(_2168_)
);

INVX1 _4893_ (
    .A(_Addr_Bus[4]),
    .Y(_2169_)
);

NOR2X1 _4894_ (
    .A(_Addr_Bus[7]),
    .B(_2169_),
    .Y(_2170_)
);

NOR2X1 _4895_ (
    .A(_Addr_Bus[0]),
    .B(_2352_),
    .Y(_2171_)
);

NAND3X1 _4896_ (
    .A(_2168_),
    .B(_2171_),
    .C(_2170_),
    .Y(_2172_)
);

NOR3X1 _4897_ (
    .A(_2163_),
    .B(_2167_),
    .C(_2172_),
    .Y(_2173_)
);

NAND3X1 _4898_ (
    .A(_Addr_Bus[1]),
    .B(_2160_),
    .C(_2173_),
    .Y(_2174_)
);

INVX1 _4899_ (
    .A(_Addr_Bus[1]),
    .Y(_2175_)
);

NOR2X1 _4900_ (
    .A(_2163_),
    .B(_2167_),
    .Y(_2176_)
);

INVX1 _4901_ (
    .A(_Addr_Bus[7]),
    .Y(_2177_)
);

NAND3X1 _4902_ (
    .A(_Addr_Bus[4]),
    .B(_2177_),
    .C(_2168_),
    .Y(_2178_)
);

INVX1 _4903_ (
    .A(_2352_),
    .Y(_2179_)
);

NAND3X1 _4904_ (
    .A(_Addr_Bus[0]),
    .B(_2175_),
    .C(_2179_),
    .Y(_2180_)
);

NOR2X1 _4905_ (
    .A(_2180_),
    .B(_2178_),
    .Y(_2181_)
);

AOI22X1 _4906_ (
    .A(_2176_),
    .B(_2181_),
    .C(_2173_),
    .D(_2175_),
    .Y(_2182_)
);

INVX1 _4907_ (
    .A(DI[6]),
    .Y(_2183_)
);

INVX1 _4908_ (
    .A(_2171_),
    .Y(_2184_)
);

NOR2X1 _4909_ (
    .A(_2184_),
    .B(_2178_),
    .Y(_2185_)
);

NAND3X1 _4910_ (
    .A(_Addr_Bus[1]),
    .B(_2185_),
    .C(_2176_),
    .Y(_2186_)
);

NAND2X1 _4911_ (
    .A(_2183_),
    .B(_2186_),
    .Y(_2187_)
);

NAND3X1 _4912_ (
    .A(_2174_),
    .B(_2187_),
    .C(_2182_),
    .Y(_2188_)
);

NAND2X1 _4913_ (
    .A(_Addr_Bus[9]),
    .B(_Addr_Bus[8]),
    .Y(_2189_)
);

NAND2X1 _4914_ (
    .A(_Addr_Bus[10]),
    .B(_Addr_Bus[11]),
    .Y(_2190_)
);

NOR2X1 _4915_ (
    .A(_2189_),
    .B(_2190_),
    .Y(_2191_)
);

INVX1 _4916_ (
    .A(_2164_),
    .Y(_2192_)
);

NAND2X1 _4917_ (
    .A(_Addr_Bus[12]),
    .B(_Addr_Bus[13]),
    .Y(_2193_)
);

NOR2X1 _4918_ (
    .A(_2193_),
    .B(_2192_),
    .Y(_2194_)
);

AND2X2 _4919_ (
    .A(_2194_),
    .B(_2191_),
    .Y(_2195_)
);

NAND2X1 _4920_ (
    .A(_2181_),
    .B(_2176_),
    .Y(_2196_)
);

NAND3X1 _4921_ (
    .A(_2175_),
    .B(_2185_),
    .C(_2176_),
    .Y(_2197_)
);

NAND2X1 _4922_ (
    .A(_2196_),
    .B(_2197_),
    .Y(_2198_)
);

AOI21X1 _4923_ (
    .A(_2198_),
    .B(DO_kbd[6]),
    .C(_2195_),
    .Y(_2199_)
);

AOI22X1 _4924_ (
    .A(_2159_),
    .B(_2195_),
    .C(_2188_),
    .D(_2199_),
    .Y(Data_In[6])
);

INVX1 _4925_ (
    .A(DO_woz[5]),
    .Y(_2200_)
);

INVX1 _4926_ (
    .A(DO_dsp[5]),
    .Y(_2201_)
);

NAND3X1 _4927_ (
    .A(_Addr_Bus[1]),
    .B(_2201_),
    .C(_2173_),
    .Y(_2202_)
);

INVX1 _4928_ (
    .A(DI[5]),
    .Y(_2203_)
);

NAND2X1 _4929_ (
    .A(_2203_),
    .B(_2186_),
    .Y(_2204_)
);

NAND3X1 _4930_ (
    .A(_2202_),
    .B(_2204_),
    .C(_2182_),
    .Y(_2205_)
);

AOI21X1 _4931_ (
    .A(_2198_),
    .B(DO_kbd[5]),
    .C(_2195_),
    .Y(_2206_)
);

AOI22X1 _4932_ (
    .A(_2200_),
    .B(_2195_),
    .C(_2205_),
    .D(_2206_),
    .Y(Data_In[5])
);

INVX1 _4933_ (
    .A(DO_woz[4]),
    .Y(_2207_)
);

INVX1 _4934_ (
    .A(DO_dsp[4]),
    .Y(_2208_)
);

NAND3X1 _4935_ (
    .A(_Addr_Bus[1]),
    .B(_2208_),
    .C(_2173_),
    .Y(_2209_)
);

INVX1 _4936_ (
    .A(DI[4]),
    .Y(_2210_)
);

NAND2X1 _4937_ (
    .A(_2210_),
    .B(_2186_),
    .Y(_2211_)
);

NAND3X1 _4938_ (
    .A(_2209_),
    .B(_2211_),
    .C(_2182_),
    .Y(_2212_)
);

AOI21X1 _4939_ (
    .A(_2198_),
    .B(DO_kbd[4]),
    .C(_2195_),
    .Y(_2213_)
);

AOI22X1 _4940_ (
    .A(_2207_),
    .B(_2195_),
    .C(_2212_),
    .D(_2213_),
    .Y(Data_In[4])
);

INVX1 _4941_ (
    .A(DO_woz[3]),
    .Y(_2214_)
);

INVX1 _4942_ (
    .A(DO_dsp[3]),
    .Y(_2215_)
);

NAND3X1 _4943_ (
    .A(_Addr_Bus[1]),
    .B(_2215_),
    .C(_2173_),
    .Y(_2216_)
);

INVX1 _4944_ (
    .A(DI[3]),
    .Y(_2217_)
);

NAND2X1 _4945_ (
    .A(_2217_),
    .B(_2186_),
    .Y(_2218_)
);

NAND3X1 _4946_ (
    .A(_2216_),
    .B(_2218_),
    .C(_2182_),
    .Y(_2219_)
);

AOI21X1 _4947_ (
    .A(_2198_),
    .B(DO_kbd[3]),
    .C(_2195_),
    .Y(_2220_)
);

AOI22X1 _4948_ (
    .A(_2214_),
    .B(_2195_),
    .C(_2219_),
    .D(_2220_),
    .Y(Data_In[3])
);

INVX1 _4949_ (
    .A(DO_woz[2]),
    .Y(_2221_)
);

INVX1 _4950_ (
    .A(DO_dsp[2]),
    .Y(_2222_)
);

NAND3X1 _4951_ (
    .A(_Addr_Bus[1]),
    .B(_2222_),
    .C(_2173_),
    .Y(_2223_)
);

INVX1 _4952_ (
    .A(DI[2]),
    .Y(_2224_)
);

NAND2X1 _4953_ (
    .A(_2224_),
    .B(_2186_),
    .Y(_2225_)
);

NAND3X1 _4954_ (
    .A(_2223_),
    .B(_2225_),
    .C(_2182_),
    .Y(_2226_)
);

AOI21X1 _4955_ (
    .A(_2198_),
    .B(DO_kbd[2]),
    .C(_2195_),
    .Y(_2227_)
);

AOI22X1 _4956_ (
    .A(_2221_),
    .B(_2195_),
    .C(_2226_),
    .D(_2227_),
    .Y(Data_In[2])
);

INVX1 _4957_ (
    .A(DO_woz[1]),
    .Y(_2228_)
);

INVX1 _4958_ (
    .A(DO_dsp[1]),
    .Y(_2229_)
);

NAND3X1 _4959_ (
    .A(_Addr_Bus[1]),
    .B(_2229_),
    .C(_2173_),
    .Y(_2230_)
);

INVX1 _4960_ (
    .A(DI[1]),
    .Y(_2231_)
);

NAND2X1 _4961_ (
    .A(_2231_),
    .B(_2186_),
    .Y(_2232_)
);

NAND3X1 _4962_ (
    .A(_2230_),
    .B(_2232_),
    .C(_2182_),
    .Y(_2233_)
);

AOI21X1 _4963_ (
    .A(_2198_),
    .B(DO_kbd[1]),
    .C(_2195_),
    .Y(_2234_)
);

AOI22X1 _4964_ (
    .A(_2228_),
    .B(_2195_),
    .C(_2233_),
    .D(_2234_),
    .Y(Data_In[1])
);

INVX1 _4965_ (
    .A(DO_woz[0]),
    .Y(_2235_)
);

INVX1 _4966_ (
    .A(DO_dsp[0]),
    .Y(_2236_)
);

NAND3X1 _4967_ (
    .A(_Addr_Bus[1]),
    .B(_2236_),
    .C(_2173_),
    .Y(_2237_)
);

INVX1 _4968_ (
    .A(DI[0]),
    .Y(_2238_)
);

NAND2X1 _4969_ (
    .A(_2238_),
    .B(_2186_),
    .Y(_2239_)
);

NAND3X1 _4970_ (
    .A(_2237_),
    .B(_2239_),
    .C(_2182_),
    .Y(_2240_)
);

AOI21X1 _4971_ (
    .A(_2198_),
    .B(DO_kbd[0]),
    .C(_2195_),
    .Y(_2241_)
);

AOI22X1 _4972_ (
    .A(_2235_),
    .B(_2195_),
    .C(_2240_),
    .D(_2241_),
    .Y(Data_In[0])
);

INVX1 _4973_ (
    .A(DO_woz[7]),
    .Y(_2242_)
);

INVX1 _4974_ (
    .A(DI[7]),
    .Y(_2243_)
);

NAND2X1 _4975_ (
    .A(_2243_),
    .B(_2186_),
    .Y(_2244_)
);

INVX1 _4976_ (
    .A(DO_dsp[7]),
    .Y(_2245_)
);

NAND3X1 _4977_ (
    .A(_Addr_Bus[1]),
    .B(_2245_),
    .C(_2173_),
    .Y(_2246_)
);

NAND3X1 _4978_ (
    .A(_2196_),
    .B(_2244_),
    .C(_2246_),
    .Y(_2247_)
);

NOR2X1 _4979_ (
    .A(_2189_),
    .B(_2193_),
    .Y(_2248_)
);

NOR2X1 _4980_ (
    .A(_2190_),
    .B(_2192_),
    .Y(_2249_)
);

NAND2X1 _4981_ (
    .A(_2248_),
    .B(_2249_),
    .Y(_2250_)
);

NAND3X1 _4982_ (
    .A(DO_kbd[7]),
    .B(_2181_),
    .C(_2176_),
    .Y(_2251_)
);

NAND3X1 _4983_ (
    .A(_2250_),
    .B(_2197_),
    .C(_2251_),
    .Y(_2252_)
);

INVX1 _4984_ (
    .A(_2252_),
    .Y(_2253_)
);

AOI22X1 _4985_ (
    .A(_2242_),
    .B(_2195_),
    .C(_2247_),
    .D(_2253_),
    .Y(Data_In[7])
);

DFFPOSX1 _4986_ (
    .CLK(clk_bF$buf9),
    .D(_2354__4_bF$buf4),
    .Q(_Addr_Bus[4])
);

DFFPOSX1 _4987_ (
    .CLK(clk_bF$buf8),
    .D(_2354_[12]),
    .Q(_Addr_Bus[12])
);

DFFPOSX1 _4988_ (
    .CLK(clk_bF$buf7),
    .D(_2354__2_bF$buf2),
    .Q(_Addr_Bus[2])
);

DFFPOSX1 _4989_ (
    .CLK(clk_bF$buf6),
    .D(_2354_[11]),
    .Q(_Addr_Bus[11])
);

DFFPOSX1 _4990_ (
    .CLK(clk_bF$buf5),
    .D(_2354_[14]),
    .Q(_Addr_Bus[14])
);

DFFPOSX1 _4991_ (
    .CLK(clk_bF$buf4),
    .D(_2354_[9]),
    .Q(_Addr_Bus[9])
);

DFFPOSX1 _4992_ (
    .CLK(clk_bF$buf3),
    .D(_2346_[2]),
    .Q(DO_woz[2])
);

DFFSR _4993_ (
    .CLK(clk_bF$buf2),
    .D(_1519_),
    .Q(DO_dsp[1]),
    .R(_1514_),
    .S(vdd)
);

DFFSR _4994_ (
    .CLK(clk_bF$buf1),
    .D(_1632_),
    .Q(\u_pia_kbd.state [1]),
    .R(_1491_),
    .S(vdd)
);

DFFPOSX1 _4995_ (
    .CLK(clk_bF$buf0),
    .D(_2354__1_bF$buf3),
    .Q(_Addr_Bus[1])
);

DFFPOSX1 _4996_ (
    .CLK(clk_bF$buf12),
    .D(_2354__0_bF$buf1),
    .Q(_Addr_Bus[0])
);

DFFPOSX1 _4997_ (
    .CLK(clk_bF$buf11),
    .D(_2354__5_bF$buf0),
    .Q(_Addr_Bus[5])
);

DFFPOSX1 _4998_ (
    .CLK(clk_bF$buf10),
    .D(_2354__6_bF$buf4),
    .Q(_Addr_Bus[6])
);

DFFPOSX1 _4999_ (
    .CLK(clk_bF$buf9),
    .D(_2354__7_bF$buf3),
    .Q(_Addr_Bus[7])
);

DFFPOSX1 _5000_ (
    .CLK(clk_bF$buf8),
    .D(_2354__3_bF$buf6),
    .Q(_Addr_Bus[3])
);

DFFPOSX1 _5001_ (
    .CLK(clk_bF$buf7),
    .D(_2354_[15]),
    .Q(_Addr_Bus[15])
);

DFFPOSX1 _5002_ (
    .CLK(clk_bF$buf6),
    .D(_2354_[13]),
    .Q(_Addr_Bus[13])
);

DFFPOSX1 _5003_ (
    .CLK(clk_bF$buf5),
    .D(_2354_[8]),
    .Q(_Addr_Bus[8])
);

DFFPOSX1 _5004_ (
    .CLK(clk_bF$buf4),
    .D(_2354_[10]),
    .Q(_Addr_Bus[10])
);

DFFSR _5005_ (
    .CLK(clk_bF$buf3),
    .D(_1356_),
    .Q(\u_cpu.PC [6]),
    .R(_1417__bF$buf9),
    .S(vdd)
);

endmodule
