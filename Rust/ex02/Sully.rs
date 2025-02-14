fn main() {
	let i = 5;
	if i - 1 < 0 {
		return;
	}
	let filename = format!("Sully_{}.rs", i - 1);
	let src = r#"fn main() {
	let i = @;
	if i - 1 < 0 {
		return;
	}
	let filename = format!("Sully_{}.rs", i - 1);
	let src = r$"?"$;
	std::fs::write(&filename, src.replace('\u{24}', "$").replace('\u{40}', (i - 1).to_string().as_str()).replace('\u{3f}', src)).unwrap();
	let cmd = format!("rustc {}", filename);
	std::process::Command::new("sh").arg("-c").arg(&cmd).output().unwrap();
	let cmd = format!("./{}", filename.replace(".rs", ""));
	std::process::Command::new("sh").arg("-c").arg(&cmd).output().unwrap();
}"#;
	std::fs::write(&filename, src.replace('\u{24}', "#").replace('\u{40}', (i - 1).to_string().as_str()).replace('\u{3f}', src)).unwrap();
	let cmd = format!("rustc {}", filename);
	std::process::Command::new("sh").arg("-c").arg(&cmd).output().unwrap();
	let cmd = format!("./{}", filename.replace(".rs", ""));
	std::process::Command::new("sh").arg("-c").arg(&cmd).output().unwrap();
}