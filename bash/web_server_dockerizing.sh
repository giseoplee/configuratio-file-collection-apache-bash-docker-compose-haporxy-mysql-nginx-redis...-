echo "start dockerizing!"
echo "."
echo ".."
echo "..."

docker stop $(docker ps -q -a  --filter="name=web-server")
docker rm $(docker ps -q -a --filter="name=web-server")
# 기존 컨테이너 정지 및 메모리 내 프로세스 제거

result=`docker images web-server`
target=`echo $result | cut -d ' ' -f9`
docker rmi $target
# 기존 도커 이미지 삭제

docker build -t web-server:v0.1 .
# 새 도커 이미지 빌드
docker run --name=web-server --oom-score-adj=-1000 -d -v /etc/localtime:/etc/localtime:ro -e TZ=Asia/Seoul -p 9090:9090 web-server:v0.1
# 도커 시작
# oom 옵션 설정으로 빌드 도중 메모리 부족 시에도 프로세스를 죽이지 않음
# 타임존 볼륨 마운트

echo "."
echo "."
echo "."
echo "completed web-server dockerizing!"
