// 入力要素を取得
var height = document.getElementById('height-input'); // 身長入力欄
var weight = document.getElementById('weight-input'); // 体重入力欄
var button = document.getElementById('button-submit'); // 計測開始ボタン

// 出力要素を取得
var output = document.getElementById('bmi-output'); // BMI表示場所

// 入力値からBMIを計算して指定場所に表示する関数
var calcBmi = function () {
  // 1.入力された身長の値 (cm)を取得
  var h_value = height.value;
  // 2.入力された体重の値 (kg)を取得
  var w_value = weight.value;
  // 3.身長(cm)をメートルに換算する
  h_value /= 100;
  // 4.BMIを計算する：体重 ÷ (身長 m × 身長 m)
  var bmi = w_value / (h_value * h_value);
  // 5.BMIの小数点第一位以下切り捨て
  bmi = Math.floor(bmi * 10) / 10;
  // 6.BMIを表示
  output.innerHTML = bmi;
}

// 計測開始ボタンが押されたときの処理を登録（イベントリスナー）
button.addEventListener('click', calcBmi);