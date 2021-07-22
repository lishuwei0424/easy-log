#include "LoggerWarp.h"
LoggerWarp *LoggerWarp::m_pInstance = nullptr;

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


