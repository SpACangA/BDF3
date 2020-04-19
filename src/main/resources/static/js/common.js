dorado.Exception.getExceptionMessage = function (e) {
    if (!e || e instanceof dorado.AbortException) return null;
    var msg;
    if (e instanceof dorado.Exception) msg = e.message;
    else if (e instanceof Error) msg = e.message;
    else msg = e;
    return "测试";
};

alert(111);