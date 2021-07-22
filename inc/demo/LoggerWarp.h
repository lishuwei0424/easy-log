#pragma once
#include <iostream>
#include <log4cxx/logger.h>  
#include <log4cxx/basicconfigurator.h>  
#include <log4cxx/propertyconfigurator.h>  
#include <log4cxx/helpers/exception.h> 
#include <string.h>
#include <stdarg.h>
using namespace log4cxx;
using namespace log4cxx::helpers;


class LoggerWarp
{
public:
	typedef enum 
	{
		ERROR,
		WARN,
		INFO,
		DEBUG
	}LOG_LEVEL;

	void Init( const char* pro="../log4cxx.properties");
	void Print( const char* file, long line, const char* funtion, LOG_LEVEL level, const char* format, ... );
	void PrintWithModule( const char* file, long line, const char* funtion, LOG_LEVEL level,const char* module, const char* format, ... );

	static LoggerWarp* GetInstance()  
	{  
		if ( m_pInstance == NULL )    
			m_pInstance = new LoggerWarp();  
        return m_pInstance;  
	}

public:
	LoggerWarp(void);
	 ~LoggerWarp(void)=default;
	static LoggerWarp *m_pInstance; 
	log4cxx::LoggerPtr rootLogger;
};

#define  _LOG(...)            LoggerWarp::GetInstance()->Print(__FILE__, __LINE__, __FUNCTION__, __VA_ARGS__)
#define  _LOGWITTMOUDLE(...)  LoggerWarp::GetInstance()->PrintWithModule(__FILE__, __LINE__, __FUNCTION__, __VA_ARGS__)

#define  LOG_ERROR(...)    _LOG(LoggerWarp::ERROR, __VA_ARGS__)
#define  LOG_WARN(...)     _LOG(LoggerWarp::WARN, __VA_ARGS__)
#define  LOG_INFO(...)     _LOG(LoggerWarp::INFO, __VA_ARGS__)
#define  LOG_DEBUG(...)    _LOG(LoggerWarp::DEBUG, __VA_ARGS__)

#define  LOG_ERRORITTMOUDLE(...)    _LOGWITTMOUDLE(LoggerWarp::ERROR, __VA_ARGS__)
#define  LOG_WARNITTMOUDLE(...)     _LOGWITTMOUDLE(LoggerWarp::WARN, __VA_ARGS__)
#define  LOG_INFOITTMOUDLE(...)     _LOGWITTMOUDLE(LoggerWarp::INFO, __VA_ARGS__)
#define  LOG_DEBUGITTMOUDLE(...)    _LOGWITTMOUDLE(LoggerWarp::DEBUG, __VA_ARGS__)

#define  TASK_ERROR(...)    LOG_ERRORITTMOUDLE("TASK", __VA_ARGS__)



