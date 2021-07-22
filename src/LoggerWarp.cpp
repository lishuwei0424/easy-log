/********************************************************
 * Description : logger helper
 * Date        : 2021-07-22
 * Author      : lishuei
 * Email       : lishuwei@tju.edu.cn
 * Version     : 1.0
 * Copyright(C): 2021-...
 ********************************************************/
#include "LoggerWarp.h"
#include <stdarg.h>
#include <stdio.h>

using namespace log4cxx;
using namespace log4cxx::helpers;

LoggerWarp::LoggerWarp(void)
{
    Init();
}

void LoggerWarp::Init( const char* prop )
{
    std::cout<<"init"<<std::endl;
    log4cxx::PropertyConfigurator::configureAndWatch(prop);  
    rootLogger=Logger::getLogger("demo");
}

void LoggerWarp::Print( const char* file, long line, const char* funtion, LOG_LEVEL level, const char* format, ... )
{   
	char buff[4096];
	va_list ap;
	va_start(ap, format);
	vsnprintf(buff, 4096, format, ap);
	va_end(ap);
 
	char strlog[4096]={0};
    snprintf(strlog, 4096, " [%s][%s][%d]:%s", file,funtion,line,buff);
    
	switch(level)
    {
    case LoggerWarp::ERROR:
         LOG4CXX_ERROR(rootLogger,strlog);
        break;
    case LoggerWarp::INFO:
         LOG4CXX_INFO(rootLogger,strlog);
        break;
    case LoggerWarp::DEBUG:
         LOG4CXX_DEBUG(rootLogger,strlog);
        break;
    case LoggerWarp::WARN:
         LOG4CXX_WARN(rootLogger,strlog);
        break;
    default:
         LOG4CXX_TRACE(rootLogger,strlog);
         break;
    };
}

void LoggerWarp::PrintWithModule( const char* file, long line, const char* funtion, LOG_LEVEL level, const char* module,const char* format, ... )
{   
	char buff[4096];
	va_list ap;
	va_start(ap, format);
	vsnprintf(buff, 4096, format, ap);
	va_end(ap);
 
	char strlog[4096]={0};
    snprintf(strlog, 4096, "[%s][%s][%s][%d]:%s", module,file,funtion,line,buff);
    
	switch(level)
    {
    case LoggerWarp::ERROR:
         LOG4CXX_ERROR(rootLogger,strlog);
        break;
    case LoggerWarp::INFO:
         LOG4CXX_INFO(rootLogger,strlog);
        break;
    case LoggerWarp::DEBUG:
         LOG4CXX_DEBUG(rootLogger,strlog);
        break;
    case LoggerWarp::WARN:
         LOG4CXX_WARN(rootLogger,strlog);
        break;
    default:
         LOG4CXX_TRACE(rootLogger,strlog);
         break;
    };
}
