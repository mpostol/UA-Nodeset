:: Recovering ModelDesign from UANodeSet OPC UA Model Information
:: %1 - location of the asp.exe 
del %1\asp.log  /q
del %1\asp.warnings.log /q
%1\asp "..\..\DI\Opc.Ua.Di.NodeSet2.xml" "..\Opc.Ua.CSPPlusForMachine.NodeSet2.xml" -e "Opc.Ua.CSPPlusForMachine.Model.xml" -s XMLstylesheet -n "http://opcfoundation.org/UA/CSPPlusForMachine/"
xcopy %1\asp.log asp.log /y
xcopy %1\asp.warnings.log .\asp.warnings.log /y /i


