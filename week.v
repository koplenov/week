module main

import vweb
import time

struct App {
	vweb.Context
}

fn main() {
	vweb.run(&App{}, 2281)
}

fn (mut app App) index() vweb.Result {
	now := time.now()
	days := get_days(now)
	weeks := get_week_from_year(days)

	result := if weeks % 2 == 0 { 'нижняя (нечетная)' } else { 'верхняя (четная)' }

	content := result

	return $vweb.html()
}

fn get_days(t time.Time) int {
	mut days := 0
	for i in 1..t.month {
		days = days + time.days_in_month(i, t.year) or {}
	}
	days += t.day
	return days
}
fn get_week_from_year(days int) int{
	return (days / 7) + 1
}

fn (mut app App) sitemap() vweb.Result {
	app.Context.add_header("Content-Type", "application/xml")
	return $vweb.html()
}