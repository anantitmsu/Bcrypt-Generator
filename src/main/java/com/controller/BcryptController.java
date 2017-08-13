package com.controller;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class BcryptController {

	@GetMapping("/about-us")
	public String hello(Model model) {

		model.addAttribute("author", "Anant Goswami");
		return "welcome";
	}

	@PostMapping("/generate-bcrypt")
	public String generateBcrypt(@RequestParam String plainText, Model model) {

		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String hashedPassword = passwordEncoder.encode(plainText);

		model.addAttribute("hashedPassword", hashedPassword);
		model.addAttribute("plainText", plainText);
		model.addAttribute("show", true);
		return "bcrypt";
	}

	@PostMapping("/match-bcrypt")
	public String matchBcrypt(@RequestParam String plainTextToCheck,
			@RequestParam String hashedCode, Model model) {

		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String hashedPassword = passwordEncoder.encode(plainTextToCheck);

		boolean match = passwordEncoder.matches(plainTextToCheck, hashedCode);

		model.addAttribute("hashedPassword", hashedPassword);
		model.addAttribute("plainText", plainTextToCheck);
		model.addAttribute("match", match);
		model.addAttribute("matchShow", true);

		return "bcrypt";
	}

	@GetMapping("/bcrypt")
	public String bcrypt(Model model) {

		return "bcrypt";
	}

	@GetMapping("/")
	public String home(Model model) {

		return "bcrypt";
	}
}
