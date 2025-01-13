export interface GatewayOverrides {
  /** Overrides the default mob spawn count for gateways */
  spawnCount?: number;
  /** Overrides the spacing rule for gateways */
  spacing?: number;
  /** Overrides the leash range rule for gateways */
  leashRange?: number;
  /** Prevents the generator from applying scaling modifiers on the entity */
  preventScaling?: boolean;
  /** Prevents the generator from applying speed modifiers on the entity */
  preventSpeedModifiers?: boolean;
  /** Determines if the entity should be allowed to have additional attributes added */
  finalizeGatewayEntitySpawn?: boolean;
}
