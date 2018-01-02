# Catch multiple exceptions in one block

try { 
  ...
} catch (IOException | SQLException ex) { 
  ...
}
