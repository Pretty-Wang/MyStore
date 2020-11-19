function _change() {
	$("#vCode").attr("src", "/MyStore/VerifyCodeServlet?" + new Date().getTime());
}