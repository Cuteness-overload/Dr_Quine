/*
	outside comment
*/
fn colleen(src: &str) {
	print!("{}", src.replace('\u{24}', "#").replace('\u{3f}', src));
}
fn main() {
	/*
		a comment in the function
	*/
	let src = r#"/*
	outside comment
*/
fn colleen(src: &str) {
	print!("{}", src.replace('\u{24}', "$").replace('\u{3f}', src));
}
fn main() {
	/*
		a comment in the function
	*/
	let src = r$"?"$;
	colleen(src);
}"#;
	colleen(src);
}