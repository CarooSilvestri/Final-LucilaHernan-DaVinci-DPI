-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-12-2021 a las 15:02:01
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `artba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `biografia` text NOT NULL,
  `horario` varchar(255) NOT NULL,
  `fecha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id`, `nombre`, `biografia`, `horario`, `fecha`) VALUES
('uno1', 'Francisco Vazquez Murillo', 'Francisco Vazquez Murillo (Rosario, 1980) es licenciado en Filosofía, Universidad Nacional de Rosario.\nSus residencias incluyen Kaus Australis, Rotterdam; RSDNART, Yucatán, México; Nido Errante, Chaltén,\nPatagonia; Marble House, Vermont, EEUU; Swatch Art Peace Hotel Artist Residency, Shanghai, China. Formó\nparte del Programa de Artistas 2016 de la Universidad Torcuato Di Tella y se le otorgó la beca FNA – CC\nHaroldo Conti (2015). Ha realizado exhibiciones individuales en Argentina, México y Holanda.\n         \nSu trabajo incluye una amplia gama de medios como instalaciones de video, escultura, pintura y\nperformances para crear un espacio mental a través de la presencia/ausencia del cuerpo humano para\nexplorar las relaciones entre paisaje y naturaleza, distancia y representación, palabra y tierra.', '18hs - 20hs', '29 de Noviembre 2021'),
('dos2', 'Carolina Maria Martinez', 'Carolina María Martínez Pedemonte es licenciada en Artes Visuales (UNA). En 2021 realizó la residencia de\nURRA Tigre gracias al premio de la Bienal de Arte Joven 2019. Durante 2019 y 2020 participó de la Beca\nYungas. En 2018 fue agente de CIA - Centro y realizó la residencia de Marco Arte Foco. En 2018 recibió\n el Premio de Estímulo Joven en el VI Premio Arte x Arte. En 2021 realizó su muestra individual\n“fantasíaficciónmitoilusión” curada por Larisa Zmud en Galería Grasa. Participó en muestras colectivas\n como “Secreta noche nuestra”, Rosas (2021); “Solsticio”, Pólvora (2020); “Florecitas”, curada por\nPatricio Lanusse, Proa 21 (2019); “Perfuch”, UV Galería (2018); “Entre”, MARCO Museo de Arte\nContemporáneo de La Boca (2018), entre otras. Desde junio de 2020 es codirectora de Galería Grasa.\n         \nA partir de la información del otro y de lo que me rodea hago obra. Intento replantearme lo reciente, lo\n vivido y los interrogantes que me surgen. La investigación que realizo intenta comprender mi acontecer\ninmediato abordándolo mediante el dibujo, la pintura, la cerámica, los objetos, los textos y las\n performances.', '14hs - 16hs', '30 de noviembre 2021'),
('tres3', 'Juan Ojeda', 'Juan Ojeda es licenciado en Artes Plásticas (UNT). Formación: AB-ELE. Clínica para proyecto de obras,\nCarla Barbero y Javier Villa, 2021. Artistas X Artistas – Programa de Formación. Florencia Rodríguez\nGiles, Juan Tessi, Julieta García Vázquez y Alfredo Aracil, 2021. Exhibiciones: “Son esos que no\nencuentran la paz”, exposición colectiva, Ohno Galería, 2021. “Gil the World”, exposición colectiva,\nOhno Galería, 2020. “Abex_lin”, exposición colectiva, Para vos Norma mía, 2020. “Escape Plan”,\nexposición individual online, 2020. “Solo Show Chapter 2”, exposición colectiva online, 2020. “Fuego\nsonámbulo”, exposición colectiva, Munar, 2019. Distinciones: Premio Fundación Fortabat, Salón, Col. de\n Arte Amalia L. de Fortabat, 2019.\n\nJuanojedismo: arte que habla sobre el arte mismo. Sin intelectualismo. Como un traje hecho a medida.\n Flojo en los hombros, debe sentirse natural. No debe confundir. Como si la honestidad existiera.', '16hs - 18hs', '30 de noviembre 2021'),
('cuatro4', 'Lido Lacopetti', 'Lido Iacopetti (San Nicolás, 1936) en 1958 se radicó en La Plata, donde estudió pintura en la Escuela\n Superior de Bellas Artes. Egresó como profesor y licenciado en Historia de las Artes Plásticas de la\nUniversidad Nacional de La Plata, donde asistió a las clases renovadoras de los maestros Héctor Cartier,\nMartínez Solimán, Ángel O. Nessi. En esos años colaboró en “Diagonal cero”, la revista experimental\ncreada por Edgardo Antonio Vigo. Realizó exposiciones individuales en diversas instituciones de Buenos\nAires, entre las que se destacan la mítica galería Lirolay, epicentro de la vanguardia porteña de la\nprimera mitad de los 60 o la galería Carmen Waugh.', '18hs - 20hs', '30 de noviembre 2021'),
('cinco5', 'Gerardo Oberto', 'Gerardo Oberto (1983) nació y vive en Córdoba, Argentina. Licenciado en Pintura de la UNC. Parte de la\nimagen fotográfica para organizar sus composiciones, que por lo general se basan en la recreación de\nimágenes cotidianas, las cuales traspasa a la tela o al papel a partir de la transferencia por contacto.\nSu técnica es el resultado de una experimentación con materiales nobles (acrílico, acuarela, grafito)\naplicados en sucesivas capas con pinceles y materiales no convencionales (bolsas plásticas, trapos,\naspersores). La adhesión y sustracción de material por lijado de la tela genera una fuerte textura\nvisual que es lisa y suave al tacto. El resultado final es una pintura que se asemeja a una imagen\nimpresa y gastada, que evoca la idea del paso del tiempo.\nMi tarea es austera. Mi padre, su hermano y su padre vivieron en talleres, con herramientas de trabajo,\nhierro, sierras y plomo. Ahora yo vivo en un taller, con maderas, telas y grafito. Para hacer lo que hay\nque hacer no se necesita mucho. Sobre un escenario, un dramaturgo afirmaba que el sentido original de la\npalabra “idea” es “yo veo”. Supongo que los románticos también creían eso. Ocúltese y no se muestre, me\ndecía. Ese soy yo: el esquivo, el que pinta por motivaciones íntimas. Jugando con dos gatos. Leyendo\nhistorias derviches. Amasando el pan que como. Con un ramito de flores sobre la mesa.', '14hs - 16hs', '1 de diciembre 2021'),
('seis6', 'Alma Gamerro', 'Alma Candela Gamerro (Buenos Aires, 2000) es artista visual especializada en pintura. Estudia Artes\nVisuales en la Universidad Nacional de las Artes y asiste a la clínica y el taller de Diana Aisenberg\ndesde 2017. También se formó en diversos oficios manuales como la joyería, el diseño de indumentaria y\nel maquillaje prostético para efectos especiales. Participó de las muestras: “A quien mira mi engaño”\n(2020), muestra colectiva virtual convocada por KDA; “Festival Minerva en Malabia Town” (2019), muestra\ncolectiva convocada por Revista Minerva; y “Festival Bambú” (2019), muestra de obra personal y show de\npintura en vivo convocada por Martín Alegre.\n\nEn la obra de Alma Gamerro, se forma el nexo entre el mundo de la alta Historia del Arte −la forma\nacadémica, lo limpio, lo puro y lo sagrado− con el mundo de las más extrañas influencias: la cultura\nbizarra, lo oscuro, lo pasional, lo ostentoso y lo perverso. Manejándose con un amplio abanico de\nmateriales que van desde el óleo y el lápiz hasta el uso de cuentas plásticas y bordados, su obra goza\nde una picardía desde sus cimientos en favor de crear imágenes que contengan la tensión entre estos\nmundos. Estas obras están constituidas sobre un amplio universo cargado de imaginería bíblica, así como\ntambién la recurrencia del uso de rostros y cuerpos sometidos a bizarras deformaciones. Es en la fusión\nde aquellos elementos que logra dotar a su obra de una sensación de interioridad, de inmanencia; se crea\nasí en estas relaciones el suelo y las condiciones para que este mundo interior en constante tensión\nflorezca.', '18hs - 20hs', '1 de diciembre 2021');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `charlas`
--

CREATE TABLE `charlas` (
  `id` int(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `fecha` varchar(255) NOT NULL,
  `horario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `charlas`
--

INSERT INTO `charlas` (`id`, `nombre`, `fecha`, `horario`) VALUES
(4, 'Francisco Vazquez Murillo', '29 de Noviembre 2021', '18hs - 20hs');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galerias`
--

CREATE TABLE `galerias` (
  `id` int(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `stand` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `galerias`
--

INSERT INTO `galerias` (`id`, `nombre`, `descripcion`, `direccion`, `stand`) VALUES
(1, 'Galería Selvanegra', 'Selvanegra es una galería de arte contemporáneo que nace en noviembre de 2017 bajo la dirección y el deseo de Silvina y Josefina Sícoli. La galería funciona en una ochava, dentro del circuito de Villa Crespo, con vidrieras a la calle que facilitan la interacción con el barrio y el público general a través de actividades y exposiciones propuestas hacia afuera. La situación de vidriera, y la historia reciente del local como comercio y espacio de arte, son características que potencian cada exhibición. Selvanegra es un proyecto de gestión y comercialización de obras de artistas trabajadoras. Propicia un espacio de experimentación y pensamiento, haciendo foco en los feminismos, con la intención de promover un vínculo entre el circuito artístico y el mercado del arte.', 'Gurruchaga 301, Buenos Aires ', 'F4 - Factor'),
(2, 'Isla Flotante', 'Creemos que ser artista está cada vez más cerca de la gestión y del desarrollo de lazos de cooperación, es por esto que nos parece fundamental señalar este estado de situación, en donde el rol del artista ya no es único sino múltiple y móvil. Somos un espacio autogestionado no como último recurso, sino como reivindicación del ser artista hoy.', 'Viamonte 776, Buenos Aires', 'F11 - Factor'),
(3, 'Gachi Pietro', 'Gachi Prieto es una plataforma de producción, investigación y reflexión en el campo del arte contemporáneo latinoamericano. Desde Buenos Aires, trabaja con el compromiso pleno de promover proyectos y artistas que formen parte de este complejo sistema, buscando constantemente nuevos significados y enfocando su trabajo en la experimentación y el respeto a los procesos creativos. Ubicada en el barrio de Palermo, con un espacio de 200 m2 la galería apunta a la posibilidad de jerarquizar la exhibición de los formatos de obra más contemporáneos y se constituye como un lugar abierto de interacción, encuentros y experiencias compartidas entre el público y lxs artistas, para fomentar la discusión y expandir el campo de creación, producción, circulación y comercialización de arte.', 'Uriarte 1373, Buenos Aires', 'F16 - Arena 1'),
(4, 'Waldengallery', 'Waldengallery emerge con la intención de tender puentes y reflexionar con criterio en torno a procesos artísticos, condiciones de producción, consumos culturales y vínculos político-afectivos entre obras, creadores, gestores, instituciones y espectadores. Ocupa hoy el espacio histórico que alojó al mítico CAyC (Centro de Arte y Comunicación), institución responsable de la internacionalización del arte local y latinoamericano entre 1960 y finales de los 90. Continuando con ese espíritu experimental, la galería fomenta el diálogo permanente entre artistas de distintas generaciones. Además de un nutrido calendario anual de exhibiciones y la participación en ferias internacionales, waldengallery cuenta con su propio sello editorial. En febrero de 2009 presentó “Yulinda”, una publicación trimestral que pretende construirse como un espacio de difusión, discusión y pensamiento, que despierte interrogantes y aliente investigaciones venideras sobre prácticas artísticas contemporáneas.', 'Viamonte 452, Buenos Aires', 'F7 - Arena 1'),
(5, 'Galería Nora Fisch', 'En 2020 la galería desarrolló una serie de publicaciones online titulada “Orgullo y Prejuicio. Arte en Argentina en los 90 y después”. De la mano del especialista Francisco Lemus exploramos los desarrollos de esa década que marcaron al arte argentino entonces y hasta hoy. En este arteba traemos a lo presencial algunos de esos artistas y expandimos nuestra propuesta hacia el presente con base en dos ejes que estuvieron y hoy siguen siendo significativos: por un lado, la pintura, el collage, la revalorización de lo artesanal; por otro, la expresión de género y el espíritu irreverente. Utilizando estos ejes presentamos un panorama del programa de la galería. En arteba podrá verse obra de quienes fueron centrales a la escena del arte de los 90 como Alfredo Londaibere, Alberto Goldenstein, Fernanda Laguna, Raúl Flores, Lux Lindner. Y a través de ambos ejes temáticos exhibiremos obra de Silvia Gurfein, Sofía Bohtlingk, Tiziana Pierri, Amadeo Azar y Guzmán Paz.', 'Av. Córdoba 5222, Buenos Aires', 'F12 - Arena 1'),
(6, 'Palatina', 'Galería Palatina abrió sus puertas en 1975. Desde aquel entonces ha representado a artistas argentinos de la talla de Carlos Alonso, Antonio Pujía, Alberto Bastón Díaz, Lucrecia Orloff, Cristina Santander, Teresa Pereda. También ha exhibido obra de artistas modernos uruguayos como Pedro Figari, Rafael Barradas, José Gurvich y Joaquín Torres García. Actualmente, además de dedicarse al mercado secundario de artistas modernos, representa a un número creciente de artistas jóvenes.', 'Arroyo 821, Buenos Aires', 'Participación virtual'),
(7, 'Galería Sendros', 'Somos una galería de arte contemporáneo especializada en el lanzamiento y visibilización de nuevos artistas.', 'Wenceslao Villafañe 584, Buenos Aires', 'F9 - Arena 2'),
(8, 'COSMOCOSA', 'Cosmocosa se funda en el año 2011, con un modelo distintivo de galería de arte moderno y contemporáneo. Su fundadora, Amparo Díscoli (Buenos Aires, 1980), comenzó como marchand y editora de arte independiente a tiempo completo desde 2004. Gradualmente fue transformándose en una galería que propuso tres áreas de práctica: la representación de artistas y/o sus legados; proyectos de investigación; y asesoría personalizada para clientes privados y corporativos. El programa de la galería ha ganado reputación por la calidad y el enfoque de sus proyectos de investigación; el patrimonio de artistas que representa, distribuyendo regularmente sus obras en museos y colecciones privadas a nivel local e internacional; y su capacidad para trabajar de la mano integrando a los diferentes actores y esferas del mundo del arte. La galería ha servido a museos, no solo con obras de arte, sino también con exposiciones derivadas directamente de sus proyectos de investigación. En una planta baja de estilo parisino en el barrio de Recoleta de Buenos Aires, funciona como un gabinete de alto contraste con sus propuestas de vanguardia.', 'Montevideo 1430, PB, Buenos Aires', 'F10 - Arena 2'),
(9, 'Valerie', 'Valerie es una galería de arte contemporáneo dirigida por las artistas Valentina Quintero y Jimena Lusi. Es un espacio de cruce de lenguajes teniendo como núcleo las artes visuales, que pondera el trabajo colaborativo entre artistas, diseñadorxs, músicxs, curadorxs y gestorxs. Nos excitan los desafíos y lxs artistas apasionadxs, la moda y el futuro, las obras que auguran ese espíritu que ama los días de sol, las girl-girls, las boy girls, los girl-boys y los boy-boys. Nuestra utopía tiene objetivos múltiples;es proyectar una imagen de potencialidad y posibilidad en nombre de otro tiempo y otro lugar, socavando el tejido de la realidad. Una imagen intermedial del futuro, negamos el presente que nos entristece. Nuestrx organismo como una ilegalidad, ninguna legalidad excepto el placer. Nuestra factoría.', 'Pasaje San Martín, Av. San Martín 1136, Mendoza', 'F16 - Factor'),
(10, 'Ruth Benzacar ', 'Desde su fundación en 1965, Ruth Benzacar ha estado comprometida con la promoción del arte contemporáneo, enfocándose en la obra de artistas argentinos. El calendario anual de la galería incluye cinco exhibiciones que tienen lugar en su espacio principal. En 2021 renovó una propiedad adyacente e inauguró una segunda sala de exposiciones que permitirá albergar muestras adicionales. Con el convencimiento de que el arte contemporáneo es un actor social y político importante en todos los contextos, Ruth Benzacar organiza y acoge otros eventos como conversaciones públicas, presentaciones de libros y performances que acompañan y enriquecen los contenidos de cada exposición. Ruth Benzacar ha sido pionera en la inserción del arte latinoamericano en la escena mundial. También ha podido generar y mantener una fuerte presencia internacional debido a su participación constante en ferias de arte y sus conexiones de larga data con curadores, instituciones y coleccionistas de todo el mundo. Ruth Benzacar ha participado en ferias como ARCO Madrid (desde 1988) y Art Basel Miami Beach (desde 2001).', 'Juan Ramírez de Velasco 1287, Buenos Aires', 'F7 - Arena 2');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `charlas`
--
ALTER TABLE `charlas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `charlas`
--
ALTER TABLE `charlas`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
