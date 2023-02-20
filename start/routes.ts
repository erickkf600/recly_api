import Route from "@ioc:Adonis/Core/Route";
Route.get("/", () => "Recly API");


Route.post("/login", async (ctx) => {
  const { default: AuthController } = await import(
    "App/Controllers/Http/AuthController"
  );
  return new AuthController().login(ctx);
});

Route.post("/register", async (ctx) => {
  const { default: AuthController } = await import(
    "App/Controllers/Http/AuthController"
  );
  return new AuthController().register(ctx);
});

Route.get("/shedule", async () => {
  const { default: ShedulesController } = await import(
    "App/Controllers/Http/ShedulesController"
  );
  return new ShedulesController().show();
});

Route.post("/shedule", async (ctx) => {
  const { default: ShedulesController } = await import(
    "App/Controllers/Http/ShedulesController"
  );
  return new ShedulesController().register(ctx);
});

Route.put("/shedule/:id", async (ctx) => {
  const { default: ShedulesController } = await import(
    "App/Controllers/Http/ShedulesController"
  );
  return new ShedulesController().update(ctx);
});


