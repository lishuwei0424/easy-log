#include "LoggerWarp.h"
#include <unistd.h>
LoggerWarp *LoggerWarp::m_pInstance = nullptr;

int main()
{ 
  while (1)
  {
      LOG_ERROR("%s,%d","lsw",100000);
      LOG_INFO("%s","HAHHAHFHAH");
      LOG_DEBUG("%d",10);
      LOG_DEBUG("%s","WARN");
      TASK_ERROR("%s","FUNC ERROR");
      sleep(2);
  }
   return  0;
}
