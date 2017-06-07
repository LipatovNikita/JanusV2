package topprogersgroup.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@Table(name = "disease")
public class Disease {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    private int id;

    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "dateOfResearch", nullable = false)
    @Temporal(value= TemporalType.DATE)
    private Date dateOfResearch;

    @Column(name = "researchMethod", nullable = false)
    private String researchMethod;

    @Column(name = "result", nullable = false)
    private String result;

    @ManyToOne
    @JoinColumn(name = "quarantine_id")
    private Quarantine quarantine;
}
