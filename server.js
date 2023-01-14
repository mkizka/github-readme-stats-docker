import express from "express";
import api from "./api/index.js";
import pin from "./api/pin.js";
import topLangs from "./api/top-langs.js";
import wakatime from "./api/wakatime.js";
const app = express();
function overwriteQuery(handler) {
  return (req, res) => {
    req.query.username = "mkizka";
    return handler(req, res);
  };
}
app.get("/api", overwriteQuery(api));
app.get("/api/pin", overwriteQuery(pin));
app.get("/api/top-langs", overwriteQuery(topLangs));
app.get("/api/wakatime", overwriteQuery(wakatime));
app.listen(3000);
