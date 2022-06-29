CREATE TABLE `arbres` (id VARCHAR(300) PRIMARY KEY, `taille.h` LONGTEXT, `taille.p` LONGTEXT, `nom` LONGTEXT, `info.genre` LONGTEXT, `info.espece` LONGTEXT, `info.stade_developpement` LONGTEXT, `geo.type` LONGTEXT, `geo.coordinates` LONGTEXT, `geoposition` POINT, `meta.arrondissement` LONGTEXT, `meta.adresse` LONGTEXT);
CREATE TABLE `arbres-remarquables` (id VARCHAR(300) PRIMARY KEY, `taille.h` LONGTEXT, `taille.p` LONGTEXT, `nom` LONGTEXT, `info.genre` LONGTEXT, `info.espece` LONGTEXT, `info.stade_developpement` LONGTEXT, `geo.type` LONGTEXT, `geo.coordinates` LONGTEXT, `geoposition` POINT, `meta.arrondissement` LONGTEXT, `meta.adresse` LONGTEXT, `date` LONGTEXT);
CREATE TABLE `espaces-verts` (id VARCHAR(300) PRIMARY KEY, `nom` LONGTEXT, `date.annee` LONGTEXT, `info.categorie` LONGTEXT, `info.cloture` LONGTEXT, `info.ouvert_h24` LONGTEXT, `info.type` LONGTEXT, `info.part_vegetation_haut` LONGTEXT, `taille.surface` LONGTEXT, `taille.surface_horticole` LONGTEXT, `taille.perimetre` LONGTEXT, `geo.coordinates` LONGTEXT, `geoposition` POINT, `geo.type` LONGTEXT, `meta.nsq_ev` LONGTEXT, `meta.adresse` LONGTEXT, `meta.arrondissement` LONGTEXT, `ouverture.h24` LONGTEXT, `ouverture.nuit_ete` LONGTEXT, `ouverture.canicule` LONGTEXT, `horaires.periode` LONGTEXT, `horaires.lundi` LONGTEXT, `horaires.mardi` LONGTEXT, `horaires.mercredi` LONGTEXT, `horaires.jeudi` LONGTEXT, `horaires.vendredi` LONGTEXT, `horaires.samedi` LONGTEXT, `horaires.dimanche` LONGTEXT);
CREATE TABLE `historique` (id VARCHAR(300) PRIMARY KEY, `date` LONGTEXT, `geo.type` LONGTEXT, `geo.coordinates` LONGTEXT, `geoposition` POINT);
CREATE TABLE `jardins-partages` (id VARCHAR(300) PRIMARY KEY, `nom` LONGTEXT, `info.gerant` LONGTEXT, `info.type_ev` LONGTEXT, `info.type_jardin` LONGTEXT, `info.proprietaire` LONGTEXT, `info.amenagements` LONGTEXT, `lien.mail.0` LONGTEXT, `geo.coordinates` LONGTEXT, `geoposition` POINT, `geo.type` LONGTEXT, `meta.adresse` LONGTEXT, `info.date_fermeture` LONGTEXT, `lien.web.0` LONGTEXT, `lien.web.1` LONGTEXT, `lien.mail.1` LONGTEXT);
CREATE TABLE `textes` (id VARCHAR(300) PRIMARY KEY, `info.author` LONGTEXT, `info.source` LONGTEXT, `info.category` LONGTEXT, `info.contenu` LONGTEXT, `meta.img` LONGTEXT, `meta.adresse` LONGTEXT, `geo` LONGTEXT, `nom` LONGTEXT);
