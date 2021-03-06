<%@ page import="smartlock.device.vo.DeviceVO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="include/_header.jsp">
	<jsp:param name="_nav" value="device" />
</jsp:include>

<% ArrayList<DeviceVO> deviceList = (ArrayList<DeviceVO>) request.getAttribute("deviceList"); %>

<!-- Page Content -->
<div class="container">
	<!-- Service Panels -->
	<!-- The circle icons use Font Awesome's stacked icon classes. For more information, visit http://fontawesome.io/examples/ -->
	<div class="row">
		<div class="col-lg-12">
			<h2 class="page-header">내 디바이스 관리</h2>
		</div>
		<!-- 검색필터-->
		<div class="row">
		<div class="col-sm-12">
			<div class="col-sm-2">
				<div class="input-group">
					<select name="" id="location1"
					style="width: 180px; height: 35px;">
					<option value="">소프트웨어명</option>
					<option value="">Microsoft Excel</option>
					<option value="">Parallels Desktop</option>
					<option value="">Adobe CC</option>
					<option value="">Football Manager</option>
				</select>
				</div>
			</div>
			<div class="col-sm-2">
				<div class="input-group">
					<select name="" id="location1"
					style="width: 180px; height: 35px;">
					<option value="">등록 날짜</option>
					<option value="">오름차순</option>
					<option value="">내림차순</option>
				</select>
				</div>
			</div>
			<div class="col-sm-6">
			<input type="text" class="col-md-4" placeholder="검색어를 입력하세요"
					id="searchField" style="width: 300px; height: 35px;">&nbsp;&nbsp;
			<button class="btn btn-primary" type="button" id="searchButton"
					data-loading-text="Searching..">
					<i class="fa fa-search"></i>
				</button>
				</div>
			<!--
				<div class="col-sm-2" align="right">
				<a class="btn btn-danger">디바이스 추가하기</a>
				</div>-->
			</div>

		</div>
		<br> <br>
		<% for (int i = 0; i < deviceList.size(); i++) { %>
		<% DeviceVO deviceVO = deviceList.get(i); %>
		<div class="col-md-3 col-sm-7">
			<div class="panel panel-default text-center">
				<div class="panel-heading">
					<h3><%= deviceVO.getNickname() %></h3>
				</div>
				<div class="panel-body">
					<div>
						<% // TODO: PC 와 스마트폰 구분 %>
						<% if (deviceVO.getType() == 1) { %>
						<img src="/html/img/smartphone.png"
							style="margin-left: auto; margin-right: auto; display: auto"
							width="100px">
						<% } else { %>
						<img src="/html/img/pc.png"
							 style="margin-left: auto; margin-right: auto; display: auto"
							 width="100px">
						<% } %>
						<p></p>
						<p>
							<a href="#" class="btn btn-warning btn-filter" style="width: 80px"
							   onclick="return clickEdit(<%= deviceVO.getId() %>, '<%= deviceVO.getNickname() %>');">수정</a>&nbsp; &nbsp; &nbsp;
							<a href="#" class="btn btn-danger btn-filter" style="width: 80px"
							   onclick="return clickDelete('<%= deviceVO.getId() %>', '<%= deviceVO.getNickname() %>');">삭제</a>
						</p>
					</div>
					<div>
						<ul class="list-group text-center">
							<% // TODO: 장치명, 장치정보, 등록일 정보 표시 %>
							<!--<li class="list-group-item"><b>장치명 :</b> iPhone7 (mobile)</li>-->
							<li class="list-group-item"><b>장치정보 :</b> <%= deviceVO.getMac() %></li>
							<li class="list-group-item"><b>등록일 :</b> 2017 - 01 - 01</li>
						</ul>
						<a href="#" class="btn btn-default" style="width: 180px"
						   onclick="return clickShowLicense(<%= deviceVO.getId() %>);">라이센스 조회</a>
					</div>
				</div>
			</div>
		</div>
		<% } %>
		<!--
		<div class="col-md-3 col-sm-7">
			<div class="panel panel-default text-center">
				<div class="panel-heading">
					<h3>Home-PC</h3>
				</div>
				<div class="panel-body">
					<div>
						<img src="/html/img/pc.png"
							style="margin-left: auto; margin-right: auto; display: auto"
							width="100px">
						<p></p>
						<p>
							<a href="#" class="btn btn-warning btn-filter"
								style="width: 80px">수정</a>&nbsp; &nbsp; &nbsp; <a href="#"
								class="btn btn-danger btn-filter" style="width: 80px">삭제</a>
						</p>
					</div>
					<div>
						<ul class="list-group text-center">
							<li class="list-group-item"><b>장치명 :</b> SAMSUNG-PC (PC)</li>
							<li class="list-group-item"><b>장치정보 :</b> DC9601-2792-2DD4</li>
							<li class="list-group-item"><b>등록일 :</b> 2017 - 01 - 01</li>
						</ul>
						<a href="#" class="btn btn-default" style="width: 180px">라이센스 조회</a>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-3 col-sm-7">
			<div class="panel panel-default text-center">
				<div class="panel-heading">
					<h3>Office-PC</h3>
				</div>
				<div class="panel-body">
					<div>
						<img src="/html/img/pc.png"
							style="margin-left: auto; margin-right: auto; display: auto"
							width="100px">
						<p></p>
						<p>
							<a href="#" class="btn btn-warning btn-filter"
								style="width: 80px">수정</a>&nbsp; &nbsp; &nbsp; <a href="#"
								class="btn btn-danger btn-filter" style="width: 80px">삭제</a>
						</p>
					</div>
					<div>
						<ul class="list-group text-center">
							<li class="list-group-item"><b>장치명 :</b> LG-PC (PC)</li>
							<li class="list-group-item"><b>장치정보 :</b> DC9601-2792-2DD4</li>
							<li class="list-group-item"><b>등록일 :</b> 2017 - 01 - 01</li>
						</ul>
						<a href="#" class="btn btn-default" style="width: 180px">라이센스 조회</a>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-3 col-sm-7">
			<div class="panel panel-default text-center">
				<div class="panel-heading">
					<h3>My-MAC</h3>
				</div>
				<div class="panel-body">
					<div>
						<img src="/html/img/pc.png"
							style="margin-left: auto; margin-right: auto; display: auto"
							width="100px">
						<p></p>
						<p>
							<a href="#" class="btn btn-warning btn-filter"
								style="width: 80px">수정</a>&nbsp; &nbsp; &nbsp; <a href="#"
								class="btn btn-danger btn-filter" style="width: 80px">삭제</a>
						</p>
					</div>
					<div>
						<ul class="list-group text-center">
							<li class="list-group-item"><b>장치명 :</b> MacBook Pro(PC)</li>
							<li class="list-group-item"><b>장치정보 :</b> DC9601-2792-2DD4</li>
							<li class="list-group-item"><b>등록일 :</b> 2017 - 01 - 01</li>
						</ul>
						<a href="#" class="btn btn-default" style="width: 180px">라이센스 조회</a>
					</div>
				</div>
			</div>
		</div>
		-->
		<!-- /.container -->
		<!-- /.row -->
		<hr>
	</div>
	<div class="row"></div>

	<hr>
</div>

<!-- Footer -->
<jsp:include page="include/_footer_content.jsp" />

<jsp:include page="include/_jslib.jsp" />

<script>

	/**
	 * 디바이스 수정 클릭시
	 * @param {number} deviceId 디바이스 아이디
	 * @param {string} oldNickname 기존 디바이스 닉네임
	 * @return {boolean} False
	 */
	function clickEdit(deviceId, oldNickname) {
        var newNickname = prompt("닉네임을 입력해주세요...", oldNickname);

        if (newNickname && newNickname != oldNickname) {
            $.ajax({
                url : "/device/update/nickname",
                type : "POST",
                contentType: "application/json",
                data : JSON.stringify({
                    id: deviceId,
                    nickname: newNickname
                }),
                success : function (data) {
                    if(data.status == "success") {
                        alert("디바이스가 수정되었습니다.");
                        location.reload();
                    } else {
                        alert("디바이스를 수정하는데 실패했습니다.");
                    }
                },
                error : function(data, textStatus, errorThrown) {
                    console.log(data);
                }
            });
        }

		return false;
	}

    /**
	 * 디바이스 삭제 클릭시
     * @param {number} deviceId 디바이스 아이디
     * @param {string} nickname 디바이스의 닉네임
     * @return {boolean} False
     */
	function clickDelete(deviceId, nickname) {
        var checkDelete = confirm(nickname + " 를 삭제하시겠습니까?");

        if (checkDelete) {
            $.ajax({
                url : "/device/delete",
                type : "POST",
                contentType: "application/json",
                data : JSON.stringify({
					id: deviceId
				}),
                success : function (data) {
                    if(data.status == "success") {
						alert("디바이스가 삭제되었습니다.");
						location.reload();
                    } else {
                        alert("디바이스를 삭제하는데 실패했습니다.");
                    }
                },
                error : function(data, textStatus, errorThrown) {
                    console.log(data);
                }
            });
		}

        return false;
	}

    /**
	 * 라이센스 보기 클릭시
     * @param deviceId 디바이스 아이디
     * @return {boolean} False
     */
	function clickShowLicense(deviceId) {
        alert("deviceId: " + deviceId + " 에 대한 라이센스 조회 버튼을 클릭했습니다.");
        return false;
	}
</script>

<jsp:include page="include/_footer.jsp" />
