{
  lib,
  buildHomeAssistantComponent,
  fetchFromGitHub,
  hahomematic,
}:

buildHomeAssistantComponent rec {
  owner = "danielperna84";
  domain = "homematicip_local";
  version = "1.74.0";

  src = fetchFromGitHub {
    owner = "danielperna84";
    repo = "custom_homematic";
    rev = "refs/tags/${version}";
    hash = "sha256-UdM/T68VK3Dh585rm3qnZ9LtRgpumfzk4TaGGIfYdoM=";
  };

  dependencies = [
    hahomematic
  ];

  meta = {
    changelog = "https://github.com/danielperna84/custom_homematic/blob/${version}/changelog.md";
    description = "Custom Home Assistant Component for HomeMatic";
    homepage = "https://github.com/danielperna84/custom_homematic";
    maintainers = with lib.maintainers; [ dotlambda ];
    license = lib.licenses.mit;
  };
}
