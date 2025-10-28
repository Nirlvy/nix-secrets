let
  nirlvy-NullPointer = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHu883l55ki3mgiDfGRmN4H/3Pi1NXQkBAgCsvLhhvmH nirlvy@NullPointer";
  nirlvy-WSL = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJATGVjUaVha5Isd3ErOgRaXF6g/tnVfFxGtRNMEjXXH nirlvy@outlook.com";
  nirlvy-Runtime = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJRasPsthH1cKvQEtPeaEnFNP3iIQ9mvwb7edVK3WDPd nirlvy@Runtime";

  NullPointer = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIF+oInk8j7ldDXpzhmsN2xGFcMdAuOOT7fz+k7Knr+vD root@NullPointer";
  Runtime = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIM6B4hN3CizDPB1hAB2gL41Gbx5O1mMYVEOtlum9ToNm root@Runtime";
  WSL = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIC9Uu0/Kx8Pw/05/FxFsXlRqqLgv7Z85vtskRg4LIQOt root@WSL";

  users = [ nirlvy-NullPointer nirlvy-WSL nirlvy-Runtime ];
  systems = [ NullPointer WSL Runtime ];
in
{
  "passwd.age".publicKeys = users ++ systems;
  "sub.age".publicKeys = users ++ systems;
}
