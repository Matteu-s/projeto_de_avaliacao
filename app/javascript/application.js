// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails";
import "controllers";
import "color-modes";
import "bootstrap.bundle.min";

document.addEventListener("turbo:load", function () {
  if (typeof ClipboardJS === "function") {
    var clipboard = new ClipboardJS(".copy");

    clipboard.on("success", function (e) {
      toastr.info("ID Copiado com sucesso!");
      e.clearSelection();
    });

    clipboard.on("error", function (e) {
      toastr.error("Erro ao copiar texto: " + e.action);
    });
  } else {
    console.error(
      "ClipboardJS não está definido. Verifique se a biblioteca foi carregada corretamente."
    );
  }
});

