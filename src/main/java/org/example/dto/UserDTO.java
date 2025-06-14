package org.example.dto;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Getter
@Setter
@ToString

public class UserDTO {
    private int id;
    private String name;
    private String email;
    private String password;
    private String role;
}
