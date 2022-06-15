import { onClose, onStart, openFirstPage } from "./dom/dom.js";
import { mapControl } from "./dom/map.js";
import { updateVh } from "./misc.js";
import { getPageFromHref, on, useAttemptedHref } from "./history.js";
// import * as BASE_DATA from "./data_manager/basedata.js";
import * as BASEDATA from "./data_manager/bd.js";
import * as USERDATA from "./data_manager/ud.js";
import { accueil__setMap, accueil__mapCursor } from "../pages/accueil/script.js";
import { explorer__unhide, explorer__hide, explorer__manageMenu, explorer__initMenu, explorer__initGeoloc, explorer__initContext, explorer__initSearch } from "../pages/explorer/script.js";
import { decouvrir__init } from "../pages/decouvrir/script.js";

import "./search.js"

$(window).on('resize', updateVh);
updateVh();

_.templateSettings.interpolate = /{{([\s\S]+?)}}/g;

// BASE_DATA.initData();
BASEDATA.initData();
USERDATA.initData();

onStart.accueil = () => {
    accueil__setMap();
    accueil__mapCursor();
    mapControl(false);
}
onClose.accueil = async () => {}

onStart.explorer = () => {
    explorer__unhide();
    explorer__manageMenu();
    mapControl(true, $(".hud"));
    explorer__initMenu();
    explorer__initGeoloc();
    explorer__initContext();
    explorer__initSearch();
}
onClose.explorer = async () => {
    // await explorer__hide();
}

onStart.decouvrir = () => {
    decouvrir__init();
}

onClose.decouvrir = async () => {}


useAttemptedHref();
openFirstPage(getPageFromHref() || 'accueil');
