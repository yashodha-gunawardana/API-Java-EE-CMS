package org.example.dto;

import lombok.*;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor

public class ComplaintDTO {
    private int complaintId;
    private int id;
    private String description;
    private String status;
    private String date;
}
