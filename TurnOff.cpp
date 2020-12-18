/*
TurnOff Version-1.0
Copyright (C) 2018-2020 MathInDOS
License: GNU GPLv3
*/

#include <iostream>
#include <windows.h>

#ifndef EWX_RESTARTAPPS
#define EWX_RESTARTAPPS 0x00000040
#endif

// Special Help
// https://docs.microsoft.com/en-us/windows/win32/api/winuser/nf-winuser-exitwindowsex?redirectedfrom=MSDN

using namespace std;

int main(int argc, char *argv[])
{
	HANDLE hTok;
	TOKEN_PRIVILEGES tkp;
	if(argv[1]==nullptr)return 0;
	if(!strcmp(argv[1], "-h") || !strcmp(argv[1], "-help") || !strcmp(argv[1], "/?") || !strcmp(argv[1], "-?"))
	{
		cout << "TurnOff Version-1.0" << endl
		<< "Copyright (C) 2018-2020 MathInDOS" << endl
		<< "Build Date: 18 December 2020 (Friday)" << endl << endl
		<< "Usages: TurnOff [-l | -p | -r | -rapps | -s | -fs | -fsh | -" << endl << endl;
		// explain
		return 0;
	}
	else if(!strcmp(argv[1], "-l"))
	{
		if(!OpenProcessToken(GetCurrentProcess(), TOKEN_ADJUST_PRIVILEGES | TOKEN_QUERY, &hTok))return(false);
		LookupPrivilegeValue(nullptr, SE_SHUTDOWN_NAME, &tkp.Privileges[0].Luid);
		tkp.PrivilegeCount = 1;
		tkp.Privileges[0].Attributes = SE_PRIVILEGE_ENABLED;
		
		AdjustTokenPrivileges(hTok, FALSE, &tkp, 0, 
        (PTOKEN_PRIVILEGES)nullptr, 0); 
		
		if(GetLastError() != ERROR_SUCCESS)return false;
		
		ExitWindowsEx(EWX_LOGOFF | EWX_FORCE, SHTDN_REASON_FLAG_PLANNED);
		return 0;
	}
	else if(!strcmp(argv[1], "-p"))
	{
		if(!OpenProcessToken(GetCurrentProcess(), TOKEN_ADJUST_PRIVILEGES | TOKEN_QUERY, &hTok))return(false);
		LookupPrivilegeValue(nullptr, SE_SHUTDOWN_NAME, &tkp.Privileges[0].Luid);
		tkp.PrivilegeCount = 1;
		tkp.Privileges[0].Attributes = SE_PRIVILEGE_ENABLED;
		
		AdjustTokenPrivileges(hTok, FALSE, &tkp, 0, 
        (PTOKEN_PRIVILEGES)nullptr, 0); 
		
		if(GetLastError() != ERROR_SUCCESS)return false;
		
		ExitWindowsEx(EWX_POWEROFF | EWX_FORCE, SHTDN_REASON_MAJOR_OPERATINGSYSTEM | SHTDN_REASON_MINOR_UPGRADE | SHTDN_REASON_FLAG_PLANNED);
		return 0;
	}
	else if(!strcmp(argv[1], "-r"))
	{
		if(!OpenProcessToken(GetCurrentProcess(), TOKEN_ADJUST_PRIVILEGES | TOKEN_QUERY, &hTok))return(false);
		LookupPrivilegeValue(nullptr, SE_SHUTDOWN_NAME, &tkp.Privileges[0].Luid);
		tkp.PrivilegeCount = 1;
		tkp.Privileges[0].Attributes = SE_PRIVILEGE_ENABLED;
		
		AdjustTokenPrivileges(hTok, FALSE, &tkp, 0, 
        (PTOKEN_PRIVILEGES)nullptr, 0); 
		
		if(GetLastError() != ERROR_SUCCESS)return false;
		
		ExitWindowsEx(EWX_REBOOT | EWX_FORCE, SHTDN_REASON_MAJOR_OPERATINGSYSTEM | SHTDN_REASON_MINOR_UPGRADE | SHTDN_REASON_FLAG_PLANNED);
		return 0;
	}
	else if(!strcmp(argv[1], "-rapps"))
	{
		if(!OpenProcessToken(GetCurrentProcess(), TOKEN_ADJUST_PRIVILEGES | TOKEN_QUERY, &hTok))return(false);
		LookupPrivilegeValue(nullptr, SE_SHUTDOWN_NAME, &tkp.Privileges[0].Luid);
		tkp.PrivilegeCount = 1;
		tkp.Privileges[0].Attributes = SE_PRIVILEGE_ENABLED;
		
		AdjustTokenPrivileges(hTok, FALSE, &tkp, 0, 
        (PTOKEN_PRIVILEGES)nullptr, 0); 
		
		if(GetLastError() != ERROR_SUCCESS)return false;
		
		ExitWindowsEx(EWX_RESTARTAPPS | EWX_FORCE, SHTDN_REASON_MAJOR_OPERATINGSYSTEM | SHTDN_REASON_MINOR_UPGRADE | SHTDN_REASON_FLAG_PLANNED);
		return 0;
	}
	else if(!strcmp(argv[1], "-s"))
	{
		if(!OpenProcessToken(GetCurrentProcess(), TOKEN_ADJUST_PRIVILEGES | TOKEN_QUERY, &hTok))return(false);
		LookupPrivilegeValue(nullptr, SE_SHUTDOWN_NAME, &tkp.Privileges[0].Luid);
		tkp.PrivilegeCount = 1;
		tkp.Privileges[0].Attributes = SE_PRIVILEGE_ENABLED;
		
		AdjustTokenPrivileges(hTok, FALSE, &tkp, 0, 
        (PTOKEN_PRIVILEGES)nullptr, 0); 
		
		if(GetLastError() != ERROR_SUCCESS)return false;
		
		ExitWindowsEx(EWX_SHUTDOWN | EWX_FORCE, SHTDN_REASON_MAJOR_OPERATINGSYSTEM | SHTDN_REASON_MINOR_UPGRADE | SHTDN_REASON_FLAG_PLANNED);
		return 0;
	}
	else if(!strcmp(argv[1], "-fs"))
	{
		if(!OpenProcessToken(GetCurrentProcess(), TOKEN_ADJUST_PRIVILEGES | TOKEN_QUERY, &hTok))return(false);
		LookupPrivilegeValue(nullptr, SE_SHUTDOWN_NAME, &tkp.Privileges[0].Luid);
		tkp.PrivilegeCount = 1;
		tkp.Privileges[0].Attributes = SE_PRIVILEGE_ENABLED;
		
		AdjustTokenPrivileges(hTok, FALSE, &tkp, 0, 
        (PTOKEN_PRIVILEGES)nullptr, 0); 
		
		if(GetLastError() != ERROR_SUCCESS)return false;
		
		ExitWindowsEx(EWX_SHUTDOWN | EWX_FORCE, SHTDN_REASON_MAJOR_OPERATINGSYSTEM | SHTDN_REASON_MINOR_UPGRADE | SHTDN_REASON_FLAG_PLANNED);
		return 0;
	}
	else if(!strcmp(argv[1], "-fsh"))
	{
		if(!OpenProcessToken(GetCurrentProcess(), TOKEN_ADJUST_PRIVILEGES | TOKEN_QUERY, &hTok))return(false);
		LookupPrivilegeValue(nullptr, SE_SHUTDOWN_NAME, &tkp.Privileges[0].Luid);
		tkp.PrivilegeCount = 1;
		tkp.Privileges[0].Attributes = SE_PRIVILEGE_ENABLED;
		
		AdjustTokenPrivileges(hTok, FALSE, &tkp, 0, 
        (PTOKEN_PRIVILEGES)nullptr, 0); 
		
		if(GetLastError() != ERROR_SUCCESS)return false;
		
		ExitWindowsEx(EWX_SHUTDOWN | EWX_FORCEIFHUNG, SHTDN_REASON_MAJOR_OPERATINGSYSTEM | SHTDN_REASON_MINOR_UPGRADE | SHTDN_REASON_FLAG_PLANNED);
		return 0;
	}
	else if(!strcmp(argv[1], "-fph"))
	{
		if(!OpenProcessToken(GetCurrentProcess(), TOKEN_ADJUST_PRIVILEGES | TOKEN_QUERY, &hTok))return(false);
		LookupPrivilegeValue(nullptr, SE_SHUTDOWN_NAME, &tkp.Privileges[0].Luid);
		tkp.PrivilegeCount = 1;
		tkp.Privileges[0].Attributes = SE_PRIVILEGE_ENABLED;
		
		AdjustTokenPrivileges(hTok, FALSE, &tkp, 0, 
        (PTOKEN_PRIVILEGES)nullptr, 0); 
		
		if(GetLastError() != ERROR_SUCCESS)return false;
		
		ExitWindowsEx(EWX_POWEROFF | EWX_FORCEIFHUNG, SHTDN_REASON_MAJOR_OPERATINGSYSTEM | SHTDN_REASON_MINOR_UPGRADE | SHTDN_REASON_FLAG_PLANNED);
		return 0;
	}
	else if(!strcmp(argv[1], "-flh"))
	{
		if(!OpenProcessToken(GetCurrentProcess(), TOKEN_ADJUST_PRIVILEGES | TOKEN_QUERY, &hTok))return(false);
		LookupPrivilegeValue(nullptr, SE_SHUTDOWN_NAME, &tkp.Privileges[0].Luid);
		tkp.PrivilegeCount = 1;
		tkp.Privileges[0].Attributes = SE_PRIVILEGE_ENABLED;
		
		AdjustTokenPrivileges(hTok, FALSE, &tkp, 0, 
        (PTOKEN_PRIVILEGES)nullptr, 0); 
		
		if(GetLastError() != ERROR_SUCCESS)return false;
		
		ExitWindowsEx(EWX_LOGOFF | EWX_FORCEIFHUNG, SHTDN_REASON_MAJOR_OPERATINGSYSTEM | SHTDN_REASON_MINOR_UPGRADE | SHTDN_REASON_FLAG_PLANNED);
		return 0;
	}
}

