package com.omkar.ticketbooking.catalog;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;
import java.time.LocalDateTime;
@Entity
@Table(name = "theatre")
@Getter
@Setter
@NoArgsConstructor
public class Theatre {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String city;
    private String address;
    @CreationTimestamp
    @Column(updatable = false)
    private LocalDateTime createdAt;

}
