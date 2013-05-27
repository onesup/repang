jQuery(function ($) {
	$('.register_button').click(function (e) {
		$('#register_form').modal();
		return false;
	});
});

// $('#register_form').modal();


// document.domain = "localhost:3000";
//   $(document).ready(function() {
//       $("#btnConfirm").click(function() {
//           if (!$('#check01').attr('checked')) {
//               alert('개인정보 수집 및 활용에 동의 하셔야 응모를 하실 수 있습니다.');
//               $('#check01').focus();
//               return false;
//           };
//           if ($.trim($('#txtUserName').val()).length == 0) {
//               alert('이름은 필수 입력 사항 입니다.');
//               $('#txtUserName').focus();
//               return false;
//           }
//           var regExpPhone = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
//           if ($.trim($('#tel2').val()).length == 0 || $.trim($('#tel3').val()).length == 0) {
//               alert('전화번호는 필수 입력 사항 입니다.');
//               $('#tel1').focus();
//               return false;
//           } else {
//               var phoneVal = $('select[name=tel1]').val() + "-" + $.trim($('#tel2').val()) + "-" + $.trim($('#tel3').val());
//               if (!regExpPhone.test(phoneVal)) {
//                   alert('전화번호 형식이 잘못 되었습니다.');
//                   $('#tel1').focus();
//                   return false;
//               }
//               $('input[id$=hdnPhoneNum]').val(phoneVal);
//           }
//           var regExpEMail = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
//           if ($('#email1').val().length == 0 || $('#email2').val().length == 0) {
//               alert('이메일 주소는 필수 입력 사항 입니다.');
//               $('#email1').focus();
//               return false;
//           } else {
//               var emailVal = $.trim($('#email1').val()) + "@" + $.trim($('#email2').val());
//               if (!regExpEMail.test(emailVal)) {
//                   alert('이메일 주소 형식이 잘못 되었습니다.');
//                   $('#email1').focus();
//                   return false;
//               }
//               $('input[id$=hdnEmail]').val(emailVal);
//           }
//           return true;
//       });
//       $('#portal').change(function() {
//           $('#email2').val($(this).val());
//       });
//       // modal close
//       $('.close').click(function() {
//           $.modal.close();
//       });
//       //선택후 포커스 이동
//       $('input:radio[name=livere_ImgCheckBtn]').change(function() {
//           try {
//               alert("소셜로그인 후, 선택한 이유를 남겨주셔야 응모가 완료됩니다. 댓글을 남겨주세요! ");
//               var focusText = parent.document.getElementById("livereWriteBtn");
//               $(focusText).focus();
//           }
//           catch (e) {
//           }
//       });
//       $("#btnCancel").click(function(e) {
//           if (confirm("취소 하실경우, 이벤트 참여가 무효 되십니다. 정말 취소하시겠습니까?") == false) {
//               e.preventDefault();
//           }
//       });
//   });
// 	function open_modal(val){
//   if (val) {
//       $('input[id$=voteValue]').val(val);
//       $('#modalLayer').modal({
//           //overlayCss: { backgroundColor: "#000" }, // bg색상
//           overlayClose: true, //bg클릭시 close여부
//           focus: true,
//           onShow: function(dialog) {
//               setTimeout(function() {
//                   dialog.data.find("#txtWebId").focus();
//                   document.getElementById("txtWebId").focus();
//               }, 100);
//           }
//       });
//   }
// }
// function move_focus() {
//   try{
//       var focusText = parent.document.getElementById("livere_contentText");
//       $(focusText).focus();
//   }
//   catch(e){
//   }
// 
// }