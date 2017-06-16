package topprogersgroup.entity;

import lombok.Data;
import org.hibernate.annotations.Type;

import javax.persistence.*;

@Data
@Entity
@Table(name = "uploadimage")
public class UploadImage {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false, unique = true)
    private int id;

    @Column(name = "name", nullable = false,unique = true)
    private String name;

    @Column(name = "path", nullable = false, unique = true)
    private String path;

    @ManyToOne(cascade = CascadeType.MERGE)
    @JoinColumn(name = "passport")
    private Passport passport;

    @Column(name = "isdeleted")
    @Type(type = "boolean")
    private boolean isDeleted;
}
