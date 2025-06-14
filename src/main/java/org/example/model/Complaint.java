package org.example.model;

import lombok.*;
import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString

public class Complaint {
    private int id;
    private int employeeId;
    private String description;
    private String status;
    private Date date;
}
