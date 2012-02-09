using System;

namespace Calindor
{
	public interface ILogger
	{		
		void Log(string message);
		void Debug(string message);
		void ErrorLog(string message);
		void ErrorLog(string message,Exception ex);
	}
}
