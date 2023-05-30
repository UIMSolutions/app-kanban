module apps.kanban.controllers.pages.error;

import apps.kanban;
@safe:

class DMYNAMEErrorPageController : DAPPPageController {
  mixin(ControllerThis!("MYNAMEErrorPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(MYNAMEErrorView(this));
  }
}
mixin(ControllerCalls!("MYNAMEErrorPageController"));
