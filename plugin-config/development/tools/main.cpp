#include <glog/logging.h>
#include <gflags/gflags.h>

void initLogger(int& argc, char* argv[])
{
    google::ParseCommandLineFlags(&argc, &argv, true);
    google::InitGoogleLogging(argv[0]);
    google::SetLogDestination(google::GLOG_INFO, Log.txt);
    LOG(INFO) << -- logger successfully initialized;
}

int main(int argc, char* argv[])
{
    initLogger(argc, argv);
    return 0;
}
