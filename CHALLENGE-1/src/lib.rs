use anyhow::Result;
use spin_sdk::{
    http::{Request, Response},
    http_component,
};

use serde::{Deserialize, Serialize};

#[derive(Serialize, Deserialize)]
struct Challenge1Response {
    message: String,
}

fn read_json_challenge1response(raw_json: &str) -> Challenge1Response {
    let parsed: Challenge1Response = serde_json::from_str(raw_json).unwrap();
    return parsed;
}

fn get_response_json() -> Challenge1Response {
    let json_str = r#"
    {
        "message": "Hello, world!"
    }
    "#;
    let parsed: Challenge1Response = read_json_challenge1response(json_str);
    return parsed;
}

fn get_response_json_from_obj() -> Challenge1Response {
    return Challenge1Response { message: "Hello, world!".to_string() }
}

/// A simple Spin HTTP component.
#[http_component]
fn challenge_1(req: Request) -> Result<Response> {
    let response = get_response_json_from_obj();
    let response_str = serde_json::to_string(&response).unwrap();

    println!("{:?}", req.headers());
    Ok(http::Response::builder()
        .status(200)
        .header("Content-Type", "application/json")
        .body(Some(response_str.into()))?)
}
