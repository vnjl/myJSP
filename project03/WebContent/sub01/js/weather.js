jQuery(document).ready(function(){
	$.getJSON('http://api.openweathermap.org/data/2.5/find?q=seoul&units=metric&appid=59cd4115a815a56a919458303f2f2979', function(today_data){
		var today_min_temp = today_data.list[0].main.temp_min;
		var today_max_temp = today_data.list[0].main.temp_max;
		var today_temp = today_data.list[0].main.temp;
		var today_feel_temp = today_data.list[0].main.feels_like;
		var today_humidity = today_data.list[0].main.humidity
		var today_date_time = new Date();
		var today_month = today_date_time.getMonth()+1;
		var today_day = today_date_time.getDate();
		var today_hour = today_date_time.getHours();
		var today_minute = today_date_time.getMinutes();
		var today_weather_icon = today_data.list[0].weather[0].icon;
		var today_weather_text = today_data.list[0].weather[0].main;
		$('.today_temp_text').html(today_temp + '&#8451;');
		$('.today_min_temp_text').html('최저 '+today_min_temp+'&#8451;');
		$('.today_max_temp_text').html('최고 '+today_max_temp+'&#8451;');
		$('.today_feel_temp_text').html('체감 '+today_feel_temp+'&#8451;');
		$('.today_humidity_text').html('습도 '+today_humidity+'%');
		$('.today_date_text').text(today_month+'월 '+today_day+'일 '+today_hour+'시 '+today_minute+'분');
		// 테스트용 변수
/*  		today_weather_icon = '50d'
		today_weather_text = 'Atmosphere';  */
		if(today_weather_icon == '01d' || today_weather_icon == '01n' || today_weather_icon == '02d' || today_weather_icon == '02n' || today_weather_icon == '03d' || today_weather_icon == '03n' || today_weather_icon == '04d' || today_weather_icon == '04n' || today_weather_icon == '09d' || today_weather_icon == '09n' || today_weather_icon == '10d' || today_weather_icon == '10n' ||today_weather_icon == '11d' || today_weather_icon == '11n' || today_weather_icon == '13d' || today_weather_icon == '13n' || today_weather_icon == '50d' || today_weather_icon == '50n'){
			$('.today_weather_icon').attr('src','images/weather/'+today_weather_icon+'.png');
		}else {
			$('.today_weather_icon').attr('src','images/weather/01d.png');
		};

		if(today_weather_text == 'Rain'){
			$('.today_weather').css('background','url(images/weather/rain_bg.png)');
		}else if(today_weather_text == 'Clear'){
			$('.today_weather').css('background','url(images/weather/clear_bg.png)');
		}else if(today_weather_text == 'Clouds'){
			$('.today_weather').css('background','url(images/weather/clouds_bg.png)');
		}else if(today_weather_text == 'Thunderstorm' || today_weather_text == 'Tornado' || today_weather_text == 'Squall'){
			$('.today_weather').css('background','url(images/weather/thunderstorm_bg.png)');
		}else if(today_weather_text == 'Snow'){
			$('.today_weather').css('background','url(images/weather/snow_bg.png)');
		}else if(today_weather_text == 'Smoke' || today_weather_text == 'Haze' || today_weather_text == 'Dust' || today_weather_text == 'Sand' || today_weather_text == 'Ash' || today_weather_text == 'Atmosphere' || today_weather_text == 'Mist' || today_weather_text == 'Fog'){
			$('.today_weather').css('background','url(images/weather/atmosphere_bg.png)');
		} else {
			$('.today_weather').css('background','url(images/weather/clear_bg.png)');
		};
	});			
		/* 날씨 예측 (forecast) */
	$.getJSON('http://api.openweathermap.org/data/2.5/forecast?id=1835848&units=metric&appid=59cd4115a815a56a919458303f2f2979', function(forecast_data){
		var forecast_min_temp = forecast_data.list[7].main.temp_min;
		var forecast_max_temp = forecast_data.list[7].main.temp_max;
		var forecast_temp = forecast_data.list[7].main.temp;
		var forecast_feel_temp = forecast_data.list[7].main.feels_like;
		var forecast_humidity = forecast_data.list[7].main.humidity
		var forecast_date_time = new Date();
		var forecast_month = forecast_date_time.getMonth()+1;
		var forecast_day = forecast_date_time.getDate()+1;
		var forecast_hour = forecast_date_time.getHours();
		var forecast_weather_icon = forecast_data.list[7].weather[0].icon;
		var forecast_weather_text = forecast_data.list[7].weather[0].main;	
		// 시간 확인용 변수 - 시간 기준 UTC
/* 		var forecast_dt = forecast_data.list[6].dt_txt;
		console.log(forecast_dt);      */
		$('.forecast_temp_text').html(forecast_temp + '&#8451;');
		$('.forecast_min_temp_text').html('최저 '+forecast_min_temp + '&#8451;');
		$('.forecast_max_temp_text').html('최고 '+forecast_max_temp + '&#8451;');
		$('.forecast_feel_temp_text').html('체감 '+forecast_feel_temp+'&#8451;');
		$('.forecast_humidity_text').html('습도 '+forecast_humidity+'%');
		$('.forecast_date_text').text(forecast_month+'월 '+forecast_day+'일 ' + (forecast_hour - (forecast_hour%3))+'시 기준');
		// 테스트용 변수
/*  	forecast_weather_icon = '11n'
		forecast_weather_text = 'Thunderstorm';   */ 
		if(forecast_weather_icon == '01d' || forecast_weather_icon == '01n' || forecast_weather_icon == '02d' || forecast_weather_icon == '02n' || forecast_weather_icon == '03d' || forecast_weather_icon == '03n' || forecast_weather_icon == '04d' || forecast_weather_icon == '04n' || forecast_weather_icon == '09d' || forecast_weather_icon == '09n' || forecast_weather_icon == '10d' || forecast_weather_icon == '10n' ||forecast_weather_icon == '11d' || forecast_weather_icon == '11n' || forecast_weather_icon == '13d' || forecast_weather_icon == '13n' || forecast_weather_icon == '50d' || forecast_weather_icon == '50n'){
			$('.forecast_weather_icon').attr('src','images/weather/'+forecast_weather_icon+'.png');
		}else {
			$('.forecast_weather_icon').attr('src','images/weather/01d.png');
		};		
		
		if(forecast_weather_text == 'Rain' || forecast_weather_text == 'Drizzle'){
			$('.forecast_weather').css('background','url(images/weather/rain_bg.png)');
		}else if(forecast_weather_text == 'Clear'){
			$('.forecast_weather').css('background','url(images/weather/clear_bg.png)');
		}else if(forecast_weather_text == 'Clouds'){
			$('.forecast_weather').css('background','url(images/weather/clouds_bg.png)');
		}else if(forecast_weather_text == 'Thunderstorm' || forecast_weather_text == 'Tornado' || forecast_weather_text == 'Squall'){
			$('.forecast_weather').css('background','url(images/weather/thunderstorm_bg.png)');
		}else if(forecast_weather_text == 'Snow'){
			$('.forecast_weather').css('background','url(images/weather/snow_bg.png)');
		}else if(forecast_weather_text == 'Smoke' || forecast_weather_text == 'Haze' || forecast_weather_text == 'Dust' || forecast_weather_text == 'Sand' || forecast_weather_text == 'Ash' || forecast_weather_text == 'Atmosphere' || forecast_weather_text == 'Mist' || forecast_weather_text == 'Fog'){
			$('.forecast_weather').css('background','url(images/weather/atmosphere_bg.png)');
		} else {
			$('.forecast_weather').css('background','url(images/weather/clear_bg.png)');
		}; 
	});
	$('.weather_box').hover(
		function(){
			$(this).find('.black_alpha').stop().animate({height:'220px'},300);
		},function(){
			$(this).find('.black_alpha').stop().animate({height:'140px'},300);
		}
	);
});