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
public import uim.controls;
public import uim.servers;

public import langs.javascript;

public {
  import apps.kanban.controllers;
  import apps.kanban.helpers;
  import apps.kanban.routers;
  import apps.kanban.tests;
  import apps.kanban.views;
}

DApp kanbanApp;
static this() {
  kanbanApp = App
    .name("kanbanApp")
    .rootPath("/apps/kanban")
    .addRoute(Route("", HTTPMethod.GET, MYNAMEIndexPageController))
    .addRoute(Route("/", HTTPMethod.GET, MYNAMEIndexPageController));
}
