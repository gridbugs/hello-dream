let () =
  Dream.run ~interface:"0.0.0.0"
  @@ Dream.logger
  @@ Dream.router
       [
         Dream.get "/" (fun _ -> Dream.html (Template.render ()));
         Dream.get "/static/**" (Dream.static "./_build/default/");
         (* obviously insecure! TODO: add "static" dir and work out how to
            refer to the correct dir without explicitly referencing _build *)
       ]
