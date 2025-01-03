# Windows-Display-Timeout-Toggle
Switch Between Two modes for display idle timeout.

Replace SCHEME_BALANCED in line 3 to your own power plan scheme alias.
To get the alias, follow these steps:
1. Open Powershell Windows in Administrator.
2. Run `powercfg /getactivescheme` and copy the output GUID value(not the entire output).
3. Run `powercfq /query <your guid value>` and in the second line of the output there will be your GUID Alias. (Note: If there is no Alias in the second line use the entire GUID Value in place of the Alias.
4. Copy this Alias and replace in the ps1 file.
