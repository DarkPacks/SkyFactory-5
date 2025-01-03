#priority 100

public enum ColorName {
  None = "NONE",
  Red = "RED",
  Green = "GREEN",
  Lime = "LIME",
  Blue = "BLUE",
  LightBlue = "LIGHT_BLUE",
  Gray = "GRAY",
  LightGray = "LIGHT_GRAY",
  Yellow = "YELLOW",
  Purple = "PURPLE",
  Magenta = "MAGENTA",
  Pink = "PINK",
  White = "WHITE",
  Black = "BLACK",
  Brown = "BROWN",
  LightBrown = "LIGHT_BROWN",
  Cyan = "CYAN",
  Orange = "ORANGE",
  RGB = "RGB";
}

public class Color {
  private val colorName as ColorName;
  private val displayName as string;
  private val resourceName as string;
  private val decimalValue as int;

  public this(colorName: ColorName, displayName: string, resourceName: string, decimalValue: int) {
    this.colorName = colorName;
    this.displayName = displayName;
    this.resourceName = resourceName;
    this.decimalValue = decimalValue;
  }

  public getName(): ColorName {
    return this.colorName;
  }

  public getDisplayName(): string {
    return this.displayName;
  }

  public getResourceName(): string {
    return this.resourceName;
  }

  public asHexString(): string {
    return this.decimalValue.toHexString();
  }

  public asDecimal(): int {
    return this.decimalValue;
  }
}
