let height = document.getElementById('height-input');
let weight = document.getElementById('weight-input');
let button = document.getElementById('button-submit');

let output = document.getElementById('bmi-output'); 

// 入力値からBMIを計算して指定場所に表示する関数
let calcBmi = function () {
  // 身長の値
  let h_value = height.value;
  // 体重の値
  let w_value = weight.value;
  // 身長(cm)をメートル
  h_value /= 100;
  // BMIを計算：体重 ÷ (身長 m × 身長 m)
  let bmi = w_value / (h_value * h_value);
  // BMIの小数点第一位以下切り捨て
  bmi = Math.floor(bmi * 10) / 10;
  // BMIを表示
  output.innerHTML = bmi;
}


button.addEventListener('click', calcBmi);