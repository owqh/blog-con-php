-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-10-2018 a las 23:59:19
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE IF NOT EXISTS `articulos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `extracto` varchar(200) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `texto` text NOT NULL,
  `thumb` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id`, `titulo`, `extracto`, `fecha`, `texto`, `thumb`) VALUES
(1, 'El Amazonas, ardiendo: asÃ­ se convierte uno de los pulmones de la Tierra en una fuente importante de calentamiento global', 'Entre 2015 y 2016 ardieron casi un millÃ³n de hectÃ¡reas de la selva del Amazonas. El fuego, visto perfectamente desde el espacio, liberÃ³ a la atmÃ³sfera unas 30 millones de toneladas de diÃ³xido de', '2018-10-08 18:27:04', 'Entre 2015 y 2016 ardieron casi un millÃ³n de hectÃ¡reas de la selva del Amazonas. El fuego, visto perfectamente desde el espacio, liberÃ³ a la atmÃ³sfera unas 30 millones de toneladas de diÃ³xido de carbono, uno de los principales gases de efecto invernadero.\r\n\r\nEsta cifra, ademÃ¡s, es unas cuatro veces mayor que la suma de todos los incendios a nivel global para las mismas fechas. Esto es un problema mucho mayor de lo que esperaban los investigadores. SegÃºn describÃ­an en un reciente estudio, es hora de tener en cuenta estos incendios si queremos combatir el calentamiento global de manera efectiva.\r\n\r\nEl problema ya no solo es la deforestaciÃ³n, sino el fuego\r\nDesde 1970, la superficie de la selva que rodea al Amazonas, el mayor bosque tropical de la Tierra, ha perdido cientos de millones de hectÃ¡reas debido a la deforestaciÃ³n. De mÃ¡s de 2.000 millones de toneladas de CO2 que era capaz de absorber hace unos 20 aÃ±os, ahora mismo se estima que su capacidad estÃ¡ por debajo de los 1.000 millones.\r\n\r\nEl problema ya no solo se debe a la tala del bosque para la ganaderÃ­a o el cultivo, sino tambiÃ©n a los incendios. En 2015 y 2016 comenzaron varios fuegos que terminaron por unirse en uno de los mÃ¡s devastadores que jamÃ¡s haya vivido nuestro planeta en tiempos modernos. Este â€œgran incendioâ€ acabÃ³ con el 0,2% de la selva amazÃ³nica, casi un millÃ³n de hectÃ¡reas en un aÃ±o.\r\n\r\nÂ¿Y quiÃ©n es el culpable del desastre? Su voracidad se debe, principalmente, a El NiÃ±o. Este es un fenÃ³meno climÃ¡tico relacionado con el calentamiento del PacÃ­fico oriental ecuatorial. Se presenta de forma cÃ­clica, aunque tiene un patrÃ³n errÃ¡tico. Es el causante de una temporada cÃ¡lida y seca, muy distinta a las constantes lluvias tÃ­picas de una selva tropical.\r\n\r\nLa sequedad, la muerte de las plantas, el aumento de temperaturas y la densidad de la selva son los principales factores que promueven los incendios. A partir de 2015 comenzamos a observar un incremento de este tipo de incendios que afectan a la selva amazÃ³nica. Y no solo en el Amazonas: en 2017, la pÃ©rdida se cuantificaba en unas 15,8 millones de hectÃ¡reas en todo el mundo, menor que los 29,7 millones de 2016, pero una cifra igualmente alarmante, segÃºn opinan los expertos.\r\n\r\n<b><h3>Lo que trae la calma tras el incendio</h3></b>\r\nEl problema no se limita solo a las emisiones, tal y como discutÃ­a Camila V. J. Silva, de la Universidad de Lancaster, autora de un estudio complementario al anterior. SegÃºn sus resultados, el daÃ±o provocado por los incendios en estos ambientes puede retrasar varias dÃ©cadas la capacidad del bosque para recuperarse.\r\n\r\n"Los incendios en los bosques tropicales pueden reducir significativamente la cantidad de biomasa", explicaba Camila V. J. Silva, de la Universidad de Lancaster, "de manera que aumenta la tasa de mortalidad de los Ã¡rboles grandes, con alta densidad de madera, y que suponen los elementos mÃ¡s importantes en los bosques viejos".\r\n\r\nSu investigaciÃ³n ha comprobado que los incendios forestales ralentizan significativamente o detienen la recuperaciÃ³n posterior al fuego de los bosques amazÃ³nicos. Esto se traduce en menor capacidad para mitigar los efectos del cambio climÃ¡tico.\r\n\r\n<em>"Si no comenzamos a darle suficiente importancia, viviremos incendios cada vez mÃ¡s frecuentes"</em>\r\n\r\n"Nuestro trabajo conjunto", aclaraba la doctora Erika Berenguer, de la Universidad de Oxford, coautora de los estudios, "sirve para considerar la importancia de los incendios forestales en las polÃ­ticas brasileÃ±as de conservaciÃ³n de bosques y cambio climÃ¡tico". Esto, explicaba, es esencial para asegurar planes de actuaciÃ³n mÃ¡s eficaces contra estos incendios: "Si no comenzamos a darle suficiente importancia, viviremos incendios cada vez mÃ¡s frecuentes, y los bosques no podrÃ¡n recuperar sus reservas de carbono", zanjaba.', '1366_2000.jpg'),
(2, 'ChernÃ³bil vuelve a producir energÃ­a, ahora gracias a una planta solar instalada en la zona radioactiva', 'ChernÃ³bil parecÃ­a un lugar destinado al olvido debido a su radiaciÃ³n, pero Ucrania ha convertido la zona en una granja solar que vuelve a producir energÃ­a (renovable esta vez)', '2018-10-08 18:34:41', 'ChernÃ³bil vuelve a ser un Ã¡rea industrial de Ucrania que produce energÃ­a para el paÃ­s. Pero no del mismo modo que lo hacÃ­a hace algo mÃ¡s de tres dÃ©cadas. En la Zona de ExclusiÃ³n de ChernÃ³bil, junto al reactor que provocÃ³ una de las mayores catÃ¡strofes de la historia, Ucrania ha instalado una planta solar para abastecer de energÃ­a a las proximidades. De zona catastrÃ³fica a granja solar, es un plan que el paÃ­s lleva preparando durante aÃ±os.\r\n\r\nLa Zona de ExclusiÃ³n de ChernÃ³bil es todo el Ã¡rea alrededor de la central nuclear que provocÃ³ el accidente en 1986. Es una zona radiactiva, un lugar inhabitable para la poblaciÃ³n. De hecho, se calcula que no es una zona segura para el ser humano durante los prÃ³ximos 24.000 aÃ±os. No significa que no se le pueda sacar provecho al terreno, Ucrania lo harÃ¡ a base de plantas solares.\r\n\r\nEste pasado viernes se inaugurÃ³ la primera de las plantas solares que existirÃ¡n en el Ã¡rea. Se trata de una instalaciÃ³n de casi dos hectÃ¡reas y un megavatio de potencia, el objetivo es que la instalaciÃ³n crezca hasta los 100 megavatios de electricidad, suficiente para ofrecer electricidad a aproximadamente 2.000 hogares. Un total de 3.800 paneles instalados justo en frente del enrome sarcÃ³fago que encierra el reactor nÃºmero cuatro de la que fue en su dÃ­a la central nuclear VladÃ­mir Ilich Lenin.\r\n\r\n<b><h3>Terreno barato, instalaciones reutilizables</h3></b>\r\n\r\nQue Rodina y Enerparc AG (empresas propietarias de la instalaciÃ³n) hayan escogido ChernÃ³bil como lugar para su planta solar no es casualidad. Es un terreno particularmente barato, pues poco partido se le puede sacar para otras actividades que impliquen la disponibilidad de personas en el lugar. Una zona que parecÃ­a destinada al olvido, ahora tiene una segunda vida.\r\n\r\nPor otro lado, hay que tener en cuenta que la central nuclear de ChernÃ³bil era un punto neurÃ¡lgico para la red elÃ©ctrica del paÃ­s. A pesar del accidente las comunicaciones e instalaciones siguen siendo viables para su funcionamiento. La planta solar por lo tanto aprovecharÃ¡ estas conexiones y estructuras para transportar la electricidad. Solo que en esta ocasiÃ³n, la energÃ­a proveniente de ChernÃ³bil es mÃ¡s limpia y segura que aÃ±os atrÃ¡s.\r\n\r\n<b>Una planta solar cargada de simbolismo</b> que forma parte de un plan aÃºn mayor por parte de Ucrania. Con tal de incentivar las energÃ­as renovables, el gobierno local compra esta energÃ­a por encima del precio medio del mercado. El paÃ­s busca dejar de depender de la energÃ­a proveniente del extranjero y a base de estÃ­mulos como este para las empresas privadas, poco a poco lo estÃ¡ consiguiendo.\r\n\r\n', '2.jpg'),
(3, 'AutobÃºs urbano bajo demanda: el Uber del transporte pÃºblico ideado por una ciudad canadiense', 'Belleville, una ciudad de 50.000 habitantes de Ontario, ha introducido una lÃ­nea de autobÃºs nocturna bajo demanda. Los viajeros eligen el trayecto, el punto de partida y el de llegada.', '2018-10-08 18:45:42', 'Enciendes tu telÃ©fono, descargas una aplicaciÃ³n desarrollada por el ayuntamiento y solicitas al servicio pÃºblico de transporte un bus que te recoja en la puerta de tu casa y te deje en tu cafÃ© favorito. Marcas la fecha y la hora idÃ³nea y, voilÃ , al dÃ­a siguiente un autobÃºs urbano cumple tus Ã³rdenes. Es el modelo que ha permitido a Uber y Cabify expandirse por medio mundo, y en un futuro no muy remoto podrÃ­a llegar tambiÃ©n a los autobuses pÃºblicos de cada ciudad.\r\n\r\nEn Belleville, CanadÃ¡, ya lo estÃ¡n probando.\r\n\r\nÂ¿CÃ³mo? Hasta ahora, todas las lÃ­neas de autobÃºs seguÃ­an rutas fijas y regulares: pasaban por los mismos puntos a las mismas horas, al margen del nÃºmero de pasajeros que circularan a bordo o del destino al que desearan llegar. Belleville ha elegido su ruta nocturna para rediseÃ±ar la concepciÃ³n tradicional del transporte urbano: ahora las rutas quedarÃ¡n fijadas en funciÃ³n de las preferencias bajo demanda de sus usuarios, escogiendo los trayectos mÃ¡s Ã³ptimos en cada momento.\r\n\r\nHa entrado en servicio este mes.\r\n\r\nÂ¿QuiÃ©nes? La empresa responsable del experimento es Pantonium, una tecnolÃ³gica basada en Toronto. Como explican aquÃ­, el reto ha consistido en diseÃ±ar un algoritmo capaz de diseÃ±ar rutas en tiempo real para una ciudad de 55.000 habitantes con varios hipotÃ©ticos servicios de autobÃºs al mismo tiempo. La app recoge las localizaciones de sus usuarios y de sus autobuses, y escoge los caminos mÃ¡s rÃ¡pidos capaces de satisfacer las necesidades de todos sus pasajeros.\r\n\r\nEs un modelo similar al empleado por Google Maps a la hora de calcular los trayectos mÃ¡s rÃ¡pidos, sÃ³lo que mucho mÃ¡s complejo.\r\n\r\nÂ¿Por quÃ©? Por eficiencia. Los conductores ya no tendrÃ¡n que recorrer la ciudad hasta que se topen con un potencial pasajero, sino que irÃ¡n directamente a sus puntos de recogida. Es un ahorro significativo de tiempo y recursos, ademÃ¡s de un servicio mÃ¡s apetecible para los vecinos. Las rutas, al diseÃ±arse a medida a travÃ©s del algoritmo, serÃ¡n mÃ¡s rÃ¡pidas y cÃ³modas (adiÃ³s a pasar cincuenta minutos en un bus vacÃ­o que da vueltas en cÃ­rculos), por lo que podrÃ­an disparar el uso del autobÃºs urbano frente a alternativas privadas (como Uber o el coche).\r\n\r\nÂ¿Hay mÃ¡s? Belleville reclama orgullosamente el hallazgo para sÃ­, pero otras ciudades han experimentado con anterioridad con sistemas similares. El caso mÃ¡s cÃ©lebre en Estados Unidos es el de Austin, cuyo servicio, Pickup, estaba destinado a espacios urbanos a los que no llegaba el autobÃºs pÃºblico por ausencia de demanda o amplia dispersiÃ³n demogrÃ¡fica. Helsinki operÃ³ durante aÃ±os Kutsuplus, minibuses que hacÃ­an las veces de taxis para grupos pequeÃ±os en las afueras.\r\n\r\nLa diferencia del servicio planteado por Belleville es su carÃ¡cter integral: para toda la ciudad, para cualquier pasajero, siempre bajo demanda. Por el momento, el bus-Ã -la-Uber pasearÃ¡ por las nocturnas calles de la ciudad canadiense durante un aÃ±o. MÃ¡s tarde, la ciudad decidirÃ¡.\r\n\r\n<em>Imagen: Pau Casals/Unsplash</em>', '3.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'admin', 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
