/**
 * 
 */
function checkBirthday(str) {
    var pattern = /^((19[2-9]\d{1})|(20((0[0-9])|(1[0-8]))))\-((0?[1-9])|(1[0-2]))\-((0?[1-9])|([1-2][0-9])|30|31)$/;
    return pattern.test(str);
}

function getValueByName(name) {
    return document.getElementsByName(name)[0].value;
}

function isEmpty(name) {
    var s_value = getValueByName(name);
    console.log(s_value);
    if (s_value == "") {
        return true;
    }
    return false;
}

function dosubmit() {
    if (isEmpty("stunum")) {
        alert("学号不能为空");
        return false;
    }
    if (isEmpty("stuname")) {
        alert("学生姓名不能为空");
        return false;
    }
    if (isEmpty("birthday")) {
        alert("生日信息不能为空");
        return false;
    } else {
        if (!checkBirthday(getValueByName("birthday"))) {
            alert("出生日期的格式不正确，请使用YYYY-MM-DD的格式");
            return false;
        }
    }
    if (isEmpty("location")) {
        alert("家庭住址不能为空");
        return false;
    }
    return true;
}