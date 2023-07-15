module apps.kanban.controllers.pages.error;

import apps.kanban;
@safe:

class DErrorPageController : DPageController {
  mixin(ControllerThis!("ErrorPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(ErrorView(this));
  }
}
mixin(ControllerCalls!("ErrorPageController"));
