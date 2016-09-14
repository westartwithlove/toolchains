use Mix.Config

version =
  Path.join(__DIR__, "VERSION")
  |> File.read!
  |> String.strip

config :nerves_toolchain_arm_unknown_linux_gnueabihf, :nerves_env,
  type: :toolchain,
  version: version,
  target_tuple: :arm_unknown_linux_gnueabihf,
  platform: Nerves.Toolchain.CTNG