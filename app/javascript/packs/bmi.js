var height = document.getElementById('height-input');
var weight = document.getElementById('weight-input');
var button = document.getElementById('button-submit');

var output = document.getElementById('bmi-output'); 

// 入力値からBMIを計算して指定場所に表示する関数
var calcBmi = function () {
  // 身長の値
  var h_value = height.value;
  // 体重の値
  var w_value = weight.value;
  // 身長(cm)をメートル
  h_value /= 100;
  // BMIを計算：体重 ÷ (身長 m × 身長 m)
  var bmi = w_value / (h_value * h_value);
  // BMIの小数点第一位以下切り捨て
  bmi = Math.floor(bmi * 10) / 10;
  // BMIを表示
  output.innerHTML = bmi;
}


button.addEventListener('click', calcBmi);