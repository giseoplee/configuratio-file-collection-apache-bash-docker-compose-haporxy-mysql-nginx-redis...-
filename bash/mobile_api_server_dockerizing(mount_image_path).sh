echo "start dockerizing!"
echo "."
echo ".."
echo "..."

docker stop $(docker ps -q -a  --filter="name=mobile-api-server")
docker rm $(docker ps -q -a --filter="name=mobile-api-server")
# 기존 컨테이너 정지 및 메모리 내 프로세스 제거

result=`docker images mobile-api-server`
target=`echo $result | cut -d ' ' -f9`
docker rmi $target
# 기존 도커 이미지 삭제

docker build -t mobile-api-server:v0.1 .
# 새 도커 이미지 빌드
docker run --name=mobile-api-server -d -v /etc/localtime:/etc/localtime:ro -v /home/ec2-user/mobile_api/image:/app/mobile_api/image -e TZ=Asia/Seoul -p 8080:8080 tiptap:v0.1
# 도커 시작
# 타임존 볼륨 마운트, image 파일 볼륨 마운트

echo "."
echo "."
echo "."
echo "completed api-server dockerizing!"
