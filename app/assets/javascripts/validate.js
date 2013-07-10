$().ready(function() {
	$('#close').click(function (e) {
		$("#register_form").hide();
	});
	$("#new_user").validate({

		rules: {
			"user[name]": "required",
			"user[email]": {
				required: true,
				email: true
			},
			"user[phone]": "required",
			agree_private_information: "required",
			agree_private_number: "required"			
		},

		messages: {
			"user[name]": "이름을 남겨주세요.",
			"user[email]": {
				required: "이메일 주소를 남겨주세요.",
				email: "주소를 확인해주세요."
			},
			"user[phone]": "전화번호를 남겨주세요.",
			agree_private_information: "동의가 필요합니다.",
			agree_private_number: "동의가 필요합니다."

		}
	});
});