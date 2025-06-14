let
  nirlvy = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHu883l55ki3mgiDfGRmN4H/3Pi1NXQkBAgCsvLhhvmH nirlvy@NullPointer";
  nirlvy-wsl = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJATGVjUaVha5Isd3ErOgRaXF6g/tnVfFxGtRNMEjXXH nirlvy@outlook.com";

  NullPointer = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIF+oInk8j7ldDXpzhmsN2xGFcMdAuOOT7fz+k7Knr+vD root@NullPointer";
  WSL = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIC9Uu0/Kx8Pw/05/FxFsXlRqqLgv7Z85vtskRg4LIQOt root@WSL";

  users = [
    nirlvy
    nirlvy-wsl
  ];
  systems = [
    NullPointer
    WSL
  ];
in
{
  "passwd.age".publicKeys = users ++ systems;
  "sub.age".publicKeys = users ++ systems;
  "sub.yaml.age".publicKeys = users ++ systems;
}
