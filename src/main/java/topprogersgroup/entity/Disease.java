package topprogersgroup.entity;

import lombok.Data;
import org.hibernate.annotations.Type;

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

    @Column(name = "dateresearch", nullable = false)
    @Temporal(value= TemporalType.DATE)
    private Date dateresearch;

    @Column(name = "researchmethod", nullable = false)
    private String researchmethod;

    @Column(name = "result", nullable = false)
    private String result;

    @ManyToOne
    @JoinColumn(name = "quarantine_id")
    private Quarantine quarantine;

}
