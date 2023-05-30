module apps.kanban.views.index;

import apps.kanban;
@safe:

class DMYNAMEIndexView : DView {
  mixin(ViewThis!("MYNAMEIndexView"));

  override DH5Obj[] toH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DMYNAMEIndexView~":DMYNAMEIndexView("~this.name~")::toH5");
    super.toH5(options);

    return [
      H5Div("APP kanban -> Error")
    ].toH5;
  }
}
mixin(ViewCalls!("MYNAMEIndexView"));
