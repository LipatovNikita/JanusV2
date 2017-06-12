package topprogersgroup.entity;

import lombok.Data;
import org.hibernate.annotations.Type;

import javax.persistence.*;

// пропускной пунк (ПКВП)
@Data
@Entity
@Table(name = "checkpoint")
public class CheckPoint {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private int id;

    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "address", nullable = false)
    private String address;

    @Column(name = "phonenumber", nullable = false)
    private int phoneNumber;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "inspector")
    private Employee inspector;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinTable(name = "route_checkpoint",
            joinColumns = @JoinColumn(name = "checkPoint_id"),
            inverseJoinColumns = @JoinColumn(name = "route_id"))
    private Route route;

    @Column(name = "isdeleted")
    @Type(type = "boolean")
    private boolean isDeleted;
}
