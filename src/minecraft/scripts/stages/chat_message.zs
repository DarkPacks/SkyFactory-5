import mods.gamestages.events.GameStageAdded;

// TODO: Messages should use lang keys
// Send a message when the player recieves certain stages
events.register<GameStageAdded>((event) => {
  var message: string = "";

  switch event.stage {
    case "brown":
      message = "你的调色板中恢复了棕色";
      break;
    case "black":
      message = "你的调色板中恢复了黑色";
      break;
  }

  if !message.empty {
    event.entity.sendMessage(message);
  }
});
