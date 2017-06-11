package topprogersgroup.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Data
@Entity
@Table(name = "quarantine")
public class Quarantine {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    private int id;

    @Column(name = "laboratory", nullable = false)
    private String laboratory;

    @Column(name = "numberOfDays", nullable = false)
    private int numberOfDays;

    @OneToOne
    @JoinColumn(name = "addressOfLaboratory")
    private Address addressOfLaboratory;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "quarantine")
    private List<Disease> diseases;
}
