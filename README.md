# SAFE KEY
Keep your key, your key can turn safe

## 개요
블록체인기반의 프로젝트로 현실의 물리적인 열쇠를 블록체인 네트워크 상에서 유니크하고, 더불어 잃어버릴 위험도 없게 구현하였다.
열쇠는 트랜잭션을 통해 열쇠의 Owner에서부터 Requester로 이동이 가능하며 Owner는 요청에 대한 수락 및 거절로 응답을 할 수 있다.


## Ethereum 기반의 dAPP
Ethereum 기반의 dAPP으로 블록체인의 체인상에 올라간 데이터는 위변조 및 삭제가 될 수 없고 유니크하다는 특성을 이용해서 만든 프로젝트이다.
배포되는 Smart Contract 역시 블록체인상에 올라가기 때문에 최초 배포한 dAPP을 수정하거나 위변조하는 것은 불가능하여 매번 다시 배포하여야 한다.


## 존재증명
해당 Smart Contract에 선언된 Owner라는 변수는 1개밖에 없다.
dAPP을 사용하는 모든 유저에게는 단 1개의 유니크한 열쇠가 보증이 된다.
어플리케이션 자체에는 "문을 연다" 라는 가상의 동작밖에 없지만 구현된 존재증명의 부분은 활용될 수 있는 스펙트럼이 넓다.

## 시스템 아키텍쳐
![](img/arch.png)

## 개발환경
* Programs : PyCharm Professional Edition 2018.2 / Python 3.5.4
* Web : HTML5, CSS3, Bootstrap, JavaScript, JQuery, JSON
* Server : Ethereum Ropsten Test Network
* OS : Windows 10

# #화면캡쳐
#### 메인 및 트랙잭션
<img width="33%" src="img/OWNER.png">
<img width="33%" src="img/REQUESTER.png">
<img width="33%" src="img/TRANSACTION.png">

#### 문 열기
<img width="33%" src="img/OPEN_1.png">
<img width="33%" src="img/OPEN_2.png">

#### 키 요청하기
<img width="33%" src="img/REQUEST_1.png">
<img width="33%" src="img/REQUEST_2.png">

#### 응답하기
<img width="33%" src="img/RESPONSE_1.png">
<img width="33%" src="img/RESPONSE_2.png">
<img width="33%" src="img/RESPONSE_3.png">

#### 거절
<img width="33%" src="img/REJECTED_1.png">
<img width="33%" src="img/REJECTED_2.png">
<img width="33%" src="img/REJECTED_3.png">

#### 수락
<img width="33%" src="img/ACCEPTED_1.png">
<img width="33%" src="img/ACCEPTED_2.png">
<img width="33%" src="img/ACCEPTED_3.png">

