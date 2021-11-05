# new_nsq_exporter
https://github.com/lovoo/nsq_exporter

原版本很久没更新了，不适用，修改一些功能。



docker部署，本地打包，发到服务器上再去load

./build.sh

docker save -o <path **for** generated tar file> <image name>

docker load -i <path to image tar file>

docker run -d --name nsq_exporter -l nsqd:nsqd -p 9117:9117 nsq_exporter:latest -nsqd.addr=http://nsq_addr:4151/stats



CPU使用率：avg(irate(process_cpu_seconds_total{job="nsq"}[5m])) by (instance) * 100

NSQ进程占用内存：process_resident_memory_bytes{job="nsq"}

收到消息数量：nsq_topic_message_count

堆积消息：nsq_topic_depth

负载：sum(irate(nsq_topic_message_count{}[5m]))
