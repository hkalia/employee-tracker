package com.habibkalia.employeetracker.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "department")
public class Department {

    @Id
    private Long id;

    private String name;
    private String description;
}
