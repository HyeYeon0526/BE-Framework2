package net.skhu.dto;

import lombok.Data;

@Data
public class Lecture {
	int id;
	String title;
	int profesorId;
	int year;
	String semester;
	String room;
}