fn main() {
	let curfile = std::path::Path::new(file!()).file_name().and_then(|s| s.to_str()).unwrap();
	let diff = curfile == "Sully.rs";
	let i = 5;
	if i - (diff as i32) < 0 {
		return;
	}
	let filename = format!("Sully_{}.rs", i - (diff as i32));
	let src = r#"fn main() {
	let curfile = std::path::Path::new(file!()).file_name().and_then(|s| s.to_str()).unwrap();
	let diff = curfile == "Sully.rs";
	let i = @;
	if i - (diff as i32) < 0 {
		return;
	}
	let filename = format!("Sully_{}.rs", i - (diff as i32));
	let src = r$"?"$;
	std::fs::write(&filename, src.replace('\u{24}', "$").replace('\u{3f}', src).replace('\u{40}', i - (diff as i32))).unwrap();
	let cmd = format!("rustc {}", filename);
	std::process::Command::new("sh").arg("-c").arg(&cmd).output().unwrap();
	let cmd = format!("./{}", filename.replace(".rs", ""));
	std::process::Command::new("sh").arg("-c").arg(&cmd).output().unwrap();
}"#;
	std::fs::write(&filename, src.replace('\u{24}', "#").replace('\u{3f}', src).replace('\u{40}', i - (diff as i32))).unwrap();
	let cmd = format!("rustc {}", filename);
	std::process::Command::new("sh").arg("-c").arg(&cmd).output().unwrap();
	let cmd = format!("./{}", filename.replace(".rs", ""));
	std::process::Command::new("sh").arg("-c").arg(&cmd).output().unwrap();
}
// update the @ replacement with the current value of i