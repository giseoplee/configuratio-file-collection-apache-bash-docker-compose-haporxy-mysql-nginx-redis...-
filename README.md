# Configuration File Collection

## Apache

- Vue.js(SPA) X Apache 설정
- modjk를 통한 프록시 설정
- mpm 설정 (multi-processing module)

## Bash

- apache 비정상 종료 등으로 인한 세마포어 배열 최적화 스크립트
- docker 배포 스크립트
  - host OS와 경로 마운트 (파일 영속성 이슈로 인한)
  - host OS timezone 마운트
  - OOM 설정 (저사양 서버에서 사용할 시 사용)

## Docker-Compose

- (1) Nginx - (n) Node.js 인프라 설정

## HA-Proxy

- redis-sentinel과 연계된 로드밸런싱 설정

## MySQL (MaraiDB)

- Production RDBMS 설정

## Nginx

- docker-compose와 연계한 node.js로의 로드밸런싱 설정

## redis

- 스냅샷 설정만 AOF로 바꿔서 영속성 보장
- 거의 기본 설정에 가까운 설정

## redis-sentinel

- 레디스 센티넬, 마스터, 슬레이브 설정

## Webpack

- jQuery 웹팩3 설정
- Vue.js 웹팩2 설정
- React.js 웹팩 3 설정