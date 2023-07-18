module apps.kanban;

mixin(ImportPhobos!());

// Dub
public import vibe.d;

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
  AppRegistry.register("apps.kanban",
    App("kanbanApp", "apps/kanban")
      .importTranslations()
      .addRoutes(
        Route("", HTTPMethod.GET, IndexPageController),
        Route("/", HTTPMethod.GET, IndexPageController)
      )
    );
}
