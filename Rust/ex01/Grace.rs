/*
Let's put a comment here
*/
macro_rules! quine {
	() => {
		fn main() {
			let src = r#"/*
Let's put a comment here
*/
macro_rules! quine {
	() => {
		fn main() {
			let src = r$"?"$;
			std::fs::write("Grace_kid.rs", src.replace('\u{24}', "$").replace('\u{3f}', src)).unwrap();
		}
	};
}
quine!();"#;
			std::fs::write("Grace_kid.rs", src.replace('\u{24}', "#").replace('\u{3f}', src)).unwrap();
		}
	};
}
quine!();