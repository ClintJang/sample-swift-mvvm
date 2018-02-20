# sample-swift-mvvm
[![License](http://img.shields.io/badge/License-MIT-green.svg?style=flat)](https://github.com/clintjang/JWSBoltsSwiftSample/blob/master/LICENSE) [![Swift 4](https://img.shields.io/badge/swift-4.0-orange.svg?style=flat)](https://swift.org) 

This is MVVM pattern testing with Swift.

.... I'm still practicing.


# MVVM 란?
MVVM(Model-view-viewmodel) 패턴은 소프트웨어 아키텍처 패턴입니다.
> 비슷한 용어 (model-view-binder), 인터페이스의 이벤트 중심 프로그래밍을 단순화하기 위한 목적을 가지고 있습니다.

<pre>
M (Model)
- 실제 상태 데이터 모델, 접근 할 데이터
V (View)
- 모양, 레이아웃
VM (ViewModel)
- 개체를 쉽게 관리하기 위함
- 데이터 개체를 변환하는 역활
- 화면 표현의 대부분을 처리
※ 개체 : 전체나 집단에 상대하여 하나하나의 낱개를 이르는 말.
</pre>

## MVVM 상세
### 흐름도
<img width="480" height="360" src="/Image/mvvm흐름도임.png"></img>

### 계층으로 보면

## 소스 구성
<table style="width:100%">
  <tr>
	<th>구조</th> 
    <th>실행 전</th>
    <th>실행 후</th> 
  </tr>
  <tr>
  	<td><img width="268" height="480" src="/Image/structure_00.png"></img></td>
    <td><img width="268" height="480" src="/Image/run_00.png"></img></td>
    <td><img width="268" height="480" src="/Image/run_01.png"></img></td> 
  </tr>
</table>

### etc
...셈플링 해보는 중.. 연습중, 테스팅, 정리중, 생각중