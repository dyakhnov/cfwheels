component extends="wheels.Controller" {
  function init() {
    protectFromForgery(only="create");
  }

  function index() {
    renderText("Index ran.");
  }

  function create() {
    renderText("Create ran.");
  }
}
