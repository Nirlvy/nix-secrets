let
  nirlvy = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHu883l55ki3mgiDfGRmN4H/3Pi1NXQkBAgCsvLhhvmH nirlvy@NullPointer";

  NullPointer = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIF+oInk8j7ldDXpzhmsN2xGFcMdAuOOT7fz+k7Knr+vD root@NullPointer";

  users = [ nirlvy ];
  systems = [ NullPointer ];
in
{
  "passwd.age".publicKeys = users ++ systems;
  "sub.age".publicKeys = users ++ systems;
}
