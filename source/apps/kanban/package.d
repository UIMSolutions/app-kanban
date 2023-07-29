module apps.kanban;

mixin(ImportPhobos!());

// External
public {
  import vibe.d;
}

// UIM
public import uim.core;
public import uim.bootstrap;
public import uim.html;
public import uim.oop;
public import uim.models;
public import uim.apps;
public import web.controls;
public import uim.servers;

public import langs.javascript;

public {
  import apps.kanban.controllers;
  import apps.kanban.helpers;
  import apps.kanban.routers;
  import apps.kanban.tests;
  import apps.kanban.views;
}

static this() {
  // Create app
  auto myApp = App("kanbanApp", "apps/kanban");

  // Customize app
  with(myApp) {
    importTranslations;
    addControllers([
      "kanban.index": IndexPageController
    ]);
    addRoutes(
      Route("", HTTPMethod.GET, controller("kanban.index")),
      Route("/", HTTPMethod.GET, controller("kanban.index"))
    );
  }
  
  // Register app
  AppRegistry.register("apps.kanban", myApp);
}
