package com.nagarro.Manager.dao;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import org.json.simple.*;
import org.springframework.stereotype.Service;

@Service
public class FieldOperation {

	public void addUser(String name, String email, String password) throws IOException {
		try {

			URL url = new URL("http://localhost:8083/user-api/users");
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setRequestMethod("POST");
			connection.setRequestProperty("Content-Type", "application/json; utf-8");
			connection.setRequestProperty("Accept", "application/json");
			connection.setDoOutput(true);
			String jsonInputString = "{" + "\"name\":\"" + name + "\",\"email\":\"" + email + "\",\"password\":\""
					+ password + "\"" + "}";
			connectionOutputStream(jsonInputString, connection);
			String result = readResponse(connection);
		} catch (Exception e) {
			System.out.println("Error");
		}
	}

	public boolean login(String email, String password) {
		try {
			URL url = new URL("http://localhost:8083/user-api/users-login");
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setRequestMethod("POST");
			connection.setRequestProperty("Content-Type", "application/json; utf-8");
			connection.setRequestProperty("Accept", "application/json");
			connection.setDoOutput(true);
			String jsonInputString = "{" + "\"userEmail\":\"" + email + "\",\"userPassword\":\"" + password + "\""
					+ "}";
			connectionOutputStream(jsonInputString, connection);
			String result = readResponse(connection);
			boolean res = Boolean.parseBoolean(result);
			return res;
		} catch (Exception e) {
			System.out.println("Error");
		}
		return false;
	}

	public void connectionOutputStream(String jsonInputString, HttpURLConnection connection) {
		try (OutputStream os = connection.getOutputStream()) {
			byte[] input = jsonInputString.getBytes("utf-8");
			os.write(input, 0, input.length);
		} catch (Exception e) {
			System.err.println(e);
		}

	}

	public String readResponse(HttpURLConnection connection) {
		try (BufferedReader br = new BufferedReader(new InputStreamReader(connection.getInputStream(), "utf-8"))) {
			StringBuilder response = new StringBuilder();
			String responseLine = null;
			while ((responseLine = br.readLine()) != null) {
				response.append(responseLine.trim());
			}
			System.out.println(response.toString());
			return response.toString();
		} catch (Exception e) {
			System.err.println(e);
		}
		return "";

	}

	public String getEmployeesDetails() {
		try {

			URL url = new URL("http://localhost:8083/employee-api/employees");
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setRequestMethod("GET");

			connection.setRequestProperty("Content-Type", "application/json; utf-8");
			connection.setRequestProperty("Accept", "application/json");
			connection.setDoOutput(true);
			String result = readResponse(connection);
			return result;
		} catch (Exception e) {
			System.out.println("Error");
		}
		return "";
	}
	public String setEmployeeDetails(String employeeCode, String employeeName, String location, String email, String dob)
	{
		try {

			URL url = new URL("http://localhost:8083/employee-api/employees");
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setRequestMethod("POST");
			connection.setRequestProperty("Content-Type", "application/json; utf-8");
			connection.setRequestProperty("Accept", "application/json");
			connection.setDoOutput(true);
			String jsonInputString = "{" + "\"employeeCode\":\"" + employeeCode + "\",\"employeeName\":\"" + employeeName + 
					"\",\"location\":\""+ location + "\",\"email\":\""+email+"\",\"dob\":\""+dob+"\"" + "}";
			connectionOutputStream(jsonInputString, connection);
			String result = readResponse(connection);
			return result;
		} catch (Exception e) {
			System.out.println("Error");
		}
		return "";
		
	}
}
